package com.sonyericsson.cameracommon.storage;

import android.net.Uri;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.TakenStatusCommon;
import java.lang.ref.WeakReference;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public abstract class RequestFactory$RequestBuilder {
    public TakenStatusCommon mCommonStatus;
    private boolean mFinalRequest = true;
    private boolean mIsOneShot = false;
    private Storage$StorageType mStorageType;

    public RequestFactory$RequestBuilder(TakenStatusCommon takenStatusCommon) {
        this.mCommonStatus = takenStatusCommon;
    }

    public void setRequestId(int i) {
        this.mCommonStatus.mRequestId = i;
    }

    public int getRequestId() {
        return this.mCommonStatus.mRequestId;
    }

    public void setFilePath(String str) {
        this.mCommonStatus.mFilePath = str;
    }

    public String getFilePath() {
        return this.mCommonStatus.mFilePath;
    }

    public void setStorageType(Storage$StorageType storage$StorageType) {
        this.mStorageType = storage$StorageType;
    }

    public Storage$StorageType getStorageType() {
        return this.mStorageType;
    }

    public void setDateTaken(long j) {
        this.mCommonStatus.mDateTaken = j;
    }

    public long getDateTaken() {
        return this.mCommonStatus.mDateTaken;
    }

    public void setExtraOutput(Uri uri) {
        this.mCommonStatus.mExtraOutput = uri;
    }

    public Uri getExtraOutput() {
        return this.mCommonStatus.mExtraOutput;
    }

    public void setSomcType(int i) {
        this.mCommonStatus.mSomcType = i;
    }

    public int getSomcType() {
        return this.mCommonStatus.mSomcType;
    }

    public void setFinalInSavingGroup(boolean z) {
        this.mFinalRequest = z;
    }

    public boolean isFinalInSavingGroup() {
        return this.mFinalRequest;
    }

    public void setOneShot(boolean z) {
        this.mIsOneShot = z;
    }

    public boolean isOneShot() {
        return this.mIsOneShot;
    }

    public void addCallback(Storage$OnStoreCompletedListener storage$OnStoreCompletedListener) {
        Iterator<WeakReference<Storage$OnStoreCompletedListener>> it = this.mCommonStatus.mCallbacks.iterator();
        while (it.hasNext()) {
            if (it.next().get() == storage$OnStoreCompletedListener) {
                return;
            }
        }
        this.mCommonStatus.mCallbacks.add(new WeakReference<>(storage$OnStoreCompletedListener));
    }
}
