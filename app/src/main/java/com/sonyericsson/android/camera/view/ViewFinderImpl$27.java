package com.sonyericsson.android.camera.view;

import android.net.Uri;
import com.sonyericsson.android.camera.util.PerfLog;
import com.sonyericsson.android.camera.view.baselayout.BaseLayoutPattern;
import com.sonyericsson.cameracommon.mediasaving.StoreDataResult;
import com.sonyericsson.cameracommon.viewfinder.LayoutPattern;

class ViewFinderImpl$27 implements Runnable {
    final /* synthetic */ ViewFinderImpl this$0;
    final /* synthetic */ Uri val$originalUri;
    final /* synthetic */ int val$requestId;
    final /* synthetic */ StoreDataResult val$result;
    final /* synthetic */ boolean val$resultCode;

    ViewFinderImpl$27(ViewFinderImpl viewFinderImpl, StoreDataResult storeDataResult, int i, boolean z, Uri uri) {
        this.this$0 = viewFinderImpl;
        this.val$result = storeDataResult;
        this.val$requestId = i;
        this.val$resultCode = z;
        this.val$originalUri = uri;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (ViewFinderImpl.access$700(this.this$0).getContentsViewController() != null) {
            switch (ViewFinderImpl$32.$SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType[this.val$result.savingRequest.common.savedFileType.ordinal()]) {
                case 1:
                    if (this.val$result.savingRequest.isFinalInSavingGroup()) {
                        ViewFinderImpl.access$700(this.this$0).getContentsViewController().requestLastContentLoading(this.val$requestId);
                        return;
                    }
                    return;
                case 2:
                    LayoutPattern layoutPatternAccess$5800 = ViewFinderImpl.access$5800(this.this$0);
                    if (layoutPatternAccess$5800 == BaseLayoutPattern.RECORDING || layoutPatternAccess$5800 == BaseLayoutPattern.PAUSE_RECORDING) {
                        this.this$0.startHideThumbnail();
                    }
                    break;
            }
            if (this.val$requestId != -1) {
                if (this.val$resultCode) {
                    PerfLog.STORE_COMPLETE.transit();
                    ViewFinderImpl.access$700(this.this$0).getContentsViewController().addContent(this.val$requestId, this.val$originalUri);
                    PerfLog.THUMBNAIL_SHOW.transit();
                    return;
                } else {
                    ViewFinderImpl.access$700(this.this$0).getContentsViewController().pause();
                    ViewFinderImpl.access$700(this.this$0).getContentsViewController().reload();
                    return;
                }
            }
            ViewFinderImpl.access$700(this.this$0).getContentsViewController().remove();
            ViewFinderImpl.access$700(this.this$0).getContentsViewController().pause();
            ViewFinderImpl.access$700(this.this$0).getContentsViewController().reload();
        }
    }
}
