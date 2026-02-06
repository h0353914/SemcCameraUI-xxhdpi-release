package android.support.v4.media;

class VolumeProviderCompat$1 implements VolumeProviderCompatApi21$Delegate {
    final /* synthetic */ VolumeProviderCompat this$0;

    VolumeProviderCompat$1(VolumeProviderCompat volumeProviderCompat) {
        this.this$0 = volumeProviderCompat;
    }

    @Override // android.support.v4.media.VolumeProviderCompatApi21$Delegate
    public void onSetVolumeTo(int i) {
        this.this$0.onSetVolumeTo(i);
    }

    @Override // android.support.v4.media.VolumeProviderCompatApi21$Delegate
    public void onAdjustVolume(int i) {
        this.this$0.onAdjustVolume(i);
    }
}
