package com.sonyericsson.cameracommon.contentsview;

import android.graphics.Bitmap;
import com.sonyericsson.cameracommon.contentsview.contents.Content;

class ContentLoader$DataLoadResult {
    private Bitmap mBitmap;
    private Content mContent;
    final /* synthetic */ ContentLoader this$0;

    static /* synthetic */ Content access$400(ContentLoader$DataLoadResult contentLoader$DataLoadResult) {
        return contentLoader$DataLoadResult.mContent;
    }

    static /* synthetic */ Bitmap access$600(ContentLoader$DataLoadResult contentLoader$DataLoadResult) {
        return contentLoader$DataLoadResult.mBitmap;
    }

    public ContentLoader$DataLoadResult(ContentLoader contentLoader, Content content, Bitmap bitmap) {
        this.this$0 = contentLoader;
        this.mContent = content;
        this.mBitmap = bitmap;
    }
}
