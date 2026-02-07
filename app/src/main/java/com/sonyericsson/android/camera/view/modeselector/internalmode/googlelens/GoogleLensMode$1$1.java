package com.sonyericsson.android.camera.view.modeselector.internalmode.googlelens;

import com.google.lens.sdk.LensApi$LensAvailabilityCallback;
import com.google.lens.sdk.LensApi$LensAvailabilityStatus;
import com.sonyericsson.android.camera.util.CamLog;

/* JADX INFO: loaded from: classes.dex */
class GoogleLensMode$1$1 implements LensApi$LensAvailabilityCallback {
    final /* synthetic */ GoogleLensMode$1 this$1;

    GoogleLensMode$1$1(GoogleLensMode$1 googleLensMode$1) {
        this.this$1 = googleLensMode$1;
    }

    @Override // com.google.lens.sdk.LensApi$LensAvailabilityCallback
    public void onAvailabilityStatusFetched(@LensApi$LensAvailabilityStatus int i) {
        boolean z;
        boolean zAccess$100 = GoogleLensMode.access$100(this.this$1.this$0);
        if (i == 0) {
            z = true;
        } else {
            if (CamLog.VERBOSE) {
                CamLog.d("lens_availability: false");
            }
            z = false;
        }
        GoogleLensMode.access$202(this.this$1.this$0, new boolean[]{z});
        if (zAccess$100 != z) {
            GoogleLensMode.access$300(this.this$1.this$0, z);
            if (GoogleLensMode.access$400(this.this$1.this$0) != null) {
                GoogleLensMode.access$500(this.this$1.this$0).onAvailabilityChanged(this.this$1.this$0, z);
            }
        }
    }
}
