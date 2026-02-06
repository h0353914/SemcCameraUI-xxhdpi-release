package com.sonyericsson.android.camera;

import android.content.Intent;
import com.sonyericsson.cameracommon.activity.OnActivityResultListener;
import com.sonyericsson.cameracommon.utility.PermissionsUtil;

class MultiWindowActivity$1 implements OnActivityResultListener {
    final /* synthetic */ MultiWindowActivity this$0;
    final /* synthetic */ String[] val$permissions;

    MultiWindowActivity$1(MultiWindowActivity multiWindowActivity, String[] strArr) {
        this.this$0 = multiWindowActivity;
        this.val$permissions = strArr;
    }

    @Override // com.sonyericsson.cameracommon.activity.OnActivityResultListener
    public boolean onActivityResult(int i, int i2, Intent intent) {
        if (i != 12 || i2 != -1) {
            return true;
        }
        MultiWindowActivity.access$002(this.this$0, PermissionsUtil.arePermissionsGranted(this.this$0, this.val$permissions));
        if (MultiWindowActivity.access$000(this.this$0)) {
            return true;
        }
        this.this$0.finish();
        return true;
    }
}
