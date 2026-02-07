package android.support.v7.app;

import android.content.Context;
import android.content.ContextWrapper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.View;
import android.view.View$OnClickListener;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
class AppCompatViewInflater$DeclaredOnClickListener implements View$OnClickListener {
    private final View mHostView;
    private final String mMethodName;
    private Context mResolvedContext;
    private Method mResolvedMethod;

    public AppCompatViewInflater$DeclaredOnClickListener(@NonNull View view, @NonNull String str) {
        this.mHostView = view;
        this.mMethodName = str;
    }

    @Override // android.view.View$OnClickListener
    public void onClick(@NonNull View view) {
        if (this.mResolvedMethod == null) {
            resolveMethod(this.mHostView.getContext(), this.mMethodName);
        }
        try {
            this.mResolvedMethod.invoke(this.mResolvedContext, view);
        } catch (IllegalAccessException e) {
            throw new IllegalStateException("Could not execute non-public method for android:onClick", e);
        } catch (InvocationTargetException e2) {
            throw new IllegalStateException("Could not execute method for android:onClick", e2);
        }
    }

    @NonNull
    private void resolveMethod(@Nullable Context context, @NonNull String str) {
        String str2;
        Method method;
        while (context != null) {
            try {
                if (!context.isRestricted() && (method = context.getClass().getMethod(this.mMethodName, View.class)) != null) {
                    this.mResolvedMethod = method;
                    this.mResolvedContext = context;
                    return;
                }
            } catch (NoSuchMethodException unused) {
            }
            context = context instanceof ContextWrapper ? ((ContextWrapper) context).getBaseContext() : null;
        }
        int id = this.mHostView.getId();
        if (id == -1) {
            str2 = "";
        } else {
            str2 = " with id '" + this.mHostView.getContext().getResources().getResourceEntryName(id) + "'";
        }
        throw new IllegalStateException("Could not find method " + this.mMethodName + "(View) in a parent or ancestor Context for android:onClick attribute defined on view " + this.mHostView.getClass() + str2);
    }
}
