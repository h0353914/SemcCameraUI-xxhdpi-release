package com.sonyericsson.cameracommon.contentsview;

import android.graphics.Bitmap;
import com.sonyericsson.cameracommon.contentsview.contents.Content;

/* JADX INFO: loaded from: classes.dex */
interface ContentLoader$ContentCreationCallback {
    void onContentCreated(int i, Content content, Bitmap bitmap);

    void onNoContentLoaded();
}
