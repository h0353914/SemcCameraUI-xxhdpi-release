package com.sonyericsson.cameracommon.contentsview;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore$Images$Media;
import android.provider.MediaStore$Video$Media;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.cameracommon.contentsview.contents.Content$ContentInfo;
import com.sonyericsson.cameracommon.contentsview.contents.Content$ContentsType;
import com.sonyericsson.cameracommon.mediasaving.updator.CrQueryParameter;
import com.sonyericsson.cameracommon.storage.DataLoader$DataLoadCallback;
import com.sonyericsson.cameracommon.storage.Storage;
import com.sonyericsson.cameracommon.storage.Storage$OnLoadCompletedListener;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Locale;

public class ContentLoader {
    private static final int MAX_LOCAL_CACHE_NUM = 400;
    public static final float PANORAMA_ASPECT_THRESHOLD = 1.8777778f;
    public static final String TAG = "ContentLoader";
    private final ContentLoader$ContentCreationCallback mContentCallback;
    private LinkedList<Content$ContentInfo> mLocalCacheBackup;
    private ContentLoader$SecurityLevel mSecurityLevel;
    private Storage mStorage;
    private DataLoader$DataLoadCallback mDataCallback = new ContentLoader$DataCallback(this, null);
    private final int MEDIA_ID_COUNT_MAX = 400;
    private LinkedList<Content$ContentInfo> mLocalCache = new LinkedList<>();
    private Storage$OnLoadCompletedListener mOnLoadCompleteListener = new ContentLoader$1(this);
    private ContentLoader$DataLoaderHander mHandler = new ContentLoader$DataLoaderHander(this, null);

    static /* synthetic */ DataLoader$DataLoadCallback access$100(ContentLoader contentLoader) {
        return contentLoader.mDataCallback;
    }

    static /* synthetic */ void access$500(ContentLoader contentLoader, long j) {
        contentLoader.removeFuture(j);
    }

    static /* synthetic */ ContentLoader$ContentCreationCallback access$700(ContentLoader contentLoader) {
        return contentLoader.mContentCallback;
    }

    static /* synthetic */ void access$800(ContentLoader contentLoader, LinkedList linkedList) {
        contentLoader.addLocalCache(linkedList);
    }

    static /* synthetic */ ContentLoader$DataLoaderHander access$900(ContentLoader contentLoader) {
        return contentLoader.mHandler;
    }

    public ContentLoader(Storage storage, ContentLoader$SecurityLevel contentLoader$SecurityLevel, ContentLoader$ContentCreationCallback contentLoader$ContentCreationCallback) {
        this.mSecurityLevel = contentLoader$SecurityLevel;
        this.mStorage = storage;
        this.mContentCallback = contentLoader$ContentCreationCallback;
    }

    public void pause() {
        if (CamLog.VERBOSE) {
            CamLog.d("pause() has been called.");
        }
        this.mStorage.cancelDataLoad(false);
        clearLocalCache();
    }

    public void release() {
        if (CamLog.VERBOSE) {
            CamLog.d("release() has been called.");
        }
        clearLocalCache();
        this.mLocalCache = null;
        this.mDataCallback = null;
        ContentLoader$DataLoaderHander.access$300(this.mHandler);
    }

    public void request(int i, Uri uri) {
        if (CamLog.VERBOSE) {
            CamLog.d("request() has been called.");
            CamLog.d("  requestId:" + i);
            CamLog.d("  uri:" + uri.toString());
        }
        this.mStorage.requestDataLoad(i, uri, true, this.mOnLoadCompleteListener);
    }

    public void requestLastDataLoad(int i) {
        this.mStorage.requestLastDataLoad(i, true, this.mOnLoadCompleteListener);
    }

    public void requestCreateContentInfoSync(ArrayList<Uri> arrayList) {
        this.mStorage.requestCreateContentInfoSync(arrayList, this.mOnLoadCompleteListener);
    }

    public void reload(int i) {
        if (CamLog.VERBOSE) {
            CamLog.d("reload() has been called.");
        }
        if (ContentLoader$2.$SwitchMap$com$sonyericsson$cameracommon$contentsview$ContentLoader$SecurityLevel[this.mSecurityLevel.ordinal()] == 1) {
            if (CamLog.VERBOSE) {
                CamLog.d("reload() : SecurityLevel = NEWLY_ADDED_CONTENT_ONLY ");
            }
            LinkedList<Content$ContentInfo> localCache = getLocalCache();
            if (localCache == null || localCache.size() <= 0) {
                return;
            }
            request(-1, localCache.getFirst().mOriginalUri);
            return;
        }
        if (CamLog.VERBOSE) {
            CamLog.d("reload() : SecurityLevel = NORMAL");
        }
        for (int i2 = 0; i2 < i; i2++) {
            this.mStorage.requestDataLoad(i2, false, this.mOnLoadCompleteListener);
        }
    }

