package com.sonyericsson.cameracommon.contentsview;

import android.graphics.Bitmap;
import android.net.Uri;
import com.sonyericsson.cameracommon.contentsview.contents.Content$ContentInfo;
import com.sonyericsson.cameracommon.storage.Storage$OnLoadCompletedListener;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes.dex */
class ContentLoader$1 implements Storage$OnLoadCompletedListener {
    final /* synthetic */ ContentLoader this$0;

    @Override // com.sonyericsson.cameracommon.storage.Storage$OnLoadCompletedListener
    public void onLoadCompleted(Uri uri, Bitmap bitmap) {
    }

    @Override // com.sonyericsson.cameracommon.storage.Storage$OnLoadCompletedListener
    public void onLoadFailed(Uri uri, int i) {
    }

    ContentLoader$1(ContentLoader contentLoader) {
        this.this$0 = contentLoader;
    }

    @Override // com.sonyericsson.cameracommon.storage.Storage$OnLoadCompletedListener
    public void onDataLoadCompleted(int i, boolean z, LinkedList<Content$ContentInfo> linkedList, Bitmap bitmap) {
        ContentLoader.access$100(this.this$0).onDataLoaded(true, linkedList, i, z, bitmap);
    }

    @Override // com.sonyericsson.cameracommon.storage.Storage$OnLoadCompletedListener
    public void onDataLoadFailed(int i) {
        ContentLoader.access$100(this.this$0).onDataLoaded(false, null, i, false, null);
    }
}
