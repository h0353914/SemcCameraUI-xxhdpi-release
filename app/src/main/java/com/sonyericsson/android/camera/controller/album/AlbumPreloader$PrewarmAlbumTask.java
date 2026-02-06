package com.sonyericsson.android.camera.controller.album;

import android.os.AsyncTask;

final class AlbumPreloader$PrewarmAlbumTask extends AsyncTask {
    private static final String THREAD_NAME = "PrewarmAlbum";
    final /* synthetic */ AlbumPreloader this$0;

    private AlbumPreloader$PrewarmAlbumTask(AlbumPreloader albumPreloader) {
        this.this$0 = albumPreloader;
    }

    /* synthetic */ AlbumPreloader$PrewarmAlbumTask(AlbumPreloader albumPreloader, AlbumPreloader$1 albumPreloader$1) {
        this(albumPreloader);
    }

    @Override // android.os.AsyncTask
    protected Object doInBackground(Object[] objArr) {
        Thread.currentThread().setName("PrewarmAlbum");
        AlbumPreloader.access$200(this.this$0).prewarm();
        return null;
    }
}
