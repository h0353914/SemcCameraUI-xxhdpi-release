package com.sonyericsson.cameracommon.contentsview;

import android.view.View;
import android.view.View$OnClickListener;
import com.sonyericsson.android.camera.util.CamLog;

class ContentsViewController$ClickListener implements View$OnClickListener {
    final /* synthetic */ ContentsViewController this$0;

    private ContentsViewController$ClickListener(ContentsViewController contentsViewController) {
        this.this$0 = contentsViewController;
    }

    /* synthetic */ ContentsViewController$ClickListener(ContentsViewController contentsViewController, ContentsViewController$1 contentsViewController$1) {
        this(contentsViewController);
    }

    @Override // android.view.View$OnClickListener
    public void onClick(View view) {
        if (CamLog.VERBOSE) {
            CamLog.d("onClick: " + view);
        }
        if (ContentsViewController.access$100(this.this$0) == null || view == null || view.getId() != 2131296367) {
            return;
        }
        ContentsViewController.access$100(this.this$0).onClickThumbnailProgress();
    }
}
