package android.support.v4.view;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.compat.R$id;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
class ViewCompat$UnhandledKeyEventManager {
    private static final ArrayList<WeakReference<View>> sViewsWithListeners = new ArrayList<>();

    @Nullable
    private WeakHashMap<View, Boolean> mViewsContainingListeners = null;
    private SparseArray<WeakReference<View>> mCapturedKeys = null;
    private WeakReference<KeyEvent> mLastDispatchedPreViewKeyEvent = null;

    ViewCompat$UnhandledKeyEventManager() {
    }

    private SparseArray<WeakReference<View>> getCapturedKeys() {
        if (this.mCapturedKeys == null) {
            this.mCapturedKeys = new SparseArray<>();
        }
        return this.mCapturedKeys;
    }

    static ViewCompat$UnhandledKeyEventManager at(View view) {
        ViewCompat$UnhandledKeyEventManager viewCompat$UnhandledKeyEventManager = (ViewCompat$UnhandledKeyEventManager) view.getTag(R$id.tag_unhandled_key_event_manager);
        if (viewCompat$UnhandledKeyEventManager != null) {
            return viewCompat$UnhandledKeyEventManager;
        }
        ViewCompat$UnhandledKeyEventManager viewCompat$UnhandledKeyEventManager2 = new ViewCompat$UnhandledKeyEventManager();
        view.setTag(R$id.tag_unhandled_key_event_manager, viewCompat$UnhandledKeyEventManager2);
        return viewCompat$UnhandledKeyEventManager2;
    }

    boolean dispatch(View view, KeyEvent keyEvent) {
        if (keyEvent.getAction() == 0) {
            recalcViewsWithUnhandled();
        }
        View viewDispatchInOrder = dispatchInOrder(view, keyEvent);
        if (keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (viewDispatchInOrder != null && !KeyEvent.isModifierKey(keyCode)) {
                getCapturedKeys().put(keyCode, new WeakReference<>(viewDispatchInOrder));
            }
        }
        return viewDispatchInOrder != null;
    }

    @Nullable
    private View dispatchInOrder(View view, KeyEvent keyEvent) {
        if (this.mViewsContainingListeners == null || !this.mViewsContainingListeners.containsKey(view)) {
            return null;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View viewDispatchInOrder = dispatchInOrder(viewGroup.getChildAt(childCount), keyEvent);
                if (viewDispatchInOrder != null) {
                    return viewDispatchInOrder;
                }
            }
        }
        if (onUnhandledKeyEvent(view, keyEvent)) {
            return view;
        }
        return null;
    }

    boolean preDispatch(KeyEvent keyEvent) {
        int iIndexOfKey;
        if (this.mLastDispatchedPreViewKeyEvent != null && this.mLastDispatchedPreViewKeyEvent.get() == keyEvent) {
            return false;
        }
        this.mLastDispatchedPreViewKeyEvent = new WeakReference<>(keyEvent);
        WeakReference<View> weakReferenceValueAt = null;
        SparseArray<WeakReference<View>> capturedKeys = getCapturedKeys();
        if (keyEvent.getAction() == 1 && (iIndexOfKey = capturedKeys.indexOfKey(keyEvent.getKeyCode())) >= 0) {
            weakReferenceValueAt = capturedKeys.valueAt(iIndexOfKey);
            capturedKeys.removeAt(iIndexOfKey);
        }
        if (weakReferenceValueAt == null) {
            weakReferenceValueAt = capturedKeys.get(keyEvent.getKeyCode());
        }
        if (weakReferenceValueAt == null) {
            return false;
        }
        View view = weakReferenceValueAt.get();
        if (view != null && ViewCompat.isAttachedToWindow(view)) {
            onUnhandledKeyEvent(view, keyEvent);
        }
        return true;
    }

    private boolean onUnhandledKeyEvent(@NonNull View view, @NonNull KeyEvent keyEvent) {
        ArrayList arrayList = (ArrayList) view.getTag(R$id.tag_unhandled_key_listeners);
        if (arrayList == null) {
            return false;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (((ViewCompat$OnUnhandledKeyEventListenerCompat) arrayList.get(size)).onUnhandledKeyEvent(view, keyEvent)) {
                return true;
            }
        }
        return false;
    }

    static void registerListeningView(View view) {
        synchronized (sViewsWithListeners) {
            Iterator<WeakReference<View>> it = sViewsWithListeners.iterator();
            while (it.hasNext()) {
                if (it.next().get() == view) {
                    return;
                }
            }
            sViewsWithListeners.add(new WeakReference<>(view));
        }
    }

    static void unregisterListeningView(View view) {
        synchronized (sViewsWithListeners) {
            for (int i = 0; i < sViewsWithListeners.size(); i++) {
                if (sViewsWithListeners.get(i).get() == view) {
                    sViewsWithListeners.remove(i);
                    return;
                }
            }
        }
    }

    private void recalcViewsWithUnhandled() {
        if (this.mViewsContainingListeners != null) {
            this.mViewsContainingListeners.clear();
        }
        if (sViewsWithListeners.isEmpty()) {
            return;
        }
        synchronized (sViewsWithListeners) {
            if (this.mViewsContainingListeners == null) {
                this.mViewsContainingListeners = new WeakHashMap<>();
            }
            for (int size = sViewsWithListeners.size() - 1; size >= 0; size--) {
                View view = sViewsWithListeners.get(size).get();
                if (view == null) {
                    sViewsWithListeners.remove(size);
                } else {
                    this.mViewsContainingListeners.put(view, Boolean.TRUE);
                    for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
                        this.mViewsContainingListeners.put((View) parent, Boolean.TRUE);
                    }
                }
            }
        }
    }
}
