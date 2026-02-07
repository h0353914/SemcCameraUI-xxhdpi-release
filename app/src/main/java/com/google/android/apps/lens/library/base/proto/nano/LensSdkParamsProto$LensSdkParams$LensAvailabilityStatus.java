package com.google.android.apps.lens.library.base.proto.nano;

import com.google.protobuf.nano.NanoEnumValue;

/* JADX INFO: loaded from: classes.dex */
public interface LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus {

    @NanoEnumValue(legacy = false, value = LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus.class)
    public static final int LENS_AVAILABILITY_UNKNOWN = -1;

    @NanoEnumValue(legacy = false, value = LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus.class)
    public static final int LENS_READY = 0;

    @NanoEnumValue(legacy = false, value = LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus.class)
    public static final int LENS_UNAVAILABLE = 1;

    @NanoEnumValue(legacy = false, value = LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus.class)
    public static final int LENS_UNAVAILABLE_DEVICE_INCOMPATIBLE = 3;

    @NanoEnumValue(legacy = false, value = LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus.class)
    public static final int LENS_UNAVAILABLE_DEVICE_LOCKED = 5;

    @NanoEnumValue(legacy = false, value = LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus.class)
    public static final int LENS_UNAVAILABLE_INVALID_CURSOR = 4;

    @NanoEnumValue(legacy = false, value = LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus.class)
    public static final int LENS_UNAVAILABLE_LOCALE_NOT_SUPPORTED = 2;

    @NanoEnumValue(legacy = false, value = LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus.class)
    public static final int LENS_UNAVAILABLE_UNKNOWN_ERROR_CODE = 6;
}
