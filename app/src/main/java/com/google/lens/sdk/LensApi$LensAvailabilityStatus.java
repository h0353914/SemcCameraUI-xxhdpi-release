package com.google.lens.sdk;

public @interface LensApi$LensAvailabilityStatus {
    public static final int LENS_READY = 0;
    public static final int LENS_UNAVAILABLE = 1;
    public static final int LENS_UNAVAILABLE_DEVICE_INCOMPATIBLE = 3;
    public static final int LENS_UNAVAILABLE_DEVICE_LOCKED = 5;
    public static final int LENS_UNAVAILABLE_LOCALE_NOT_SUPPORTED = 2;
    public static final int LENS_UNAVAILABLE_UNKNOWN_ERROR_CODE = 6;
}
