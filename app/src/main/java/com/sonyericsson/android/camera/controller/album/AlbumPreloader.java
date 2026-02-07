package com.sonyericsson.android.camera.controller.album;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import com.sonyericsson.album.fastview.FastViewManager;
import com.sonyericsson.album.fastview.FastViewUnavailableException;
import com.sonyericsson.android.camera.util.CamLog;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class AlbumPreloader {
    public static final String TAG = "AlbumPreloader";
    private Context mContext;
    private FastViewManager mFastViewManager;
    private boolean mIsAvailable;
    private final Map<Uri, AlbumPreloader$PrepareBitmapTask> mRequestTasks = new LinkedHashMap();
    private final AlbumPreloader$PreloadedCacheHolder mPreloadedCache = new AlbumPreloader$PreloadedCacheHolder(null);
    private boolean mIsReleased = false;
    private Object mPreloadingLock = new Object();

    static /* synthetic */ boolean access$100(AlbumPreloader albumPreloader) {
        return albumPreloader.mIsReleased;
    }

    static /* synthetic */ FastViewManager access$200(AlbumPreloader albumPreloader) {
        return albumPreloader.mFastViewManager;
    }

    static /* synthetic */ Object access$500(AlbumPreloader albumPreloader) {
        return albumPreloader.mPreloadingLock;
    }

    static /* synthetic */ AlbumPreloader$PreloadedCacheHolder access$600(AlbumPreloader albumPreloader) {
        return albumPreloader.mPreloadedCache;
    }

    static /* synthetic */ Map access$700(AlbumPreloader albumPreloader) {
        return albumPreloader.mRequestTasks;
    }

    public AlbumPreloader(Context context) {
        this.mIsAvailable = false;
        this.mContext = context;
        try {
            this.mFastViewManager = new FastViewManager(this.mContext);
            this.mFastViewManager.setOnPrewarmedListener(new AlbumPreloader$1(this));
            this.mIsAvailable = true;
        } catch (FastViewUnavailableException unused) {
            CamLog.e("Failed to open FastViewManager");
        }
    }

    public void prewarmAlbum() {
        if (this.mIsAvailable) {
            new AlbumPreloader$PrewarmAlbumTask(this, null).execute(new Object[0]);
        }
    }

    public void prepareBitmap(Uri uri) {
        if (this.mIsAvailable && uri != null) {
            synchronized (this.mPreloadingLock) {
                if (!this.mRequestTasks.containsKey(uri)) {
                    AlbumPreloader$PrepareBitmapTask albumPreloader$PrepareBitmapTask = new AlbumPreloader$PrepareBitmapTask(this, null);
                    this.mRequestTasks.put(uri, albumPreloader$PrepareBitmapTask);
                    albumPreloader$PrepareBitmapTask.execute(uri);
                }
            }
        }
    }

    public Bitmap getBitmap(Uri uri) {
        if (!this.mIsAvailable || uri == null) {
            return null;
        }
        synchronized (this.mPreloadingLock) {
            if (CamLog.VERBOSE) {
                CamLog.d("Get bitmap : " + uri.toString());
            }
            if (this.mPreloadedCache.isSameUri(uri)) {
                return this.mPreloadedCache.get();
            }
            if (this.mRequestTasks.containsKey(uri)) {
                this.mRequestTasks.remove(uri).cancel(false);
            }
            return this.mFastViewManager.getBitmap(uri);
        }
    }

    public void release() {
        if (this.mIsAvailable) {
            if (CamLog.VERBOSE) {
                CamLog.d("release()");
            }
            synchronized (this.mPreloadingLock) {
                Iterator<Uri> it = this.mRequestTasks.keySet().iterator();
                while (it.hasNext()) {
                    this.mRequestTasks.get(it.next()).cancel(false);
                }
                this.mRequestTasks.clear();
                this.mPreloadedCache.clear();
            }
            if (this.mFastViewManager != null) {
                this.mFastViewManager.cooldown();
            }
            this.mIsReleased = true;
        }
    }
}
