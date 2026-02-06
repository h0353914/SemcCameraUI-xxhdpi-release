package com.google.lens.sdk;

import android.app.Activity;
import android.app.KeyguardManager;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build$VERSION;
import android.support.annotation.VisibleForTesting;
import android.util.Log;
import com.google.android.apps.lens.library.base.LensSdkParamsReader;
import com.google.android.apps.lens.library.base.LensServiceBridge;

public class LensApi {

    @VisibleForTesting
    static final String LENS_BITMAP_URI_KEY = "LensBitmapUriKey";

    @VisibleForTesting
    static final String LENS_DEEPLINKING_STRING = "googleapp://lens";

    @VisibleForTesting
    static final Uri LENS_DEEPLINKING_URI = Uri.parse("googleapp://lens");
    private static final String TAG = "LensApi";
    private final Context context;
    private final LensSdkParamsReader paramsReader;
    private final LensServiceBridge serviceBridge;

    static /* synthetic */ int access$000(int i) {
        return mapInternalLensAvailabilityToExternal(i);
    }

    static /* synthetic */ void access$100(LensApi lensApi, Activity activity) {
        lensApi.startLensActivity(activity);
    }

    public LensApi(Context context) {
        this.context = context;
        this.paramsReader = new LensSdkParamsReader(context);
        this.serviceBridge = new LensServiceBridge(context);
    }

    public void onResume() {
        this.serviceBridge.bindService();
    }

    public void onPause() {
        this.serviceBridge.unbindService();
    }

    public void launchLensActivity(Activity activity) {
        KeyguardManager keyguardManager = (KeyguardManager) activity.getSystemService("keyguard");
        if (keyguardManager.isKeyguardLocked()) {
            if (Build$VERSION.SDK_INT >= 26) {
                keyguardManager.requestDismissKeyguard(activity, new LensApi$1(this, activity));
                return;
            }
            int i = Build$VERSION.SDK_INT;
            StringBuilder sb = new StringBuilder(64);
            sb.append("Cannot start Lens when device is locked with Android ");
            sb.append(i);
            Log.e("LensApi", sb.toString());
            return;
        }
        startLensActivity(activity);
    }

    public void launchLensActivity(Activity activity, @LensApi$LensFeature int feature) {
        switch (feature) {
            case 0:
                launchLensActivity(activity);
                break;
            case 1:
                if (this.paramsReader.getArStickersAvailability() == 0) {
                    Intent intent = new Intent();
                    intent.setClassName("com.google.ar.lens", "com.google.vr.apps.ornament.app.MainActivity");
                    activity.startActivity(intent);
                }
                break;
            default:
                StringBuilder sb = new StringBuilder(34);
                sb.append("Invalid lens activity: ");
                sb.append(feature);
                Log.w("LensApi", sb.toString());
                break;
        }
    }

    private void startLensActivity(Activity activity) {
        if (this.serviceBridge.prewarmLensActivity()) {
            Log.i("LensApi", "Lens is pre-warmed.");
        }
        Intent intent = new Intent();
        intent.setAction("android.intent.action.VIEW");
        intent.setData(Uri.parse("googleapp://lens"));
        activity.startActivityForResult(intent, 0);
    }

    public void launchLensActivityWithBitmapUri(Activity activity, Uri bitmapUri) {
        if (bitmapUri == null) {
            Log.e("LensApi", "Image URI is null!");
            return;
        }
        Intent intent = new Intent();
        intent.setAction("android.intent.action.VIEW");
        intent.setData(appendBitmapUri(LENS_DEEPLINKING_URI, bitmapUri));
        activity.startActivityForResult(intent, 0);
    }

    public void checkLensAvailability(LensApi$LensAvailabilityCallback callback) {
        if (((KeyguardManager) this.context.getSystemService("keyguard")).isKeyguardLocked() && Build$VERSION.SDK_INT < 26) {
            callback.onAvailabilityStatusFetched(5);
        } else {
            this.paramsReader.getParams(new LensApi$LensSdkParamsCallback(callback));
        }
    }

    public void checkArStickersAvailability(LensApi$LensAvailabilityCallback callback) {
        callback.onAvailabilityStatusFetched(mapInternalLensAvailabilityToExternal(this.paramsReader.getArStickersAvailability()));
    }

    private Uri appendBitmapUri(Uri baseUri, Uri bitmapUri) {
        return (baseUri == null || bitmapUri == null) ? baseUri : baseUri.buildUpon().appendQueryParameter("LensBitmapUriKey", bitmapUri.toString()).build();
    }

    @LensApi$LensAvailabilityStatus
    private static int mapInternalLensAvailabilityToExternal(int internalLensAvailabilityStatus) {
        switch (internalLensAvailabilityStatus) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 5:
            case 6:
                return internalLensAvailabilityStatus;
            case 4:
            default:
                StringBuilder sb = new StringBuilder(32);
                sb.append("Internal error code: ");
                sb.append(internalLensAvailabilityStatus);
                Log.d("LensApi", sb.toString());
                return 1;
        }
    }
}
