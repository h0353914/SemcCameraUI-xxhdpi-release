package com.sonyericsson.android.camera.view.baselayout.onscreenbutton;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public class OnScreenButton$Resource {
    public static final int NONE = -1;
    final int mBackground;
    final int mDescription;
    final int mIcon;
    final int mIconPortrait;
    final String mText;

    public OnScreenButton$Resource(int i, int i2, int i3, int i4, String str) {
        this.mIcon = i;
        this.mIconPortrait = i2;
        this.mBackground = i3;
        this.mDescription = i4;
        this.mText = str;
    }

    boolean shouldRotateByView() {
        return this.mIconPortrait == -1;
    }

    int getIconResource(int i) {
        if (i == 2) {
            return this.mIcon;
        }
        if (shouldRotateByView()) {
            return this.mIcon;
        }
        return this.mIconPortrait;
    }

    int getBackgroundResource() {
        return this.mBackground;
    }

    String getDescription(Context context) {
        if (this.mDescription == -1) {
            return this.mText != null ? this.mText : "";
        }
        return context.getResources().getString(this.mDescription);
    }
}
