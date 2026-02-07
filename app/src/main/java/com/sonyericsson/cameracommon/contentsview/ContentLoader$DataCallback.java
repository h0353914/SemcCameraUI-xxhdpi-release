package com.sonyericsson.cameracommon.contentsview;

import android.graphics.Bitmap;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.cameracommon.contentsview.contents.Content$ContentInfo;
import com.sonyericsson.cameracommon.contentsview.contents.ContentFactory;
import com.sonyericsson.cameracommon.storage.DataLoader$DataLoadCallback;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes.dex */
class ContentLoader$DataCallback implements DataLoader$DataLoadCallback {
    final /* synthetic */ ContentLoader this$0;

    private ContentLoader$DataCallback(ContentLoader contentLoader) {
        this.this$0 = contentLoader;
    }

    /* synthetic */ ContentLoader$DataCallback(ContentLoader contentLoader, ContentLoader$1 contentLoader$1) {
        this(contentLoader);
    }

    @Override // com.sonyericsson.cameracommon.storage.DataLoader$DataLoadCallback
    public void onDataLoaded(boolean z, LinkedList<Content$ContentInfo> linkedList, int i, boolean z2, Bitmap bitmap) {
        if (CamLog.VERBOSE) {
            CamLog.d("onDataLoaded() has been called. result = " + z + " , requestId = " + i);
        }
        if (linkedList != null && !linkedList.isEmpty() && z) {
            if (z2) {
                ContentLoader.access$800(this.this$0, linkedList);
            }
            if (!linkedList.getLast().mIsContainDetails) {
                this.this$0.request(i, linkedList.getLast().mOriginalUri);
                return;
            } else {
                ContentLoader$DataLoaderHander.access$1000(ContentLoader.access$900(this.this$0), i, new ContentLoader$DataLoadResult(this.this$0, ContentFactory.create(linkedList.getLast()), bitmap));
                return;
            }
        }
        CamLog.w("Loading data is failed.");
        ContentLoader$DataLoaderHander.access$1000(ContentLoader.access$900(this.this$0), i, null);
    }
}
