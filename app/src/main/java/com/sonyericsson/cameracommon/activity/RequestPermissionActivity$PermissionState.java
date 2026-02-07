package com.sonyericsson.cameracommon.activity;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class RequestPermissionActivity$PermissionState {
    private final RequestPermissionActivity$PermissionCategory mCategory;
    private final List<RequestPermissionActivity$PermissionGroup> mRequestGroupList;
    private boolean mRequested = false;
    final /* synthetic */ RequestPermissionActivity this$0;

    RequestPermissionActivity$PermissionState(RequestPermissionActivity requestPermissionActivity, RequestPermissionActivity$PermissionCategory requestPermissionActivity$PermissionCategory, List<RequestPermissionActivity$PermissionGroup> list) {
        this.this$0 = requestPermissionActivity;
        this.mCategory = requestPermissionActivity$PermissionCategory;
        this.mRequestGroupList = list;
    }

    public RequestPermissionActivity$PermissionCategory getCategory() {
        return this.mCategory;
    }

    public List<RequestPermissionActivity$PermissionGroup> getRequestGroupList() {
        return this.mRequestGroupList;
    }

    public boolean isRequested() {
        return this.mRequested;
    }

    public void setRequested() {
        this.mRequested = true;
    }

    public String[] getRequestPermissionList() {
        ArrayList arrayList = new ArrayList();
        if (this.mRequestGroupList != null) {
            Iterator<RequestPermissionActivity$PermissionGroup> it = this.mRequestGroupList.iterator();
            while (it.hasNext()) {
                Iterator<String> it2 = it.next().getPermissionList().iterator();
                while (it2.hasNext()) {
                    arrayList.add(it2.next());
                }
            }
            return (String[]) arrayList.toArray(new String[0]);
        }
        return new String[0];
    }

    public boolean areAllPermissionsGranted() {
        for (String str : getRequestPermissionList()) {
            if (this.this$0.checkSelfPermission(str) != 0) {
                return false;
            }
        }
        return true;
    }

    public String toString() {
        return this.mCategory.name() + ": Group num=" + this.mRequestGroupList.size() + ", requested=" + this.mRequested;
    }
}
