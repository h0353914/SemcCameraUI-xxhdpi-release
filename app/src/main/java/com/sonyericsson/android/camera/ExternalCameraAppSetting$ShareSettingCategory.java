package com.sonyericsson.android.camera;

/* JADX INFO: loaded from: classes.dex */
public enum ExternalCameraAppSetting$ShareSettingCategory {
    PHOTO,
    VIDEO,
    COMMON;

    public boolean isAccepted(ExternalCameraAppSetting$ShareSettingCategory externalCameraAppSetting$ShareSettingCategory) {
        switch (this) {
            case PHOTO:
            case VIDEO:
                return this == externalCameraAppSetting$ShareSettingCategory;
            case COMMON:
                return true;
            default:
                return false;
        }
    }
}
