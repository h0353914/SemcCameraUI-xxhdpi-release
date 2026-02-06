package android.arch.lifecycle;

import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;

@RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
public class SingleGeneratedAdapterObserver implements GenericLifecycleObserver {
    private final GeneratedAdapter mGeneratedAdapter;

    SingleGeneratedAdapterObserver(GeneratedAdapter generatedAdapter) {
        this.mGeneratedAdapter = generatedAdapter;
    }

    @Override // android.arch.lifecycle.GenericLifecycleObserver
    public void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle$Event lifecycle$Event) {
        this.mGeneratedAdapter.callMethods(lifecycleOwner, lifecycle$Event, false, null);
        this.mGeneratedAdapter.callMethods(lifecycleOwner, lifecycle$Event, true, null);
    }
}
