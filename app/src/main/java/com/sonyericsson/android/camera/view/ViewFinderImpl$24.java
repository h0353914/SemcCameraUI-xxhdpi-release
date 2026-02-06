package com.sonyericsson.android.camera.view;

import android.content.Intent;
import android.os.Bundle;

class ViewFinderImpl$24 implements Runnable {
    final /* synthetic */ ViewFinderImpl this$0;
    final /* synthetic */ Intent val$intent;
    final /* synthetic */ Bundle val$options;

    ViewFinderImpl$24(ViewFinderImpl viewFinderImpl, Intent intent, Bundle bundle) {
        this.this$0 = viewFinderImpl;
        this.val$intent = intent;
        this.val$options = bundle;
    }

    @Override // java.lang.Runnable
    public void run() {
        ViewFinderImpl.access$1400(this.this$0, this.val$intent, this.val$options);
        ViewFinderImpl.access$500(this.this$0).abort();
    }
}
