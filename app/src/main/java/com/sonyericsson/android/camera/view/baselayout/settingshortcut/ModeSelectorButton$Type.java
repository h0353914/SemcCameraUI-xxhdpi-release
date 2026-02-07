package com.sonyericsson.android.camera.view.baselayout.settingshortcut;

/* JADX INFO: loaded from: classes.dex */
enum ModeSelectorButton$Type {
    MODE_SELECTOR(2131231505, 2131689669, 2131689669, 2131165438),
    RETURN(2131231465, -1, 2131689563, -1);

    private final int mBackgroundId;
    private final int mContentDescriptionId;
    private final int mMinWidthId;
    private final int mStringId;

    static /* synthetic */ int access$000(ModeSelectorButton$Type modeSelectorButton$Type) {
        return modeSelectorButton$Type.mBackgroundId;
    }

    static /* synthetic */ int access$100(ModeSelectorButton$Type modeSelectorButton$Type) {
        return modeSelectorButton$Type.mStringId;
    }

    static /* synthetic */ int access$200(ModeSelectorButton$Type modeSelectorButton$Type) {
        return modeSelectorButton$Type.mContentDescriptionId;
    }

    static /* synthetic */ int access$300(ModeSelectorButton$Type modeSelectorButton$Type) {
        return modeSelectorButton$Type.mMinWidthId;
    }

    ModeSelectorButton$Type(int i, int i2, int i3, int i4) {
        this.mBackgroundId = i;
        this.mStringId = i2;
        this.mContentDescriptionId = i3;
        this.mMinWidthId = i4;
    }
}
