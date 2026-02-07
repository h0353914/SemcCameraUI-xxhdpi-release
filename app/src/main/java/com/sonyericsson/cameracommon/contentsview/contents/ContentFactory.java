package com.sonyericsson.cameracommon.contentsview.contents;

import com.sonyericsson.android.camera.util.CamLog;

/* JADX INFO: loaded from: classes.dex */
public class ContentFactory {
    public static final String TAG = "ContentFactory";

    public static Content create(Content$ContentInfo content$ContentInfo) {
        if (CamLog.VERBOSE) {
            CamLog.d("create() has been called. Content type = " + content$ContentInfo.mContentType);
        }
        return new Content(content$ContentInfo, ExtraIconResources.get(content$ContentInfo.mContentType), PlayIconResources.get(content$ContentInfo.mContentType));
    }
}
