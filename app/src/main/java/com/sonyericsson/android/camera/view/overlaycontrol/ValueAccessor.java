package com.sonyericsson.android.camera.view.overlaycontrol;

/* JADX INFO: loaded from: classes.dex */
public interface ValueAccessor<Value> {
    Value get();

    Value reset();

    void set(Value value);
}
