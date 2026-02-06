package com.sonyericsson.android.camera.view.baselayout;

public abstract class BaseLayout$LazyInitializer<T> {
    private T mView;

    abstract T initView();

    public boolean isInitialized() {
        return this.mView != null;
    }

    public T get() {
        if (this.mView == null) {
            this.mView = initView();
        }
        return this.mView;
    }
}
