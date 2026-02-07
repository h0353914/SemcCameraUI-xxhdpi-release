package android.support.v4.media.session;

import android.support.v4.media.VolumeProviderCompat;
import android.support.v4.media.VolumeProviderCompat$Callback;

/* JADX INFO: loaded from: classes.dex */
class MediaSessionCompat$MediaSessionImplBase$1 extends VolumeProviderCompat$Callback {
    final /* synthetic */ MediaSessionCompat$MediaSessionImplBase this$0;

    MediaSessionCompat$MediaSessionImplBase$1(MediaSessionCompat$MediaSessionImplBase mediaSessionCompat$MediaSessionImplBase) {
        this.this$0 = mediaSessionCompat$MediaSessionImplBase;
    }

    @Override // android.support.v4.media.VolumeProviderCompat$Callback
    public void onVolumeChanged(VolumeProviderCompat volumeProviderCompat) {
        if (this.this$0.mVolumeProvider != volumeProviderCompat) {
            return;
        }
        this.this$0.sendVolumeInfoChanged(new ParcelableVolumeInfo(this.this$0.mVolumeType, this.this$0.mLocalStream, volumeProviderCompat.getVolumeControl(), volumeProviderCompat.getMaxVolume(), volumeProviderCompat.getCurrentVolume()));
    }
}
