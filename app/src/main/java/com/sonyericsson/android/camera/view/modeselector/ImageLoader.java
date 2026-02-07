package com.sonyericsson.android.camera.view.modeselector;

import android.app.ActivityManager;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap$CompressFormat;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.net.Uri;
import android.os.Environment;
import android.util.LruCache;
import android.widget.ImageView;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.ThreadUtil;
import com.sonyericsson.android.camera.view.modeselector.view.AbsPanelView;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public class ImageLoader {
    private static final boolean DEBUG = false;
    private static final int FADE_IN_TRANSITION_DURATION = 200;
    private static final int HARD_CACHE_SIZE = 5;
    private static final float MAX_PERCENT_FOR_HARD_CACHE = 0.25f;
    private static final String TAG = "ImageLoader";
    private static final String THREAD_NAME_NETWORK_DOWNLOADERS = "AppsUi#Net";
    private static final String THREAD_NAME_RESOURCE_DOWNLOADERS = "AppsUi#Res";
    private static ImageLoader sImageLoader;
    private final Context mContext;
    private boolean mFadeInBitmap;
    private final LruCache<String, BitmapDrawable> mImageCache;
    private Bitmap mLoadingBitmap;
    private final Resources mResources;
    private static final Executor NETWORK_DOWNLOADER_EXECUTOR = ThreadUtil.buildPoolExecutor("AppsUi#Net", 3);
    private static final Executor RESOURCE_DOWNLOADER_EXECUTOR = ThreadUtil.buildPoolExecutor("AppsUi#Res", 1);
    private static final Object sImageLoaderLock = new Object();

    static /* synthetic */ Context access$100(ImageLoader imageLoader) {
        return imageLoader.mContext;
    }

    static /* synthetic */ Resources access$200(ImageLoader imageLoader) {
        return imageLoader.mResources;
    }

    static /* synthetic */ LruCache access$300(ImageLoader imageLoader) {
        return imageLoader.mImageCache;
    }

    static /* synthetic */ void access$400(ImageLoader imageLoader, ImageView imageView, Drawable drawable) {
        imageLoader.setImageDrawable(imageView, drawable);
    }

    static /* synthetic */ ImageLoader$ImageLoaderTask access$500(ImageView imageView) {
        return getImageLoaderTask(imageView);
    }

    public static final ImageLoader getInstance(Context context) {
        if (sImageLoader == null) {
            synchronized (sImageLoaderLock) {
                if (sImageLoader == null) {
                    sImageLoader = new ImageLoader(context);
                }
            }
        }
        return sImageLoader;
    }

    private ImageLoader(Context context) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        int largeMemoryClass = (int) (((context.getApplicationInfo().flags & 1048576) != 0 ? activityManager.getLargeMemoryClass() : activityManager.getMemoryClass()) * 0.25f);
        this.mImageCache = new ImageLoader$1(this, largeMemoryClass > 5 ? 5242880 : largeMemoryClass);
        this.mContext = context.getApplicationContext();
        this.mResources = context.getResources();
    }

    public void requestLoad(String str, AbsPanelView absPanelView) {
        if (absPanelView == null) {
            return;
        }
        requestLoad(str, absPanelView.getAppIconWidth(), absPanelView.getAppIconHeight(), absPanelView.getAppIconView());
    }

    public void requestLoad(String str, int i, int i2, ImageView imageView) {
        if (str == null || str.length() == 0 || i <= 0 || i2 <= 0 || imageView == null) {
            return;
        }
        BitmapDrawable bitmapDrawable = this.mImageCache != null ? this.mImageCache.get(str) : null;
        if (bitmapDrawable != null) {
            imageView.setImageDrawable(bitmapDrawable);
        } else if (cancelPotentialTask(str, imageView)) {
            ImageLoader$ImageLoaderTask imageLoader$ImageLoaderTask = new ImageLoader$ImageLoaderTask(this, str, i, i2, imageView);
            imageView.setImageDrawable(new ImageLoader$AsyncDrawable(this.mResources, this.mLoadingBitmap, imageLoader$ImageLoaderTask));
            scheduleTask(imageLoader$ImageLoaderTask);
        }
    }

    private static void scheduleTask(ImageLoader$ImageLoaderTask imageLoader$ImageLoaderTask) {
        String scheme = Uri.parse(ImageLoader$ImageLoaderTask.access$000(imageLoader$ImageLoaderTask)).getScheme();
        if ("resource".equalsIgnoreCase(scheme)) {
            imageLoader$ImageLoaderTask.executeOnExecutor(RESOURCE_DOWNLOADER_EXECUTOR, new Void[0]);
        } else if ("http".equalsIgnoreCase(scheme)) {
            imageLoader$ImageLoaderTask.executeOnExecutor(NETWORK_DOWNLOADER_EXECUTOR, new Void[0]);
        } else if ("https".equalsIgnoreCase(scheme)) {
            imageLoader$ImageLoaderTask.executeOnExecutor(NETWORK_DOWNLOADER_EXECUTOR, new Void[0]);
        }
    }

    public void setLoadingImage(int i) {
        this.mLoadingBitmap = BitmapFactory.decodeResource(this.mResources, i);
    }

    public void setImageFadeIn(boolean z) {
        this.mFadeInBitmap = z;
    }

    private void setImageDrawable(ImageView imageView, Drawable drawable) {
        if (this.mFadeInBitmap) {
            TransitionDrawable transitionDrawable = new TransitionDrawable(new Drawable[]{new BitmapDrawable(this.mResources, this.mLoadingBitmap), drawable});
            transitionDrawable.setCrossFadeEnabled(true);
            imageView.setImageDrawable(transitionDrawable);
            transitionDrawable.startTransition(200);
            return;
        }
        imageView.setImageDrawable(drawable);
    }

    private static boolean cancelPotentialTask(String str, ImageView imageView) {
        ImageLoader$ImageLoaderTask imageLoaderTask = getImageLoaderTask(imageView);
        if (imageLoaderTask != null) {
            String strAccess$000 = ImageLoader$ImageLoaderTask.access$000(imageLoaderTask);
            if (strAccess$000 != null && strAccess$000.equals(str)) {
                return false;
            }
            imageLoaderTask.cancel(true);
        }
        return true;
    }

    private static ImageLoader$ImageLoaderTask getImageLoaderTask(ImageView imageView) {
        if (imageView == null) {
            return null;
        }
        Drawable drawable = imageView.getDrawable();
        if (drawable instanceof ImageLoader$AsyncDrawable) {
            return ((ImageLoader$AsyncDrawable) drawable).getImageLoaderTask();
        }
        return null;
    }

    public void removeCache(String str) {
        if (this.mImageCache.get(str) != null) {
            this.mImageCache.remove(str);
        }
    }

    public void release() {
        this.mImageCache.evictAll();
    }

    private static void bitmap2File(Bitmap bitmap, String str) {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(new File(Environment.getExternalStorageDirectory(), str));
            Throwable th = null;
            try {
                try {
                    bitmap.compress(Bitmap$CompressFormat.PNG, 100, fileOutputStream);
                    if (fileOutputStream != null) {
                        fileOutputStream.close();
                    }
                } catch (Throwable th2) {
                    th = th2;
                    throw th;
                }
            } catch (Throwable th3) {
                if (fileOutputStream != null) {
                    if (th != null) {
                        try {
                            fileOutputStream.close();
                        } catch (Throwable th4) {
                            th.addSuppressed(th4);
                        }
                    } else {
                        fileOutputStream.close();
                    }
                }
                throw th3;
            }
        } catch (FileNotFoundException e) {
            CamLog.e("writeImage2File - file not found: " + e);
        } catch (IOException e2) {
            CamLog.e("writeImage2File - io exception: " + e2);
        }
    }
}
