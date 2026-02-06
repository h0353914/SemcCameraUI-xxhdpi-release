package android.support.v4.media;

import android.media.VolumeProvider;

class VolumeProviderCompatApi21$1 extends VolumeProvider {
    final /* synthetic */ VolumeProviderCompatApi21$Delegate val$delegate;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    VolumeProviderCompatApi21$1(int i, int i2, int i3, VolumeProviderCompatApi21$Delegate volumeProviderCompatApi21$Delegate) {
        super(i, i2, i3);
        this.val$delegate = volumeProviderCompatApi21$Delegate;
    }

    @Override // android.media.VolumeProvider
    public void onSetVolumeTo(int i) {
        this.val$delegate.onSetVolumeTo(i);
    }

    @Override // android.media.VolumeProvider
    public void onAdjustVolume(int i) {
        this.val$delegate.onAdjustVolume(i);
    }
}
