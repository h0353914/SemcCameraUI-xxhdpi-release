package com.sonyericsson.android.camera;

import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;
import android.content.Intent;
import android.net.Uri;
import com.sonyericsson.android.camera.util.CamLog;

/* JADX INFO: loaded from: classes.dex */
class SetupWizardActivity$8 implements DialogInterface$OnClickListener {
    final /* synthetic */ SetupWizardActivity this$0;

    SetupWizardActivity$8(SetupWizardActivity setupWizardActivity) {
        this.this$0 = setupWizardActivity;
    }

    @Override // android.content.DialogInterface$OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        if (SetupWizardActivity.access$1700(this.this$0) && !SetupWizardActivity.access$1800(this.this$0)) {
            SetupWizardActivity.access$1900(this.this$0);
        }
        try {
            this.this$0.startActivity(new Intent("android.settings.APPLICATION_DETAILS_SETTINGS", Uri.parse("package:" + this.this$0.getPackageName())));
        } catch (ActivityNotFoundException e) {
            CamLog.e("showOptionalRuntimePermissionDialog() launchApplicationSettings: failed.", e);
        }
        SetupWizardActivity.access$1302(this.this$0, null);
    }
}
