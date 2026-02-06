package com.sonyericsson.android.camera.view;

import com.sonyericsson.cameracommon.contentsview.ContentPallet$ThumbnailStateListener;
import com.sonyericsson.cameracommon.contentsview.contents.Content;
import com.sonyericsson.cameracommon.contentsview.contents.Content$ContentInfo;
import com.sonyericsson.cameracommon.contentsview.contents.Content$ContentsType;

class ViewFinderImpl$21 implements ContentPallet$ThumbnailStateListener {
    final /* synthetic */ ViewFinderImpl this$0;

    ViewFinderImpl$21(ViewFinderImpl viewFinderImpl) {
        this.this$0 = viewFinderImpl;
    }

    @Override // com.sonyericsson.cameracommon.contentsview.ContentPallet$ThumbnailStateListener
    public void onThumbnailClicked(Content content) {
        if (ViewFinderImpl.access$6600(this.this$0) || content == null) {
            return;
        }
        Content$ContentInfo contentInfo = content.getContentInfo();
        ViewFinderImpl.access$6700(this.this$0, contentInfo.mOriginalUri, contentInfo.mMimeType, contentInfo.mWidth, contentInfo.mHeight, contentInfo.mOrientation, content.isMediaDataVerified());
    }

    @Override // com.sonyericsson.cameracommon.contentsview.ContentPallet$ThumbnailStateListener
    public void onThumbnailCreated(Content content) {
        if (ViewFinderImpl.access$2200(this.this$0).getRemainSavingPhotoRequestCount() == 0 || content.getContentInfo().mContentType == Content$ContentsType.PREDICTIVE_CAPTURE) {
            if (ViewFinderImpl.access$6800(this.this$0) != null) {
                ViewFinderImpl.access$6800(this.this$0).prepareBitmap(content.getContentInfo().mOriginalUri);
            }
            if (content.getContentInfo().mContentType != Content$ContentsType.PREDICTIVE_CAPTURE || ViewFinderImpl.access$1000(this.this$0).getPredictiveCaptureStoreInfo() == null) {
                return;
            }
            content.getContentInfo().mPredictiveNum = ViewFinderImpl.access$1000(this.this$0).getPredictiveCaptureStoreInfo().getCaptureNum();
        }
    }
}
