package com.sonyericsson.android.camera.device;

import android.graphics.Rect;
import android.media.Image;
import android.media.Image$Plane;
import android.media.ImageReader;
import android.media.ImageReader$OnImageAvailableListener;
import com.sonyericsson.android.camera.util.CamLog;
import java.nio.ByteBuffer;

final class CameraController$PreviewFrameReceiver implements ImageReader$OnImageAvailableListener {
    private Runnable mCallbackTask;
    private ImageRetriever$CaptureImageRequest mCaptureImageRequest;
    private byte[] mOutput;

    private CameraController$PreviewFrameReceiver() {
        this.mCaptureImageRequest = null;
    }

    /* synthetic */ CameraController$PreviewFrameReceiver(CameraController$1 cameraController$1) {
        this();
    }

    static /* synthetic */ void access$6000(CameraController$PreviewFrameReceiver cameraController$PreviewFrameReceiver, ImageRetriever$CaptureImageRequest imageRetriever$CaptureImageRequest) {
        cameraController$PreviewFrameReceiver.registerCallback(imageRetriever$CaptureImageRequest);
    }

    static /* synthetic */ boolean access$6200(CameraController$PreviewFrameReceiver cameraController$PreviewFrameReceiver, ImageRetriever$OnImageRetrieverCallback imageRetriever$OnImageRetrieverCallback) {
        return cameraController$PreviewFrameReceiver.hasCallback(imageRetriever$OnImageRetrieverCallback);
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x000d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private synchronized boolean hasCallback(ImageRetriever$OnImageRetrieverCallback imageRetriever$OnImageRetrieverCallback) {
        boolean z;
        if (this.mCaptureImageRequest != null) {
            z = this.mCaptureImageRequest.callback == imageRetriever$OnImageRetrieverCallback;
        }
        return z;
    }

    private void registerCallback(ImageRetriever$CaptureImageRequest imageRetriever$CaptureImageRequest) {
        synchronized (this) {
            if (imageRetriever$CaptureImageRequest == null) {
                try {
                    if (this.mCallbackTask != null && this.mCaptureImageRequest != null) {
                        this.mCaptureImageRequest.handler.removeCallbacks(this.mCallbackTask);
                        this.mCallbackTask = null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            this.mCaptureImageRequest = imageRetriever$CaptureImageRequest;
        }
    }

    @Override // android.media.ImageReader$OnImageAvailableListener
    public void onImageAvailable(ImageReader imageReader) {
        Image imageAcquireLatestImage = imageReader.acquireLatestImage();
        if (imageAcquireLatestImage == null) {
            CamLog.w("onImageAvailable() image is null");
            return;
        }
        synchronized (this) {
            if (this.mCaptureImageRequest == null) {
                imageAcquireLatestImage.close();
                return;
            }
            Rect rect = new Rect(0, 0, imageAcquireLatestImage.getWidth(), imageAcquireLatestImage.getHeight());
            if (imageReader.getImageFormat() == 35) {
                Image$Plane[] planes = imageAcquireLatestImage.getPlanes();
                if (planes != null && planes.length == 3) {
                    int width = imageAcquireLatestImage.getWidth();
                    int height = imageAcquireLatestImage.getHeight();
                    if (width % 2 == 0 && height % 2 == 0) {
                        if (this.mOutput == null || width != 0 || height != 0) {
                            this.mOutput = new byte[((width * height) * 3) / 2];
                        }
                        Image$Plane image$Plane = planes[0];
                        Image$Plane image$Plane2 = planes[1];
                        Image$Plane image$Plane3 = planes[2];
                        ImageConverter.convertFromYuv420_888ToNv21(this.mOutput, width, height, image$Plane.getBuffer(), image$Plane.getRowStride(), image$Plane.getPixelStride(), image$Plane2.getBuffer(), image$Plane2.getRowStride(), image$Plane2.getPixelStride(), image$Plane3.getBuffer(), image$Plane3.getRowStride(), image$Plane3.getPixelStride());
                        ByteBuffer byteBufferWrap = ByteBuffer.wrap(this.mOutput);
                        byteBufferWrap.rewind();
                        imageAcquireLatestImage.close();
                        ImageRetriever$CaptureImageRequest imageRetriever$CaptureImageRequest = this.mCaptureImageRequest;
                        if (this.mCaptureImageRequest.isOneShot) {
                            this.mCaptureImageRequest = null;
                        }
                        this.mCallbackTask = new CameraController$PreviewFrameReceiver$1(this, imageRetriever$CaptureImageRequest, byteBufferWrap, 17, rect);
                        imageRetriever$CaptureImageRequest.handler.post(this.mCallbackTask);
                        return;
                    }
                    CamLog.w("YUV_420_888 image is invalid. Width(" + width + ") or/are Height(" + height + ") is/are invalid.");
                    imageAcquireLatestImage.close();
                    return;
                }
                CamLog.w("YUV_420_888 image is invalid. Planes are invalid.");
                imageAcquireLatestImage.close();
                return;
            }
            imageAcquireLatestImage.close();
        }
    }
}
