package com.sonyericsson.android.camera.view.modeselector.internalmode.googlelens;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.NonNull;
import com.sonyericsson.android.camera.setting.SharedPreferencesAccessor;
import com.sonyericsson.android.camera.view.modeselector.AddonMode;
import com.sonyericsson.android.camera.view.modeselector.CapturingModeAttributes;
import com.sonyericsson.android.camera.view.modeselector.Mode$OnStateChangeListener;

public class GoogleLensMode extends AddonMode {
    public static final String MODE_NAME = "GOOGLE_LENS";
    private boolean[] mAvailable;
    private SharedPreferencesAccessor mGoogleLensPrefsAccessor;

    static /* synthetic */ Context access$000(GoogleLensMode googleLensMode) {
        return googleLensMode.mContext;
    }

    static /* synthetic */ boolean access$100(GoogleLensMode googleLensMode) {
        return googleLensMode.getCachedGoogleLensAvailability();
    }

    static /* synthetic */ boolean[] access$202(GoogleLensMode googleLensMode, boolean[] zArr) {
        googleLensMode.mAvailable = zArr;
        return zArr;
    }

    static /* synthetic */ void access$300(GoogleLensMode googleLensMode, boolean z) {
        googleLensMode.updateCachedGoogleLensAvailability(z);
    }

    static /* synthetic */ Mode$OnStateChangeListener access$400(GoogleLensMode googleLensMode) {
        return googleLensMode.mStateChangeListener;
    }

    static /* synthetic */ Mode$OnStateChangeListener access$500(GoogleLensMode googleLensMode) {
        return googleLensMode.mStateChangeListener;
    }

    public GoogleLensMode(@NonNull Context context, @NonNull CapturingModeAttributes capturingModeAttributes) {
        super(context, capturingModeAttributes);
        this.mAvailable = null;
    }

    @Override // com.sonyericsson.android.camera.view.modeselector.Mode
    public boolean isAvailable() {
        return isAvailable(false);
    }

    @Override // com.sonyericsson.android.camera.view.modeselector.AddonMode, com.sonyericsson.android.camera.view.modeselector.Mode
    protected String generateSmallIconMappingName() {
        return super.generateSmallIconMappingName() + ".GOOGLE_LENS";
    }

    @Override // com.sonyericsson.android.camera.view.modeselector.AddonMode, com.sonyericsson.android.camera.view.modeselector.Mode
    protected String getModeName() {
        return getTag().getSelectorLabel();
    }

    public boolean isAvailable(boolean z) {
        if (!z && this.mAvailable != null) {
            return this.mAvailable[0];
        }
        new Handler(Looper.getMainLooper()).post(new GoogleLensMode$1(this));
        return getCachedGoogleLensAvailability();
    }

    private void updateCachedGoogleLensAvailability(boolean z) {
        if (this.mGoogleLensPrefsAccessor == null) {
            this.mGoogleLensPrefsAccessor = new SharedPreferencesAccessor(this.mContext, "google-lens");
        }
        this.mGoogleLensPrefsAccessor.writeBoolean("GOOGLE_LENS_AVAILABLE", z, false);
        this.mGoogleLensPrefsAccessor.apply();
    }

    private boolean getCachedGoogleLensAvailability() {
        if (this.mGoogleLensPrefsAccessor == null) {
            this.mGoogleLensPrefsAccessor = new SharedPreferencesAccessor(this.mContext, "google-lens");
        }
        return this.mGoogleLensPrefsAccessor.readBoolean("GOOGLE_LENS_AVAILABLE", false);
    }

    public static boolean isLensMode(@NonNull Context context, @NonNull CapturingModeAttributes capturingModeAttributes) {
        return generateId(context.getPackageName(), "GOOGLE_LENS").equals(generateId(capturingModeAttributes));
    }
}
