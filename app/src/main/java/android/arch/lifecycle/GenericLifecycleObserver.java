package android.arch.lifecycle;

import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;

/* JADX INFO: loaded from: classes.dex */
@RestrictTo({RestrictTo$Scope.LIBRARY})
public interface GenericLifecycleObserver extends LifecycleObserver {
    void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle$Event lifecycle$Event);
}
