package com.sonyericsson.cameracommon.storage;

import android.content.ContentValues;
import android.media.Image;
import android.media.ImageReader;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.TakenStatusCommon;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.TakenStatusPhoto;
import com.sonyericsson.cameracommon.utility.CommonUtility;
import java.io.File;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class PhotoSavingRequest extends SavingRequest {
    public static final String TAG = "PhotoSavingRequest";
    private Image mImage;
    private ImageReader mImageReader;
    private PhotoSavingRequest$OnImageReaderDetachedListener mOnImageReaderDettachedListener;
    public final TakenStatusPhoto photo;
    public final boolean shouldUpdateOrientationBeforeStoring;

    public PhotoSavingRequest(TakenStatusCommon takenStatusCommon, TakenStatusPhoto takenStatusPhoto, boolean z) {
        super(takenStatusCommon);
        this.photo = takenStatusPhoto;
        this.shouldUpdateOrientationBeforeStoring = z;
        if (CamLog.VERBOSE) {
            CamLog.d("PhotoSavingRequest: at created.");
        }
        log();
    }

    public PhotoSavingRequest(PhotoSavingRequest photoSavingRequest) {
        super(photoSavingRequest);
        this.photo = new TakenStatusPhoto(photoSavingRequest.photo);
        this.shouldUpdateOrientationBeforeStoring = false;
    }

    public PhotoSavingRequest(PhotoSavingRequest photoSavingRequest, int i) {
        super(photoSavingRequest, i);
        this.photo = new TakenStatusPhoto(photoSavingRequest.photo);
        this.shouldUpdateOrientationBeforeStoring = false;
    }

    public byte[] getImageData() {
        return this.photo.mImage;
    }

    public void setImageData(byte[] bArr) {
        if (CamLog.VERBOSE) {
            CamLog.d("setImageData size: " + bArr.length);
        }
        this.photo.mImage = bArr;
    }

    public void attachImageReader(ImageReader imageReader, PhotoSavingRequest$OnImageReaderDetachedListener photoSavingRequest$OnImageReaderDetachedListener) {
        this.mImageReader = imageReader;
        this.mOnImageReaderDettachedListener = photoSavingRequest$OnImageReaderDetachedListener;
    }

    public boolean isImageReaderUsing() {
        return this.mImageReader != null;
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

    @Override // com.sonyericsson.cameracommon.storage.SavingRequest
    public void log() {
        super.log();
        this.photo.log();
    }

    public boolean isPredictiveCaptureImage() {
        return PredictiveCapturePathBuilder.isPredictiveCaptureImage(getFilePath());
    }

    public boolean isPredictiveCaptureCoverImage() {
        return PredictiveCapturePathBuilder.isPredictiveCaptureCoverImage(getFilePath());
    }

    public boolean isPredictiveCaptureLastImage() {
        return PredictiveCapturePathBuilder.isPredictiveCaptureLastImage(getFilePath());
    }

    @Override // com.sonyericsson.cameracommon.storage.SavingRequest
    public ContentValues createContentValues(String str) {
        if (CamLog.VERBOSE) {
            CamLog.d("createContentValues savedFileType: " + this.common.savedFileType);
        }
        ContentValues contentValues = new ContentValues();
        if (this.common.mSomcType != 0) {
            contentValues.put("somctype", Integer.valueOf(getSomcType()));
        }
        File file = new File(getFilePath());
        contentValues.put("title", CommonUtility.removeFileExtension(file.getName()));
        contentValues.put("_display_name", file.getName());
        if (str.length() > 0) {
            contentValues.put("description", str);
        }
        contentValues.put("datetaken", Long.valueOf(getDateTaken()));
        contentValues.put("mime_type", this.common.mimeType);
        contentValues.put("orientation", Integer.valueOf(this.common.orientation));
        contentValues.put("_size", Long.valueOf(file.length()).toString());
        contentValues.put("date_modified", Long.valueOf(file.lastModified() / 1000));
        contentValues.put("_data", getFilePath());
        contentValues.put("width", Integer.valueOf(this.common.width));
        contentValues.put("height", Integer.valueOf(this.common.height));
        return contentValues;
    }
}
