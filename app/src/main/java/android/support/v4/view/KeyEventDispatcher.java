package android.support.v4.view;

import android.app.ActionBar;
import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface$OnKeyListener;
import android.os.Build$VERSION;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.view.Window$Callback;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
@RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
public class KeyEventDispatcher {
    private static boolean sActionBarFieldsFetched;
    private static Method sActionBarOnMenuKeyMethod;
    private static boolean sDialogFieldsFetched;
    private static Field sDialogKeyListenerField;

    private KeyEventDispatcher() {
    }

    public static boolean dispatchBeforeHierarchy(@NonNull View view, @NonNull KeyEvent keyEvent) {
        return ViewCompat.dispatchUnhandledKeyEventBeforeHierarchy(view, keyEvent);
    }

    public static boolean dispatchKeyEvent(@NonNull KeyEventDispatcher$Component keyEventDispatcher$Component, @Nullable View view, @Nullable Window$Callback window$Callback, @NonNull KeyEvent keyEvent) {
        if (keyEventDispatcher$Component == null) {
            return false;
        }
        if (Build$VERSION.SDK_INT >= 28) {
            return keyEventDispatcher$Component.superDispatchKeyEvent(keyEvent);
        }
        if (window$Callback instanceof Activity) {
            return activitySuperDispatchKeyEventPre28((Activity) window$Callback, keyEvent);
        }
        if (window$Callback instanceof Dialog) {
            return dialogSuperDispatchKeyEventPre28((Dialog) window$Callback, keyEvent);
        }
        return (view != null && ViewCompat.dispatchUnhandledKeyEventBeforeCallback(view, keyEvent)) || keyEventDispatcher$Component.superDispatchKeyEvent(keyEvent);
    }

    private static boolean actionBarOnMenuKeyEventPre28(ActionBar actionBar, KeyEvent keyEvent) {
        if (!sActionBarFieldsFetched) {
            try {
                sActionBarOnMenuKeyMethod = actionBar.getClass().getMethod("onMenuKeyEvent", KeyEvent.class);
            } catch (NoSuchMethodException unused) {
            }
            sActionBarFieldsFetched = true;
        }
        if (sActionBarOnMenuKeyMethod != null) {
            try {
                return ((Boolean) sActionBarOnMenuKeyMethod.invoke(actionBar, keyEvent)).booleanValue();
            } catch (IllegalAccessException | InvocationTargetException unused2) {
            }
        }
        return false;
    }

    private static boolean activitySuperDispatchKeyEventPre28(Activity activity, KeyEvent keyEvent) {
        activity.onUserInteraction();
        Window window = activity.getWindow();
        if (window.hasFeature(8)) {
            ActionBar actionBar = activity.getActionBar();
            if (keyEvent.getKeyCode() == 82 && actionBar != null && actionBarOnMenuKeyEventPre28(actionBar, keyEvent)) {
                return true;
            }
        }
        if (window.superDispatchKeyEvent(keyEvent)) {
            return true;
        }
        View decorView = window.getDecorView();
        if (ViewCompat.dispatchUnhandledKeyEventBeforeCallback(decorView, keyEvent)) {
            return true;
        }
        return keyEvent.dispatch(activity, decorView != null ? decorView.getKeyDispatcherState() : null, activity);
    }

    private static DialogInterface$OnKeyListener getDialogKeyListenerPre28(Dialog dialog) {
        if (!sDialogFieldsFetched) {
            try {
                sDialogKeyListenerField = Dialog.class.getDeclaredField("mOnKeyListener");
                sDialogKeyListenerField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
            sDialogFieldsFetched = true;
        }
        if (sDialogKeyListenerField == null) {
            return null;
        }
        try {
            return (DialogInterface$OnKeyListener) sDialogKeyListenerField.get(dialog);
        } catch (IllegalAccessException unused2) {
            return null;
        }
    }

    private static boolean dialogSuperDispatchKeyEventPre28(Dialog dialog, KeyEvent keyEvent) {
        DialogInterface$OnKeyListener dialogKeyListenerPre28 = getDialogKeyListenerPre28(dialog);
        if (dialogKeyListenerPre28 != null && dialogKeyListenerPre28.onKey(dialog, keyEvent.getKeyCode(), keyEvent)) {
            return true;
        }
        Window window = dialog.getWindow();
        if (window.superDispatchKeyEvent(keyEvent)) {
            return true;
        }
        View decorView = window.getDecorView();
        if (ViewCompat.dispatchUnhandledKeyEventBeforeCallback(decorView, keyEvent)) {
            return true;
        }
        return keyEvent.dispatch(dialog, decorView != null ? decorView.getKeyDispatcherState() : null, dialog);
    }
}
