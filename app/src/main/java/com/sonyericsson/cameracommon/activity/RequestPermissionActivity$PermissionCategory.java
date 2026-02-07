package com.sonyericsson.cameracommon.activity;

import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
enum RequestPermissionActivity$PermissionCategory {
    MANDATORY(Arrays.asList(RequestPermissionActivity$PermissionGroup.CAMERA, RequestPermissionActivity$PermissionGroup.MIC, RequestPermissionActivity$PermissionGroup.STORAGE), RequestPermissionActivity.access$100()),
    OPTIONAL(Arrays.asList(RequestPermissionActivity$PermissionGroup.LOCATION), RequestPermissionActivity.access$100() + 1);

    private List<RequestPermissionActivity$PermissionGroup> mGroupList;
    private int mPriority;

    RequestPermissionActivity$PermissionCategory(List list, int i) {
        this.mGroupList = list;
        this.mPriority = i;
    }

    public List<RequestPermissionActivity$PermissionGroup> getGroupList() {
        return this.mGroupList;
    }

    public int getPriority() {
        return this.mPriority;
    }
}
