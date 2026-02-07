package android.support.v4.app;

import android.app.Activity;
import android.content.pm.PackageManager;

/* JADX INFO: loaded from: classes.dex */
class ActivityCompat$1 implements Runnable {
    final /* synthetic */ Activity val$activity;
    final /* synthetic */ String[] val$permissions;
    final /* synthetic */ int val$requestCode;

    ActivityCompat$1(String[] strArr, Activity activity, int i) {
        this.val$permissions = strArr;
        this.val$activity = activity;
        this.val$requestCode = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        int[] iArr = new int[this.val$permissions.length];
        PackageManager packageManager = this.val$activity.getPackageManager();
        String packageName = this.val$activity.getPackageName();
        int length = this.val$permissions.length;
        for (int i = 0; i < length; i++) {
            iArr[i] = packageManager.checkPermission(this.val$permissions[i], packageName);
        }
        ((ActivityCompat$OnRequestPermissionsResultCallback) this.val$activity).onRequestPermissionsResult(this.val$requestCode, this.val$permissions, iArr);
    }
}
