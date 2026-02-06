package com.sonyericsson.android.camera.view.overlaycontrol;

public interface ValueAccessor<Value> {
    Value get();

    Value reset();

    void set(Value value);
}
