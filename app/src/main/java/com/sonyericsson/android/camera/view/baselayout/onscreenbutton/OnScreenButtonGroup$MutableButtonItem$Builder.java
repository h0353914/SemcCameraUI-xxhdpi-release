package com.sonyericsson.android.camera.view.baselayout.onscreenbutton;

/* JADX INFO: loaded from: classes.dex */
public class OnScreenButtonGroup$MutableButtonItem$Builder {
    private int mBackground;
    private int mDescription;
    private int mIcon;
    private int mIconPortrait;
    private String mText;
    final /* synthetic */ OnScreenButtonGroup$MutableButtonItem this$0;

    /* synthetic */ OnScreenButtonGroup$MutableButtonItem$Builder(OnScreenButtonGroup$MutableButtonItem onScreenButtonGroup$MutableButtonItem, OnScreenButton$Resource onScreenButton$Resource, OnScreenButtonGroup$1 onScreenButtonGroup$1) {
        this(onScreenButtonGroup$MutableButtonItem, onScreenButton$Resource);
    }

    private OnScreenButtonGroup$MutableButtonItem$Builder(OnScreenButtonGroup$MutableButtonItem onScreenButtonGroup$MutableButtonItem, OnScreenButton$Resource onScreenButton$Resource) {
        this.this$0 = onScreenButtonGroup$MutableButtonItem;
        this.mIcon = onScreenButton$Resource.mIcon;
        this.mIconPortrait = onScreenButton$Resource.mIconPortrait;
        this.mBackground = onScreenButton$Resource.mBackground;
        this.mDescription = onScreenButton$Resource.mDescription;
        this.mText = onScreenButton$Resource.mText;
    }

    public OnScreenButtonGroup$MutableButtonItem$Builder icon(int i) {
        this.mIcon = i;
        this.mIconPortrait = -1;
        return this;
    }

    public OnScreenButtonGroup$MutableButtonItem$Builder background(int i) {
        this.mBackground = i;
        return this;
    }

    public OnScreenButtonGroup$MutableButtonItem$Builder description(int i) {
        this.mDescription = i;
        return this;
    }

    public OnScreenButtonGroup$MutableButtonItem$Builder text(String str) {
        this.mText = str;
        return this;
    }

    public void commit() {
        OnScreenButtonGroup$MutableButtonItem.access$100(this.this$0, new OnScreenButton$Resource(this.mIcon, this.mIconPortrait, this.mBackground, this.mDescription, this.mText));
    }
}