    private void removeFuture(long j) {
        this.mStorage.cancelDataLoad(j);
    }

    private void addLocalCache(LinkedList<Content$ContentInfo> linkedList) {
        if (this.mLocalCacheBackup != null) {
            if (!this.mLocalCacheBackup.isEmpty() && linkedList.size() == 1 && linkedList.getFirst().mId == this.mLocalCacheBackup.getFirst().mId) {
                this.mLocalCacheBackup.set(0, linkedList.getFirst());
            } else {
                Iterator<Content$ContentInfo> it = linkedList.iterator();
                while (it.hasNext()) {
                    this.mLocalCacheBackup.addFirst(it.next());
                    if (overLimitSize(this.mLocalCacheBackup)) {
                        this.mLocalCacheBackup.removeLast();
                    }
                }
            }
        }
        if (!this.mLocalCache.isEmpty() && linkedList.size() == 1 && linkedList.getFirst().mId == this.mLocalCache.getFirst().mId) {
            this.mLocalCache.set(0, linkedList.getFirst());
            return;
        }
        Iterator<Content$ContentInfo> it2 = linkedList.iterator();
        while (it2.hasNext()) {
            this.mLocalCache.addFirst(it2.next());
            if (overLimitSize(this.mLocalCache)) {
                this.mLocalCache.removeLast();
            }
        }
    }

    private boolean overLimitSize(LinkedList<Content$ContentInfo> linkedList) {
        if (linkedList.size() > 400) {
            return true;
        }
        int i = 0;
        for (Content$ContentInfo content$ContentInfo : linkedList) {
            if (content$ContentInfo.mContentType == Content$ContentsType.BURST && content$ContentInfo.mGroupedImage > 0) {
                i += content$ContentInfo.mGroupedImage;
            } else {
                i = content$ContentInfo.mContentType == Content$ContentsType.PREDICTIVE_CAPTURE ? i + content$ContentInfo.mPredictiveNum : i + 1;
            }
        }
        return i > 400;
    }

    private void clearLocalCache() {
        if (this.mLocalCache != null) {
            this.mLocalCache.clear();
        }
    }

    public LinkedList<Content$ContentInfo> getLocalCache() {
        return this.mLocalCache;
    }

    public void saveLocalCache() {
        this.mLocalCacheBackup = new LinkedList<>(this.mLocalCache);
    }

    public void clearLocalCacheBackup() {
        if (this.mLocalCacheBackup != null) {
            this.mLocalCacheBackup.clear();
            this.mLocalCacheBackup = null;
        }
    }

    public void loadLocalCache() {
        if (this.mLocalCacheBackup != null) {
            this.mLocalCache.clear();
            this.mLocalCache = new LinkedList<>(this.mLocalCacheBackup);
        }
    }

    public void removeInvalidLocalCache(Context context) {
        Iterator<Content$ContentInfo> it = this.mLocalCache.iterator();
        while (it.hasNext()) {
            Content$ContentInfo next = it.next();
            if (!new File(next.mOriginalPath).exists()) {
                it.remove();
            } else if (isRemovedFromDataBase(context, next.mId, next.mType)) {
                next.mIsInTrash = true;
                it.remove();
            }
        }
    }

    public boolean isRemovedFromDataBase(Context context, long j, int i) {
        Cursor cursorCrQuery;
        CrQueryParameter crQueryParameter = new CrQueryParameter();
        crQueryParameter.projection = new String[]{"_id"};
        crQueryParameter.sortOrder = String.format(Locale.US, "%s DESC, %s DESC", "datetaken", "_id");
        crQueryParameter.where = String.format(Locale.US, "%s like '%s'", "_id", Long.valueOf(j));
        if (i == 1 || i == 3) {
            cursorCrQuery = PhotoStackQueryHelper.crQuery(context.getContentResolver(), MediaStore$Images$Media.EXTERNAL_CONTENT_URI, crQueryParameter);
        } else {
            cursorCrQuery = i == 2 ? PhotoStackQueryHelper.crQuery(context.getContentResolver(), MediaStore$Video$Media.EXTERNAL_CONTENT_URI, crQueryParameter) : null;
        }
        if (cursorCrQuery != null) {
            z = cursorCrQuery.getCount() == 0;
            cursorCrQuery.close();
        }
        return z;
    }

    public void reloadTopContent() {
        if (this.mLocalCache == null || this.mLocalCache.isEmpty() || this.mLocalCache.getFirst().mIsContainDetails) {
            return;
        }
        request(-1, this.mLocalCache.getFirst().mOriginalUri);
    }
}
