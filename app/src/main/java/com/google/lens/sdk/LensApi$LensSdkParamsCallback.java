package com.google.lens.sdk;

import android.support.annotation.NonNull;
import com.google.android.apps.lens.library.base.LensSdkParamsReader$LensSdkParamsCallback;
import com.google.android.apps.lens.library.base.proto.nano.LensSdkParamsProto$LensSdkParams;

/* JADX INFO: loaded from: classes.dex */
final class LensApi$LensSdkParamsCallback implements LensSdkParamsReader$LensSdkParamsCallback {
    private final LensApi$LensAvailabilityCallback lensAvailabilityCallback;

    LensApi$LensSdkParamsCallback(@NonNull LensApi$LensAvailabilityCallback callback) {
        this.lensAvailabilityCallback = callback;
    }

    @Override // com.google.android.apps.lens.library.base.LensSdkParamsReader$LensSdkParamsCallback
    public void onLensSdkParamsAvailable(LensSdkParamsProto$LensSdkParams params) {
        this.lensAvailabilityCallback.onAvailabilityStatusFetched(LensApi.access$000(params.lensAvailabilityStatus));
    }
}
