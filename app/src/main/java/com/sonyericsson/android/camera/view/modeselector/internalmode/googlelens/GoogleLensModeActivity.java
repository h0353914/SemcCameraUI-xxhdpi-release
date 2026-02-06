package com.sonyericsson.android.camera.view.modeselector.internalmode.googlelens;

import android.app.Activity;
import android.app.KeyguardManager;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.widget.Toast;
import com.google.lens.sdk.LensApi;
import com.sonyericsson.android.camera.util.CamLog;

public class GoogleLensModeActivity extends Activity {
    private static final long START_TIMEOUT_MILLIS = 5000;
    private Handler mHandler;
    private LensApi mLensApi;
    private GoogleLensModeActivity$State mState = GoogleLensModeActivity$State.READY;
    private final Runnable mStartTimeoutTask = new GoogleLensModeActivity$1(this);

    static /* synthetic */ void access$000(GoogleLensModeActivity googleLensModeActivity) {
        googleLensModeActivity.showErrorToast();
    }

    static /* synthetic */ boolean access$200(GoogleLensModeActivity googleLensModeActivity) {
        return googleLensModeActivity.startGoogleLensActivity();
    }

    static /* synthetic */ void access$300(GoogleLensModeActivity googleLensModeActivity, GoogleLensModeActivity$State googleLensModeActivity$State) {
        googleLensModeActivity.changeTo(googleLensModeActivity$State);
    }

    private void changeTo(GoogleLensModeActivity$State googleLensModeActivity$State) {
        if (CamLog.DEBUG) {
            CamLog.d("prev:" + this.mState.name() + " next:" + googleLensModeActivity$State.name());
        }
        this.mState = googleLensModeActivity$State;
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        if (CamLog.DEBUG) {
            CamLog.d("onCreate() : E");
        }
        super.onCreate(bundle);
        getWindow().addFlags(524288);
        this.mLensApi = new LensApi(this);
        this.mHandler = new Handler();
        changeTo(GoogleLensModeActivity$State.READY);
        if (CamLog.DEBUG) {
            CamLog.d("onCreate() : X");
        }
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        if (CamLog.DEBUG) {
            CamLog.d("onNewIntent() : E state:" + this.mState.name());
        }
        super.onNewIntent(intent);
        changeTo(GoogleLensModeActivity$State.READY);
        if (CamLog.DEBUG) {
            CamLog.d("onNewIntent() : X");
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        if (CamLog.DEBUG) {
            CamLog.d("onResume() : E state:" + this.mState.name());
        }
        super.onResume();
        this.mLensApi.onResume();
        switch (this.mState) {
            case READY:
                KeyguardManager keyguardManager = (KeyguardManager) getSystemService(KeyguardManager.class);
                if (keyguardManager.isDeviceLocked()) {
                    changeTo(GoogleLensModeActivity$State.KEYGUARD);
                    keyguardManager.requestDismissKeyguard(this, new GoogleLensModeActivity$KeyguardDismissCallbackImpl(this, null));
                } else if (startGoogleLensActivity()) {
                    changeTo(GoogleLensModeActivity$State.DONE);
                } else {
                    changeTo(GoogleLensModeActivity$State.READY);
                    finish();
                }
                break;
            case DONE:
                finish();
                break;
        }
        if (CamLog.DEBUG) {
            CamLog.d("onResume() : X");
        }
    }

    @Override // android.app.Activity
    protected void onPause() {
        if (CamLog.DEBUG) {
            CamLog.d("onPause() : E state:" + this.mState.name());
        }
        if (this.mState == GoogleLensModeActivity$State.DONE) {
            this.mHandler.removeCallbacks(this.mStartTimeoutTask);
        }
        super.onPause();
        this.mLensApi.onPause();
        if (CamLog.DEBUG) {
            CamLog.d("onPause() : X");
        }
    }

    private boolean startGoogleLensActivity() {
        try {
            if (CamLog.DEBUG) {
                CamLog.d("Launch Lens activity");
            }
            this.mLensApi.launchLensActivity(this);
            this.mHandler.postDelayed(this.mStartTimeoutTask, 5000L);
            return true;
        } catch (Exception unused) {
            CamLog.e("Fail to launch Lens activity.");
            showErrorToast();
            return false;
        }
    }

    private void showErrorToast() {
        Toast.makeText(this, getString(2131689698, new Object[]{getString(2131689674)}), 0).show();
    }
}
