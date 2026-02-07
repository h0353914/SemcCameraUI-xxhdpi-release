package com.sonyericsson.cameracommon.contentsview.contents;

import android.app.Activity;
import com.sonyericsson.cameracommon.contentsview.contents.optionmenu.OptionOperating;

/* JADX INFO: loaded from: classes.dex */
public class Content implements OptionOperating {
    public static final String TAG = "Content";
    protected String mCountText;
    private final int mExtraIconId;
    protected final Content$ContentInfo mInfo;
    private final int mPlayableIconId;

    @Override // com.sonyericsson.cameracommon.contentsview.contents.optionmenu.OptionOperating
    public void viewContent(Activity activity) {
    }

    public Content(Content$ContentInfo content$ContentInfo, int i, int i2) {
        this.mInfo = content$ContentInfo;
        this.mExtraIconId = i;
        this.mPlayableIconId = i2;
    }

    public Content$ContentInfo getContentInfo() {
        return this.mInfo;
    }

    public boolean shouldShowPlayableIcon() {
        return this.mPlayableIconId != -1;
    }

    public boolean shouldShowExtraIcon() {
        return this.mExtraIconId != -1;
    }

    public int getExtraIconResourceId() {
        return this.mExtraIconId;
    }

    public int getPlayIconResourceId() {
        return this.mPlayableIconId;
    }

    public boolean isMediaDataVerified() {
        return this.mInfo.mIsMediaDataVerified;
    }

    public String getCountText() {
        return this.mCountText;
    }
}
