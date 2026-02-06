package com.google.android.apps.lens.library.base.proto;

import com.google.protobuf.Internal$EnumLite;
import com.google.protobuf.Internal$EnumLiteMap;

public enum LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus implements Internal$EnumLite {
    LENS_AVAILABILITY_UNKNOWN(-1),
    LENS_READY(0),
    LENS_UNAVAILABLE(1),
    LENS_UNAVAILABLE_LOCALE_NOT_SUPPORTED(2),
    LENS_UNAVAILABLE_DEVICE_INCOMPATIBLE(3),
    LENS_UNAVAILABLE_INVALID_CURSOR(4),
    LENS_UNAVAILABLE_DEVICE_LOCKED(5),
    LENS_UNAVAILABLE_UNKNOWN_ERROR_CODE(6);

    public static final int LENS_AVAILABILITY_UNKNOWN_VALUE = -1;
    public static final int LENS_READY_VALUE = 0;
    public static final int LENS_UNAVAILABLE_DEVICE_INCOMPATIBLE_VALUE = 3;
    public static final int LENS_UNAVAILABLE_DEVICE_LOCKED_VALUE = 5;
    public static final int LENS_UNAVAILABLE_INVALID_CURSOR_VALUE = 4;
    public static final int LENS_UNAVAILABLE_LOCALE_NOT_SUPPORTED_VALUE = 2;
    public static final int LENS_UNAVAILABLE_UNKNOWN_ERROR_CODE_VALUE = 6;
    public static final int LENS_UNAVAILABLE_VALUE = 1;
    private static final Internal$EnumLiteMap<LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus> internalValueMap = new LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus$1();
    private final int value;

    public final int getNumber() {
        return this.value;
    }

    public static LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus forNumber(int value) {
        switch (value) {
            case -1:
                return LENS_AVAILABILITY_UNKNOWN;
            case 0:
                return LENS_READY;
            case 1:
                return LENS_UNAVAILABLE;
            case 2:
                return LENS_UNAVAILABLE_LOCALE_NOT_SUPPORTED;
            case 3:
                return LENS_UNAVAILABLE_DEVICE_INCOMPATIBLE;
            case 4:
                return LENS_UNAVAILABLE_INVALID_CURSOR;
            case 5:
                return LENS_UNAVAILABLE_DEVICE_LOCKED;
            case 6:
                return LENS_UNAVAILABLE_UNKNOWN_ERROR_CODE;
            default:
                return null;
        }
    }

    public static Internal$EnumLiteMap<LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus> internalGetValueMap() {
        return internalValueMap;
    }

    LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus(int value) {
        this.value = value;
    }
}
