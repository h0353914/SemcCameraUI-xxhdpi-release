package com.sonyericsson.android.camera.view.baselayout.onscreenbutton;

public class OnScreenButtonGroup$ImmutableButtonItem extends OnScreenButtonGroup$Item {
    private final OnScreenButton$Resource mResource;
    private final Object mTag;

    public OnScreenButtonGroup$ImmutableButtonItem(Object obj, OnScreenButton$Resource onScreenButton$Resource, OnScreenButtonListener onScreenButtonListener, boolean z) {
        super(onScreenButtonListener, z);
        this.mTag = obj;
        this.mResource = onScreenButton$Resource;
    }

    @Override // com.sonyericsson.android.camera.view.baselayout.onscreenbutton.OnScreenButtonGroup$Item
    public OnScreenButton$Resource getResource() {
        return this.mResource;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof OnScreenButtonGroup$ImmutableButtonItem)) {
            return false;
        }
        OnScreenButtonGroup$ImmutableButtonItem onScreenButtonGroup$ImmutableButtonItem = (OnScreenButtonGroup$ImmutableButtonItem) obj;
        if (this.mTag != onScreenButtonGroup$ImmutableButtonItem.mTag) {
            return false;
        }
        OnScreenButtonListener onScreenButtonListener = onScreenButtonGroup$ImmutableButtonItem.getOnScreenButtonListener();
        OnScreenButtonListener onScreenButtonListener2 = getOnScreenButtonListener();
        return (onScreenButtonListener2 == null && onScreenButtonListener == null) || onScreenButtonListener2 == onScreenButtonListener || !(onScreenButtonListener2 == null || onScreenButtonListener == null || !onScreenButtonListener2.getClass().getName().equals(onScreenButtonListener.getClass().getName()));
    }
}
