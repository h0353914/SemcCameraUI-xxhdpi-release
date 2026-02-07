package android.support.v4.media;

import android.media.VolumeProvider;
import android.support.annotation.RequiresApi;

/* JADX INFO: loaded from: classes.dex */
@RequiresApi(21)
class VolumeProviderCompatApi21 {
    public static Object createVolumeProvider(int i, int i2, int i3, VolumeProviderCompatApi21$Delegate volumeProviderCompatApi21$Delegate) {
        return new VolumeProviderCompatApi21$1(i, i2, i3, volumeProviderCompatApi21$Delegate);
    }

    public static void setCurrentVolume(Object obj, int i) {
        ((VolumeProvider) obj).setCurrentVolume(i);
    }

    private VolumeProviderCompatApi21() {
    }
}
