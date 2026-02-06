package com.sonyericsson.android.camera.view.modeselector.internalmode.googlelens;

import com.google.lens.sdk.LensApi;

class GoogleLensMode$1 implements Runnable {
    final /* synthetic */ GoogleLensMode this$0;

    GoogleLensMode$1(GoogleLensMode googleLensMode) {
        this.this$0 = googleLensMode;
    }

    @Override // java.lang.Runnable
    public void run() {
        new LensApi(GoogleLensMode.access$000(this.this$0)).checkLensAvailability(new GoogleLensMode$1$1(this));
    }
}
