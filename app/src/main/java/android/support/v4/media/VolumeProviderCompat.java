package android.support.v4.media;

import android.os.Build$VERSION;

/* JADX INFO: loaded from: classes.dex */
public abstract class VolumeProviderCompat {
    public static final int VOLUME_CONTROL_ABSOLUTE = 2;
    public static final int VOLUME_CONTROL_FIXED = 0;
    public static final int VOLUME_CONTROL_RELATIVE = 1;
    private VolumeProviderCompat$Callback mCallback;
    private final int mControlType;
    private int mCurrentVolume;
    private final int mMaxVolume;
    private Object mVolumeProviderObj;

    public void onAdjustVolume(int i) {
    }

    public void onSetVolumeTo(int i) {
    }

    public VolumeProviderCompat(int i, int i2, int i3) {
        this.mControlType = i;
        this.mMaxVolume = i2;
        this.mCurrentVolume = i3;
    }

    public final int getCurrentVolume() {
        return this.mCurrentVolume;
    }

    public final int getVolumeControl() {
        return this.mControlType;
    }

    public final int getMaxVolume() {
        return this.mMaxVolume;
    }

    public final void setCurrentVolume(int i) {
        this.mCurrentVolume = i;
        Object volumeProvider = getVolumeProvider();
        if (volumeProvider != null && Build$VERSION.SDK_INT >= 21) {
            VolumeProviderCompatApi21.setCurrentVolume(volumeProvider, i);
        }
        if (this.mCallback != null) {
            this.mCallback.onVolumeChanged(this);
        }
    }

    public void setCallback(VolumeProviderCompat$Callback volumeProviderCompat$Callback) {
        this.mCallback = volumeProviderCompat$Callback;
    }

    public Object getVolumeProvider() {
        if (this.mVolumeProviderObj == null && Build$VERSION.SDK_INT >= 21) {
            this.mVolumeProviderObj = VolumeProviderCompatApi21.createVolumeProvider(this.mControlType, this.mMaxVolume, this.mCurrentVolume, new VolumeProviderCompat$1(this));
        }
        return this.mVolumeProviderObj;
    }
}
