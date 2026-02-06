package android.support.v4.app;

import android.arch.lifecycle.Lifecycle;
import android.arch.lifecycle.LifecycleOwner;
import android.arch.lifecycle.LifecycleRegistry;

class Fragment$3 implements LifecycleOwner {
    final /* synthetic */ Fragment this$0;

    Fragment$3(Fragment fragment) {
        this.this$0 = fragment;
    }

    @Override // android.arch.lifecycle.LifecycleOwner
    public Lifecycle getLifecycle() {
        if (this.this$0.mViewLifecycleRegistry == null) {
            this.this$0.mViewLifecycleRegistry = new LifecycleRegistry(this.this$0.mViewLifecycleOwner);
        }
        return this.this$0.mViewLifecycleRegistry;
    }
}
