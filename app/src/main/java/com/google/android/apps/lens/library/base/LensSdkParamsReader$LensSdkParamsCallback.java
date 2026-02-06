package com.google.android.apps.lens.library.base;

import com.google.android.apps.lens.library.base.proto.nano.LensSdkParamsProto$LensSdkParams;

public interface LensSdkParamsReader$LensSdkParamsCallback {
    void onLensSdkParamsAvailable(LensSdkParamsProto$LensSdkParams params);
}
