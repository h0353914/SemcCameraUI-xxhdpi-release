package com.sonyericsson.cameracommon.contentsview;

import android.app.Activity;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.cameracommon.contentsview.contents.Content;
import com.sonyericsson.cameracommon.contentsview.contents.Content$ContentInfo;
import com.sonyericsson.cameracommon.storage.Storage;
import com.sonyericsson.cameracommon.storage.Storage$StorageReadyState;
import com.sonyericsson.cameracommon.storage.Storage$StorageState;
import com.sonyericsson.cameracommon.storage.Storage$StorageStateListener;
import com.sonyericsson.cameracommon.storage.Storage$StorageType;
import com.sonyericsson.cameracommon.utility.CommonUtility;
import com.sonyericsson.cameracommon.utility.IncrementalId;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ContentsViewController implements Storage$StorageStateListener, ContentLoader$ContentCreationCallback {
    public static final int MAX_CONTENT_NUMBER = 1;
    public static final String TAG = "ContentsViewController";
    private Activity mActivity;
    private final ContentsContainer mContentContainer;
    private ContentLoader mContentLoader;
    private boolean mIsCoreCamera;
    private int mOrientation;
    private ContentLoader$SecurityLevel mSecurityLevel;
    private Storage mStorage;
    private ContentPallet$ThumbnailStateListener mThumbnailStateListener;
    private boolean mClickable = true;
    private ContentsViewController$ClickListener mClickListener = null;
    private ContentsViewController$OnClickThumbnailProgressListener mClickThumbnailProgressListener = null;
    private Handler mHandler = new Handler(Looper.getMainLooper());
    private final List<ContentsViewController$UpdateContentTask> mUpdateContentTaskList = Collections.synchronizedList(new LinkedList());
    private final IncrementalId mRequestIdGenerator = new IncrementalId();

    @Override // com.sonyericsson.cameracommon.storage.Storage$StorageStateListener
    public void onStorageSizeChanged(Storage$StorageType storage$StorageType, long j) {
    }

    static /* synthetic */ ContentsViewController$OnClickThumbnailProgressListener access$100(ContentsViewController contentsViewController) {
        return contentsViewController.mClickThumbnailProgressListener;
    }

    static /* synthetic */ List access$200(ContentsViewController contentsViewController) {
        return contentsViewController.mUpdateContentTaskList;
    }

    static /* synthetic */ ContentLoader access$300(ContentsViewController contentsViewController) {
        return contentsViewController.mContentLoader;
    }

    static /* synthetic */ Activity access$400(ContentsViewController contentsViewController) {
        return contentsViewController.mActivity;
    }

    public void requestLayout() {
        this.mContentContainer.requestLayout();
    }

    public ContentsViewController(Activity activity, Storage storage, ContentLoader$SecurityLevel contentLoader$SecurityLevel, ContentPallet$ThumbnailStateListener contentPallet$ThumbnailStateListener) {
        this.mThumbnailStateListener = null;
        this.mIsCoreCamera = false;
        this.mActivity = activity;
        this.mContentLoader = new ContentLoader(storage, contentLoader$SecurityLevel, this);
        this.mContentContainer = (ContentsContainer) activity.findViewById(2131296370);
        this.mStorage = storage;
        this.mThumbnailStateListener = contentPallet$ThumbnailStateListener;
        this.mIsCoreCamera = CommonUtility.isCoreCameraApp(activity);
        this.mSecurityLevel = contentLoader$SecurityLevel;
    }

    public void pause() {
        if (CamLog.VERBOSE) {
            CamLog.d("pause() has been called.");
        }
        if (this.mContentLoader != null) {
            this.mContentLoader.pause();
        }
    }

    public void release() {
        if (CamLog.VERBOSE) {
            CamLog.d("release() has been called.");
        }
        this.mContentLoader.clearLocalCacheBackup();
        this.mContentLoader.release();
        this.mContentLoader = null;
        this.mStorage.removeStorageStateListener(this);
        Iterator<ContentsViewController$UpdateContentTask> it = this.mUpdateContentTaskList.iterator();
        while (it.hasNext()) {
            this.mHandler.removeCallbacks(it.next());
        }
        this.mUpdateContentTaskList.clear();
        this.mActivity = null;
    }

    public int createContentFrame() {
        if (CamLog.VERBOSE) {
            CamLog.d("createContentFrame() has been called.");
        }
        int iCreateEmptyContentFrame = createEmptyContentFrame();
        showProgress(iCreateEmptyContentFrame);
        return iCreateEmptyContentFrame;
    }

    public int createEmptyContentFrame() {
        ContentPallet contentPallet;
        if (CamLog.VERBOSE) {
            CamLog.d("createEmptyContentFrame() has been called.");
        }
        if (this.mActivity == null) {
            CamLog.w("Activity has already been released at createEmptyContentFrame.");
            return -1;
        }
        LayoutInflater layoutInflater = this.mActivity.getLayoutInflater();
        if (layoutInflater == null) {
            CamLog.w("could not get inflater.");
            return -1;
        }
        int next = this.mRequestIdGenerator.getNext();
        if (CamLog.VERBOSE) {
            CamLog.d("createEmptyContentFrame : create pallet. id = " + next);
        }
        if (this.mIsCoreCamera) {
            contentPallet = (ContentPallet) layoutInflater.inflate(2131492913, (ViewGroup) null);
        } else {
            contentPallet = (ContentPallet) layoutInflater.inflate(2131492912, (ViewGroup) null);
        }
        contentPallet.initialize(next, this.mThumbnailStateListener);
        if (!this.mClickable) {
            contentPallet.disableClick();
        }
        this.mContentContainer.addView(contentPallet);
        this.mContentContainer.setSensorOrientation(this.mOrientation);
        return next;
    }

    private void removeExcessiveView(int i) {
        for (int i2 = 0; i2 < this.mContentContainer.getChildCount(); i2++) {
            ContentPallet contentPallet = (ContentPallet) this.mContentContainer.getChildAt(i2);
            if (contentPallet.hasContent() && i != contentPallet.getRequestId()) {
                this.mContentContainer.removeView(contentPallet);
            }
        }
    }

    public int createProvisionalContentFrame() {
        int iCreateEmptyContentFrame = createEmptyContentFrame();
        ContentPallet contentPalletSearchPallet = searchPallet(iCreateEmptyContentFrame);
        if (contentPalletSearchPallet != null) {
            contentPalletSearchPallet.setProvisionalContent();
            removeExcessiveView(iCreateEmptyContentFrame);
        }
        show();
        return iCreateEmptyContentFrame;
    }

    public void addContent(int i, Uri uri) {
        if (CamLog.VERBOSE) {
            CamLog.d("addContent() has been called. requestId = " + i + ", uri = " + uri);
        }
        if (this.mContentLoader == null) {
            return;
        }
        if (searchPallet(i) != null || this.mSecurityLevel == ContentLoader$SecurityLevel.NEWLY_ADDED_CONTENT_ONLY) {
            this.mContentLoader.request(i, uri);
        } else {
            if (i == -1 || this.mContentContainer.getChildCount() != 0) {
                return;
            }
            reload();
        }
    }

    public void requestLastContentLoading(int i) {
        if (this.mContentLoader != null) {
            this.mContentLoader.requestLastDataLoad(i);
        }
    }

    public void requestCreateContentInfoSync(ArrayList<Uri> arrayList) {
        this.mContentLoader.requestCreateContentInfoSync(arrayList);
    }

    public void reload() {
        if (CamLog.VERBOSE) {
            CamLog.d("reload() has been called.");
        }
        if (this.mContentLoader != null) {
            this.mContentLoader.reload(1);
        }
        this.mStorage.addStorageStateListener(this);
    }

    public void remove() {
        this.mContentContainer.removeAllViews();
    }

    public void show() {
        if (CamLog.VERBOSE) {
            CamLog.d("show()");
        }
        this.mContentContainer.setVisibility(0);
        this.mContentContainer.cancelRequestHide();
    }

    public void hide() {
        if (CamLog.VERBOSE) {
            CamLog.d("hide()");
        }
        this.mContentContainer.setVisibility(4);
    }

    public void setSensorOrientation(int i) {
        this.mOrientation = i;
        if (this.mContentContainer != null) {
            this.mContentContainer.setSensorOrientation(i);
        }
    }

    public void startHideAnimation(Animation animation) {
        this.mContentContainer.cancelRequestHide();
        startAnimationInner(animation);
    }

    private void startAnimationInner(Animation animation) {
        if (animation != null) {
            animation.reset();
            this.mContentContainer.startAnimation(animation);
            if (CamLog.VERBOSE) {
                CamLog.d("Animation started.");
            }
        }
    }

    public void stopAnimation(boolean z) {
        Animation animation = this.mContentContainer.getAnimation();
        if (animation != null) {
            if (!z) {
                animation.setAnimationListener(null);
            }
            animation.cancel();
            if (CamLog.VERBOSE) {
                CamLog.d("Animation canceled.");
            }
            this.mContentContainer.setAnimation(null);
        }
    }

    private ContentPallet searchPallet(int i) {
        if (CamLog.VERBOSE) {
            CamLog.d("searchPallet() has been called. requestId = " + i + ", child = " + this.mContentContainer.getChildCount());
        }
        for (int i2 = 0; i2 < this.mContentContainer.getChildCount(); i2++) {
            ContentPallet contentPallet = (ContentPallet) this.mContentContainer.getChildAt(i2);
            if (i == contentPallet.getRequestId()) {
                if (CamLog.VERBOSE) {
                    CamLog.d("searchPallet() pallet find. index = " + i2);
                }
                return contentPallet;
            }
        }
        return null;
    }

    public boolean isLoading() {
        if (CamLog.VERBOSE) {
            CamLog.d("hasLoadingContent() has been called. child = " + this.mContentContainer.getChildCount());
        }
        for (int i = 0; i < this.mContentContainer.getChildCount(); i++) {
            if (!((ContentPallet) this.mContentContainer.getChildAt(i)).hasContent()) {
                if (CamLog.VERBOSE) {
                    CamLog.d("isLoading() pallet is loading. index = " + i);
                }
                return true;
            }
        }
        return false;
    }

    public boolean isLoadingInProvisionalContent() {
        for (int i = 0; i < this.mContentContainer.getChildCount(); i++) {
            if (((ContentPallet) this.mContentContainer.getChildAt(i)).isProvisionalContent()) {
                return true;
            }
        }
        return false;
    }

    @Override // com.sonyericsson.cameracommon.contentsview.ContentLoader$ContentCreationCallback
    public void onContentCreated(int i, Content content, Bitmap bitmap) {
        if (CamLog.VERBOSE) {
            CamLog.d("onContentCreated( " + i + " )");
        }
        if (this.mActivity == null) {
            CamLog.w("Activity has already been released.");
            return;
        }
        if (i == -1 && !isLoading()) {
            i = createEmptyContentFrame();
        }
        ContentPallet contentPalletSearchPallet = searchPallet(i);
        if (contentPalletSearchPallet != null) {
            contentPalletSearchPallet.set(content, bitmap);
            removeExcessiveView(i);
        }
        if (this.mThumbnailStateListener != null) {
            this.mThumbnailStateListener.onThumbnailCreated(content);
        }
    }

    @Override // com.sonyericsson.cameracommon.contentsview.ContentLoader$ContentCreationCallback
    public void onNoContentLoaded() {
        remove();
    }

    public void clearContents() {
        this.mContentLoader.pause();
        this.mContentContainer.removeAllViews();
    }

    @Override // com.sonyericsson.cameracommon.storage.Storage$StorageStateListener
    public void onStorageStateChanged(Storage$StorageType storage$StorageType, Storage$StorageState storage$StorageState, Storage$StorageReadyState storage$StorageReadyState) {
        if (CamLog.VERBOSE) {
            CamLog.d("onStorageStateChanged");
        }
        ContentsViewController$UpdateContentTask contentsViewController$UpdateContentTask = new ContentsViewController$UpdateContentTask(this, storage$StorageType, storage$StorageState);
        this.mUpdateContentTaskList.add(contentsViewController$UpdateContentTask);
        this.mHandler.post(contentsViewController$UpdateContentTask);
    }

    public void showProgress(int i) {
        if (CamLog.VERBOSE) {
            CamLog.d("showProgress() has been called.");
        }
        ContentPallet contentPalletSearchPallet = searchPallet(i);
        if (contentPalletSearchPallet != null) {
            View viewFindViewById = contentPalletSearchPallet.findViewById(2131296367);
            if (viewFindViewById != null) {
                viewFindViewById.setVisibility(0);
                viewFindViewById.setOnClickListener(this.mClickListener);
            }
            if (CamLog.VERBOSE) {
                CamLog.d("ContentsViewController", "progress = " + contentPalletSearchPallet.findViewById(2131296367));
            }
        }
    }

    public void enableClick() {
        if (CamLog.VERBOSE) {
            CamLog.d("enableClick() has been called.");
        }
        this.mContentContainer.enableClick();
        this.mClickable = true;
    }

    public void disableClick() {
        if (CamLog.VERBOSE) {
            CamLog.d("disableClick() has been called.");
        }
        this.mContentContainer.disableClick();
        this.mClickable = false;
    }

    public void setClickThumbnailProgressListener(ContentsViewController$OnClickThumbnailProgressListener contentsViewController$OnClickThumbnailProgressListener) {
        if (CamLog.VERBOSE) {
            CamLog.d("setClickThumbnailProgressListener");
        }
        this.mClickThumbnailProgressListener = contentsViewController$OnClickThumbnailProgressListener;
        if (contentsViewController$OnClickThumbnailProgressListener == null) {
            this.mClickListener = null;
        } else {
            this.mClickListener = new ContentsViewController$ClickListener(this, null);
        }
    }

    public List<Content$ContentInfo> getLocalContentInfo() {
        return this.mContentLoader.getLocalCache();
    }

    public void reconstructLocalCache() {
        this.mContentLoader.loadLocalCache();
        this.mContentLoader.clearLocalCacheBackup();
        this.mContentLoader.removeInvalidLocalCache(this.mActivity);
        this.mContentLoader.reloadTopContent();
    }

    public void saveLocalCache() {
        this.mContentLoader.saveLocalCache();
    }

    public Content getCurrentContent() {
        if (CamLog.VERBOSE) {
            CamLog.d("getCurrentContent() has been called.");
        }
        if (this.mContentContainer == null || this.mContentContainer.getChildCount() == 0) {
            CamLog.w("getCurrentContent() mContentContainer has no content.");
            return null;
        }
        ContentPallet contentPallet = (ContentPallet) this.mContentContainer.getChildAt(0);
        if (contentPallet == null) {
            CamLog.w("getCurrentContent() pallet(0) is null.");
            return null;
        }
        return contentPallet.getContent();
    }

    public int getCurrentRequestId() {
        if (CamLog.VERBOSE) {
            CamLog.d("getCurrentRequestId() has been called.");
        }
        if (this.mContentContainer == null || this.mContentContainer.getChildCount() == 0) {
            CamLog.w("getCurrentRequestId() mContentContainer has no content.");
            return -1;
        }
        ContentPallet contentPallet = (ContentPallet) this.mContentContainer.getChildAt(0);
        if (contentPallet == null) {
            CamLog.w("getCurrentRequestId() pallet(0) is null.");
            return -1;
        }
        return contentPallet.getRequestId();
    }
}
