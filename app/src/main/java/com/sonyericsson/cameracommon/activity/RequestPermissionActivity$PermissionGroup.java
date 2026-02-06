package com.sonyericsson.cameracommon.activity;

import android.support.annotation.NonNull;
import java.util.Arrays;
import java.util.List;

enum RequestPermissionActivity$PermissionGroup {
    CAMERA("android.permission-group.CAMERA", Arrays.asList("android.permission.CAMERA"), RequestPermissionActivity.access$000(), 2131690052),
    MIC("android.permission-group.MICROPHONE", Arrays.asList("android.permission.RECORD_AUDIO"), RequestPermissionActivity.access$000(), 2131690054),
    STORAGE("android.permission-group.STORAGE", Arrays.asList("android.permission.READ_MEDIA_IMAGES", "android.permission.READ_MEDIA_VIDEO"), RequestPermissionActivity.access$000(), 2131690055),
    LOCATION("android.permission-group.LOCATION", Arrays.asList("android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION"), 2131690053, 2131690053);

    private String mPermissionGroupName;
    private List<String> mPermissionList;
    private int mPostDialogMessageId;
    private int mPreDialogMessageId;

    RequestPermissionActivity$PermissionGroup(String str, @NonNull List list, int i, int i2) {
        this.mPermissionGroupName = str;
        this.mPermissionList = list;
        this.mPreDialogMessageId = i;
        this.mPostDialogMessageId = i2;
    }

    public String getGroupName() {
        return this.mPermissionGroupName;
    }

    public List<String> getPermissionList() {
        return this.mPermissionList;
    }

    public boolean contains(String str) {
        return this.mPermissionList.contains(str);
    }

    public int getPreDialogMessageId() {
        return this.mPreDialogMessageId;
    }

    public int getPostDialogMessageId() {
        return this.mPostDialogMessageId;
    }
}
