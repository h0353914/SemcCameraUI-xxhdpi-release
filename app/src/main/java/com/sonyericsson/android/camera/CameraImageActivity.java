package com.sonyericsson.android.camera;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public class CameraImageActivity extends Activity {
    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (isVoiceInteractionRoot()) {
            intent.setClass(this, InternalCameraActivity.class);
        } else {
            intent.setClass(this, CameraActivity.class);
        }
        intent.putExtra("is_voice_interaction_root", isVoiceInteractionRoot());
        startActivity(intent);
        overridePendingTransition(0, 0);
        finish();
    }
}
