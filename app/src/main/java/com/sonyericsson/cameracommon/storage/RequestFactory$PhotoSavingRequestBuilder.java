package com.sonyericsson.cameracommon.storage;

import android.media.Image;
import android.media.ImageReader;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.TakenStatusCommon;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.TakenStatusPhoto;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class RequestFactory$PhotoSavingRequestBuilder extends RequestFactory$RequestBuilder {
    private Image mImage;
    private ImageReader mImageReader;
    private boolean mIsOneshot;
    private PhotoSavingRequest$OnImageReaderDetachedListener mOnImageReaderDettachedListener;
    public TakenStatusPhoto mPhotoStatus;
    private boolean mShouldUpdateOrientationBeforeStoring;

    static /* synthetic */ boolean access$000(RequestFactory$PhotoSavingRequestBuilder requestFactory$PhotoSavingRequestBuilder) {
        return requestFactory$PhotoSavingRequestBuilder.mShouldUpdateOrientationBeforeStoring;
    }

    static /* synthetic */ ImageReader access$100(RequestFactory$PhotoSavingRequestBuilder requestFactory$PhotoSavingRequestBuilder) {
        return requestFactory$PhotoSavingRequestBuilder.mImageReader;
    }

    static /* synthetic */ PhotoSavingRequest$OnImageReaderDetachedListener access$200(RequestFactory$PhotoSavingRequestBuilder requestFactory$PhotoSavingRequestBuilder) {
        return requestFactory$PhotoSavingRequestBuilder.mOnImageReaderDettachedListener;
    }

    public RequestFactory$PhotoSavingRequestBuilder(TakenStatusCommon takenStatusCommon, TakenStatusPhoto takenStatusPhoto, boolean z) {
        super(takenStatusCommon);
        this.mIsOneshot = false;
        this.mPhotoStatus = takenStatusPhoto;
        this.mShouldUpdateOrientationBeforeStoring = z;
    }

    public boolean getShouldUpdateOrientationBeforeStoring() {
        return this.mShouldUpdateOrientationBeforeStoring;
    }

    public void setSaveTimeForCaptureGroup(String str) {
        this.mCommonStatus.mSaveTimeForPredictiveCapture = str;
    }

    public String getSaveTimeForPredictiveCapture() {
        return this.mCommonStatus.mSaveTimeForPredictiveCapture;
    }

    public void setCaptureIdForCaptureGourp(int i) {
        this.mCommonStatus.mCaptureIdForPredictiveCapture = i;
    }

    public int getCaptureIdForPredictiveCapture() {
        return this.mCommonStatus.mCaptureIdForPredictiveCapture;
    }

    public void setImageData(byte[] bArr) {
        this.mPhotoStatus.mImage = bArr;
    }

    public byte[] getImageData() {
        return this.mPhotoStatus.mImage;
    }

    public void attachImageReader(ImageReader imageReader, PhotoSavingRequest$OnImageReaderDetachedListener photoSavingRequest$OnImageReaderDetachedListener) {
        this.mImageReader = imageReader;
        this.mOnImageReaderDettachedListener = photoSavingRequest$OnImageReaderDetachedListener;
    }

    public void setOneshot(boolean z) {
        this.mIsOneshot = z;
    }

    @Override // com.sonyericsson.cameracommon.storage.RequestFactory$RequestBuilder
    public boolean isOneShot() {
        return this.mIsOneshot;
    }

    public ByteBuffer getImageReaderData() {
        if (this.mImageReader == null) {
            return null;
        }
        if (this.mImage == null) {
            this.mImage = this.mImageReader.acquireNextImage();
        }
        if (this.mImage != null) {
            return this.mImage.getPlanes()[0].getBuffer();
        }
        throw new IllegalStateException("ImageReader maybe closed");
    }

    public void close() {
        if (this.mImage != null) {
            this.mImage.close();
            this.mImage = null;
        }
        if (this.mOnImageReaderDettachedListener != null) {
            this.mOnImageReaderDettachedListener.onDetached(this.mImageReader);
        }
        this.mImageReader = null;
    }
}
