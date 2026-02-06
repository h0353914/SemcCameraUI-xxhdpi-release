package com.sonyericsson.cameracommon.contentsview;

import android.view.View;
import android.view.View$OnClickListener;

class ContentPallet$ClickListener implements View$OnClickListener {
    final /* synthetic */ ContentPallet this$0;

    private ContentPallet$ClickListener(ContentPallet contentPallet) {
        this.this$0 = contentPallet;
    }

    /* synthetic */ ContentPallet$ClickListener(ContentPallet contentPallet, ContentPallet$1 contentPallet$1) {
        this(contentPallet);
    }

    @Override // android.view.View$OnClickListener
    public void onClick(View view) {
        if (System.currentTimeMillis() - ContentPallet.access$100(this.this$0) <= 3000 || ContentPallet.access$200(this.this$0) == null || ContentPallet.access$300(this.this$0) == null) {
            return;
        }
        ContentPallet.access$300(this.this$0).onThumbnailClicked(ContentPallet.access$200(this.this$0));
    }
}
