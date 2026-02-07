package com.sonyericsson.android.camera.view.modeselector;

import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager$NameNotFoundException;
import android.database.ContentObserver;
import com.sonyericsson.android.camera.util.CamLog;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public class CapturingModeListLoader {
    private static final String TAG = "CapturingModeListLoader";
    private final CapturingModeAttributes$InternalCaptureType[] mCaptureTypeList;
    private final CapturingModeCollection mCapturingModeCollection;
    private final ContentResolver mContentResolver;
    private final Context mContext;
    private final ExecutorService mExecutor;
    private List<CapturingModeAttributes> mLocalModeAttrsList;
    private CapturingModeListLoader$OnCapturingModeListChangedListener mOnModeListChangedListener;
    private final CapturingModeAttributes$VisibilityType mVisibilityType;
    private List<CapturingModeAttributes> mModeAttrsList = new ArrayList();
    private final ContentObserver mContentObserver = new CapturingModeListLoader$1(this, null);

    static /* synthetic */ CapturingModeAttributes$InternalCaptureType[] access$000(CapturingModeListLoader capturingModeListLoader) {
        return capturingModeListLoader.mCaptureTypeList;
    }

    static /* synthetic */ CapturingModeAttributes$VisibilityType access$100(CapturingModeListLoader capturingModeListLoader) {
        return capturingModeListLoader.mVisibilityType;
    }

    static /* synthetic */ CapturingModeCollection access$200(CapturingModeListLoader capturingModeListLoader) {
        return capturingModeListLoader.mCapturingModeCollection;
    }

    static /* synthetic */ List access$300(CapturingModeListLoader capturingModeListLoader, List list) {
        return capturingModeListLoader.filter(list);
    }

    static /* synthetic */ List access$400(CapturingModeListLoader capturingModeListLoader) {
        return capturingModeListLoader.mLocalModeAttrsList;
    }

    static /* synthetic */ List access$500(CapturingModeListLoader capturingModeListLoader) {
        return capturingModeListLoader.mModeAttrsList;
    }

    static /* synthetic */ CapturingModeListLoader$OnCapturingModeListChangedListener access$600(CapturingModeListLoader capturingModeListLoader) {
        return capturingModeListLoader.mOnModeListChangedListener;
    }

    public CapturingModeListLoader(Context context, CapturingModeAttributes$InternalCaptureType[] capturingModeAttributes$InternalCaptureTypeArr, CapturingModeAttributes$VisibilityType capturingModeAttributes$VisibilityType, CapturingModeListLoader$OnCapturingModeListChangedListener capturingModeListLoader$OnCapturingModeListChangedListener, ExecutorService executorService) {
        this.mContext = context;
        this.mCaptureTypeList = (CapturingModeAttributes$InternalCaptureType[]) capturingModeAttributes$InternalCaptureTypeArr.clone();
        this.mVisibilityType = capturingModeAttributes$VisibilityType;
        this.mOnModeListChangedListener = capturingModeListLoader$OnCapturingModeListChangedListener;
        this.mExecutor = executorService;
        this.mContentResolver = context.getContentResolver();
        this.mContentResolver.registerContentObserver(CameraCommonProviderConstants.CAPTURINGMODE_CONTENT_URI, true, this.mContentObserver);
        this.mCapturingModeCollection = new CapturingModeCollection(this.mContentResolver);
    }

    public void startLoadTask() {
        if (CamLog.VERBOSE) {
            CamLog.d("start GetTask.");
        }
        new CapturingModeListLoader$GetCapturingModeListTask(this).executeOnExecutor(this.mExecutor, new Void[0]);
    }

    public void release() {
        this.mContentResolver.unregisterContentObserver(this.mContentObserver);
        this.mCapturingModeCollection.release();
        this.mExecutor.shutdown();
    }

    public CapturingModeAttributes getCapturingMode(String str, String str2) {
        for (CapturingModeAttributes capturingModeAttributes : this.mModeAttrsList) {
            if (capturingModeAttributes != null && str.equals(capturingModeAttributes.getPackageName()) && str2.equals(capturingModeAttributes.getModeName())) {
                return capturingModeAttributes;
            }
        }
        return null;
    }

    private List<CapturingModeAttributes> filter(List<CapturingModeAttributes> list) {
        int selectorIconId;
        ArrayList arrayList = new ArrayList();
        PackageManager packageManager = this.mContext.getPackageManager();
        for (CapturingModeAttributes capturingModeAttributes : list) {
            if (!this.mContext.getPackageName().equals(capturingModeAttributes.getPackageName()) || ((selectorIconId = capturingModeAttributes.getSelectorIconId()) != 2131230854 && selectorIconId != 2131230877)) {
                boolean z = false;
                try {
                    z = packageManager.getApplicationInfo(capturingModeAttributes.getPackageName(), 128).enabled;
                } catch (PackageManager$NameNotFoundException e) {
                    CamLog.e("Failed to check whether mode is enabled. Message : " + e.getMessage());
                }
                if (z) {
                    arrayList.add(capturingModeAttributes);
                }
            }
        }
        return this.mVisibilityType == CapturingModeAttributes$VisibilityType.Oneshot ? CapturingModeUtil.sortOneshotCapturingMode(arrayList) : arrayList;
    }

    public void setLocalCapturingMode(List<CapturingModeAttributes> list) {
        this.mLocalModeAttrsList = list;
    }
}
