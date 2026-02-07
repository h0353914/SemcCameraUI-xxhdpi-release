package com.google.android.apps.lens.library.base;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager$NameNotFoundException;
import android.os.Build$VERSION;
import android.support.annotation.NonNull;
import android.support.annotation.VisibleForTesting;
import android.util.Log;
import com.google.android.apps.lens.library.base.proto.nano.LensSdkParamsProto$LensSdkParams;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class LensSdkParamsReader {
    public static final String AGSA_AUTHORITY = "com.google.android.googlequicksearchbox.GsaPublicContentProvider";
    public static final String LENS_AR_STICKERS_ACTIVITY = "com.google.vr.apps.ornament.app.MainActivity";
    public static final String LENS_AR_STICKERS_PACKAGE = "com.google.ar.lens";
    private static final String LENS_SDK_VERSION = "0.1.0";
    private static final int MIN_AR_CORE_VERSION = 24;
    private static final String TAG = "LensSdkParamsReader";
    private final List<LensSdkParamsReader$LensSdkParamsCallback> callbacks;
    private final Context context;
    private LensSdkParamsProto$LensSdkParams lensSdkParams;
    private boolean lensSdkParamsReady;
    private final PackageManager packageManager;
    public static final String LENS_AVAILABILITY_PROVIDER_URI = String.format("content://%s/publicvalue/lens_oem_availability", "com.google.android.googlequicksearchbox.GsaPublicContentProvider");
    private static final LensSdkParamsProto$LensSdkParams DEFAULT_PARAMS = new LensSdkParamsProto$LensSdkParams();

    static /* synthetic */ Context access$100(LensSdkParamsReader lensSdkParamsReader) {
        return lensSdkParamsReader.context;
    }

    static /* synthetic */ LensSdkParamsProto$LensSdkParams access$200(LensSdkParamsReader lensSdkParamsReader) {
        return lensSdkParamsReader.lensSdkParams;
    }

    static /* synthetic */ boolean access$302(LensSdkParamsReader lensSdkParamsReader, boolean z) {
        lensSdkParamsReader.lensSdkParamsReady = z;
        return z;
    }

    static /* synthetic */ List access$400(LensSdkParamsReader lensSdkParamsReader) {
        return lensSdkParamsReader.callbacks;
    }

    static {
        DEFAULT_PARAMS.lensSdkVersion = "0.1.0";
        DEFAULT_PARAMS.agsaVersionName = "";
        DEFAULT_PARAMS.lensAvailabilityStatus = -1;
        DEFAULT_PARAMS.arStickersAvailabilityStatus = -1;
    }

    public LensSdkParamsReader(@NonNull Context context) {
        this(context, context.getPackageManager());
    }

    @VisibleForTesting
    LensSdkParamsReader(@NonNull Context context, @NonNull PackageManager packageManager) {
        this.callbacks = new ArrayList();
        this.context = context;
        this.packageManager = packageManager;
        updateParams();
    }

    public String getLensSdkVersion() {
        return this.lensSdkParams.lensSdkVersion;
    }

    public String getAgsaVersionName() {
        return this.lensSdkParams.agsaVersionName;
    }

    public int getArStickersAvailability() {
        return this.lensSdkParams.arStickersAvailabilityStatus;
    }

    public void getParams(@NonNull LensSdkParamsReader$LensSdkParamsCallback callback) {
        if (this.lensSdkParamsReady) {
            callback.onLensSdkParamsAvailable(this.lensSdkParams);
        } else {
            this.callbacks.add(callback);
        }
    }

    private void updateParams() {
        this.lensSdkParamsReady = false;
        this.lensSdkParams = DEFAULT_PARAMS.clone();
        try {
            PackageInfo packageInfo = this.packageManager.getPackageInfo("com.google.android.googlequicksearchbox", 0);
            if (packageInfo != null) {
                this.lensSdkParams.agsaVersionName = packageInfo.versionName;
            }
        } catch (PackageManager$NameNotFoundException unused) {
            Log.e("LensSdkParamsReader", "Unable to find agsa package: com.google.android.googlequicksearchbox");
        }
        this.lensSdkParams.arStickersAvailabilityStatus = 1;
        if (Build$VERSION.SDK_INT >= 24) {
            Intent intent = new Intent();
            intent.setClassName("com.google.ar.lens", "com.google.vr.apps.ornament.app.MainActivity");
            if (this.packageManager.resolveActivity(intent, 0) != null) {
                this.lensSdkParams.arStickersAvailabilityStatus = 0;
            }
        }
        new LensSdkParamsReader$QueryGsaTask(this, null).execute(new Void[0]);
    }
}
