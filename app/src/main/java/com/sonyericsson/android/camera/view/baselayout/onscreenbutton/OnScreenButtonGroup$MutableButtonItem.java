package com.sonyericsson.android.camera.view.baselayout.onscreenbutton;

/* JADX INFO: loaded from: classes.dex */
public class OnScreenButtonGroup$MutableButtonItem extends OnScreenButtonGroup$Item {
    private OnScreenButton$Resource mResource;

    static /* synthetic */ void access$100(OnScreenButtonGroup$MutableButtonItem onScreenButtonGroup$MutableButtonItem, OnScreenButton$Resource onScreenButton$Resource) {
        onScreenButtonGroup$MutableButtonItem.setResource(onScreenButton$Resource);
    }

    public OnScreenButtonGroup$MutableButtonItem(OnScreenButtonListener onScreenButtonListener, boolean z) {
        super(onScreenButtonListener, z);
        this.mResource = OnScreenButton.EMPTY_RESOURCE;
    }

    @Override // com.sonyericsson.android.camera.view.baselayout.onscreenbutton.OnScreenButtonGroup$Item
    public OnScreenButton$Resource getResource() {
        return this.mResource;
    }

    public OnScreenButtonGroup$MutableButtonItem$Builder update() {
        return new OnScreenButtonGroup$MutableButtonItem$Builder(this, this.mResource, null);
    }

    private void setResource(OnScreenButton$Resource onScreenButton$Resource) {
        this.mResource = onScreenButton$Resource;
        notifyUpdated();
    }
}
