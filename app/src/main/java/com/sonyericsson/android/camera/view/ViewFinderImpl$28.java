package com.sonyericsson.android.camera.view;

import android.view.View;
import android.view.View$OnClickListener;
import com.sonyericsson.cameracommon.mediasaving.StoreDataResult;

class ViewFinderImpl$28 implements View$OnClickListener {
    final /* synthetic */ ViewFinderImpl this$0;
    final /* synthetic */ StoreDataResult val$result;

    ViewFinderImpl$28(ViewFinderImpl viewFinderImpl, StoreDataResult storeDataResult) {
        this.this$0 = viewFinderImpl;
        this.val$result = storeDataResult;
    }

    @Override // android.view.View$OnClickListener
    public void onClick(View view) {
        if (ViewFinderImpl.access$6600(this.this$0)) {
            return;
        }
        ViewFinderImpl.access$9600(this.this$0, this.val$result);
    }
}
