package com.sonyericsson.android.camera.controller.album;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import com.sonyericsson.android.camera.util.CamLog;

/* JADX INFO: loaded from: classes.dex */
final class AlbumPreloader$PrepareBitmapTask extends AsyncTask {
    private static final String THREAD_NAME = "PrepareBitmap";
    final /* synthetic */ AlbumPreloader this$0;

    private AlbumPreloader$PrepareBitmapTask(AlbumPreloader albumPreloader) {
        this.this$0 = albumPreloader;
    }

    /* synthetic */ AlbumPreloader$PrepareBitmapTask(AlbumPreloader albumPreloader, AlbumPreloader$1 albumPreloader$1) {
        this(albumPreloader);
    }

    @Override // android.os.AsyncTask
    protected Object doInBackground(Object[] objArr) {
        Thread.currentThread().setName("PrepareBitmap");
        Uri uri = (Uri) objArr[0];
        Bitmap bitmap = AlbumPreloader.access$200(this.this$0).getBitmap(uri);
        synchronized (AlbumPreloader.access$500(this.this$0)) {
            if (CamLog.VERBOSE) {
                CamLog.d("Prepare bitmap : " + uri.toString());
            }
            AlbumPreloader.access$600(this.this$0).update(uri, bitmap);
            AlbumPreloader.access$700(this.this$0).remove(uri);
        }
        if (AlbumPreloader.access$200(this.this$0) == null) {
            return null;
        }
        AlbumPreloader.access$200(this.this$0).prepare(uri);
        return null;
    }
}
