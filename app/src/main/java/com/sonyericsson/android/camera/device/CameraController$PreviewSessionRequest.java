package com.sonyericsson.android.camera.device;

import com.sonyericsson.android.camera.configuration.parameters.VideoSize;

class CameraController$PreviewSessionRequest {
    private static final int OPERATION_MODE_SOMC_CAMERA_BT601 = 32768;
    private static final int OPERATION_MODE_SOMC_CAMERA_BT709 = 32771;
    private static final int OPERATION_MODE_SOMC_CAMERA_VIDEO_HDR = 32770;
    private boolean mIsNeedCapturedFrame;
    private boolean mIsVideoHdr;
    private final String mSessionIdTag;
    private VideoSize mVideoSize;

    /* synthetic */ CameraController$PreviewSessionRequest(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId, CameraController$1 cameraController$1) {
        this(cameraDeviceHandler$CameraSessionId);
    }

    static /* synthetic */ void access$3100(CameraController$PreviewSessionRequest cameraController$PreviewSessionRequest, VideoSize videoSize) {
        cameraController$PreviewSessionRequest.needVideo(videoSize);
    }

    static /* synthetic */ void access$3200(CameraController$PreviewSessionRequest cameraController$PreviewSessionRequest, boolean z) {
        cameraController$PreviewSessionRequest.needVideoHdr(z);
    }

    static /* synthetic */ void access$3300(CameraController$PreviewSessionRequest cameraController$PreviewSessionRequest, boolean z) {
        cameraController$PreviewSessionRequest.needCapturedFrame(z);
    }

    static /* synthetic */ boolean access$3500(CameraController$PreviewSessionRequest cameraController$PreviewSessionRequest) {
        return cameraController$PreviewSessionRequest.isVideoHdr();
    }

    static /* synthetic */ boolean access$3700(CameraController$PreviewSessionRequest cameraController$PreviewSessionRequest) {
        return cameraController$PreviewSessionRequest.isNeedCapturedFrame();
    }

    static /* synthetic */ int access$4300(CameraController$PreviewSessionRequest cameraController$PreviewSessionRequest) {
        return cameraController$PreviewSessionRequest.getOperationMode();
    }

    private CameraController$PreviewSessionRequest(CameraDeviceHandler$CameraSessionId cameraDeviceHandler$CameraSessionId) {
        this.mSessionIdTag = cameraDeviceHandler$CameraSessionId.toString();
        this.mVideoSize = null;
        clear();
    }

    private void needCapturedFrame(boolean z) {
        this.mIsNeedCapturedFrame = z;
    }

    private void needVideoHdr(boolean z) {
        this.mIsVideoHdr = z;
    }

    private void needVideo(VideoSize videoSize) {
        this.mVideoSize = videoSize;
    }

    private boolean isNeedCapturedFrame() {
        return this.mIsNeedCapturedFrame;
    }

    private boolean isVideoHdr() {
        return this.mIsVideoHdr;
    }

    private int getOperationMode() {
        if (this.mIsVideoHdr) {
            return 32770;
        }
        return (this.mVideoSize == null || this.mVideoSize == VideoSize.VGA) ? 32768 : 32771;
    }

    private void clear() {
        this.mIsNeedCapturedFrame = false;
        this.mIsVideoHdr = false;
        this.mVideoSize = null;
    }

    public String toString() {
        return getClass().getSimpleName() + "{sessionId=" + this.mSessionIdTag + ", isNeedCapturedFrame=" + this.mIsNeedCapturedFrame + ", isVideoHdr=" + this.mIsVideoHdr + ", OperationMode=" + getOperationMode() + "}";
    }

    public boolean equals(Object obj) {
        return (obj instanceof CameraController$PreviewSessionRequest) && toString().equals(obj.toString());
    }

    public int hashCode() {
        return toString().hashCode();
    }
}
