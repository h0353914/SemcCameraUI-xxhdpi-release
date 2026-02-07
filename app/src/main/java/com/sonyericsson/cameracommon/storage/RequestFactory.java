package com.sonyericsson.cameracommon.storage;

import com.sonyericsson.cameracommon.mediasaving.takenstatus.TakenStatusCommon;

/* JADX INFO: loaded from: classes.dex */
public class RequestFactory {
    private static final String TAG = "RequestFactory";

    public static SavingRequest createSavingRequest(RequestFactory$RequestBuilder requestFactory$RequestBuilder) {
        SavingRequest savingRequest;
        TakenStatusCommon takenStatusCommon = requestFactory$RequestBuilder.mCommonStatus;
        if (requestFactory$RequestBuilder instanceof RequestFactory$VideoSavingRequestBuilder) {
            RequestFactory$VideoSavingRequestBuilder requestFactory$VideoSavingRequestBuilder = (RequestFactory$VideoSavingRequestBuilder) requestFactory$RequestBuilder;
            VideoSavingRequest videoSavingRequest = new VideoSavingRequest(takenStatusCommon, requestFactory$VideoSavingRequestBuilder.mVideoStatus);
            videoSavingRequest.setOneShot(requestFactory$VideoSavingRequestBuilder.isOneShot());
            savingRequest = videoSavingRequest;
        } else {
            RequestFactory$PhotoSavingRequestBuilder requestFactory$PhotoSavingRequestBuilder = (RequestFactory$PhotoSavingRequestBuilder) requestFactory$RequestBuilder;
            PhotoSavingRequest photoSavingRequest = new PhotoSavingRequest(takenStatusCommon, requestFactory$PhotoSavingRequestBuilder.mPhotoStatus, RequestFactory$PhotoSavingRequestBuilder.access$000(requestFactory$PhotoSavingRequestBuilder));
            photoSavingRequest.attachImageReader(RequestFactory$PhotoSavingRequestBuilder.access$100(requestFactory$PhotoSavingRequestBuilder), RequestFactory$PhotoSavingRequestBuilder.access$200(requestFactory$PhotoSavingRequestBuilder));
            photoSavingRequest.setOneShot(requestFactory$PhotoSavingRequestBuilder.isOneShot());
            savingRequest = photoSavingRequest;
        }
        savingRequest.setFinalInSavingGroup(requestFactory$RequestBuilder.isFinalInSavingGroup());
        savingRequest.setStorageType(requestFactory$RequestBuilder.getStorageType());
        return savingRequest;
    }
}
