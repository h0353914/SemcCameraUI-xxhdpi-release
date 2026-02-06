package com.sonyericsson.android.camera.view;

import com.sonyericsson.android.camera.controller.StateMachine$TransitterEvent;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.cameracommon.contentsview.ContentsViewController$OnClickThumbnailProgressListener;

class ViewFinderImpl$OnClickThumbnailProgressListenerImpl implements ContentsViewController$OnClickThumbnailProgressListener {
    final /* synthetic */ ViewFinderImpl this$0;

    private ViewFinderImpl$OnClickThumbnailProgressListenerImpl(ViewFinderImpl viewFinderImpl) {
        this.this$0 = viewFinderImpl;
    }

    /* synthetic */ ViewFinderImpl$OnClickThumbnailProgressListenerImpl(ViewFinderImpl viewFinderImpl, ViewFinderImpl$1 viewFinderImpl$1) {
        this(viewFinderImpl);
    }

    @Override // com.sonyericsson.cameracommon.contentsview.ContentsViewController$OnClickThumbnailProgressListener
    public void onClickThumbnailProgress() {
        if (CamLog.VERBOSE) {
            CamLog.d("onClickThumbnailProgress");
        }
        ViewFinderImpl.access$1000(this.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_TOUCH_CONTENT_PROGRESS, new Object[0]);
    }
}
