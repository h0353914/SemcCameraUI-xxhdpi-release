package com.sonyericsson.cameracommon.contentsview;

import android.graphics.Bitmap;
import com.sonyericsson.cameracommon.contentsview.contents.Content;

interface ContentLoader$ContentCreationCallback {
    void onContentCreated(int i, Content content, Bitmap bitmap);

    void onNoContentLoaded();
}
