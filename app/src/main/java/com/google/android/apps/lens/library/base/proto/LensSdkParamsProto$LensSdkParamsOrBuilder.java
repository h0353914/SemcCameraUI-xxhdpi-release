package com.google.android.apps.lens.library.base.proto;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageLiteOrBuilder;

/* JADX INFO: loaded from: classes.dex */
public interface LensSdkParamsProto$LensSdkParamsOrBuilder extends MessageLiteOrBuilder {
    String getAgsaVersionName();

    ByteString getAgsaVersionNameBytes();

    LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus getArStickersAvailabilityStatus();

    LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus getLensAvailabilityStatus();

    String getLensSdkVersion();

    ByteString getLensSdkVersionBytes();

    boolean hasAgsaVersionName();

    boolean hasArStickersAvailabilityStatus();

    boolean hasLensAvailabilityStatus();

    boolean hasLensSdkVersion();
}
