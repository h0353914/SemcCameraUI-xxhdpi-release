package android.support.v4.media.session;

import android.media.AudioAttributes;
import android.media.session.MediaController$PlaybackInfo;

public class MediaControllerCompatApi21$PlaybackInfo {
    private static final int FLAG_SCO = 4;
    private static final int STREAM_BLUETOOTH_SCO = 6;
    private static final int STREAM_SYSTEM_ENFORCED = 7;

    public static int getPlaybackType(Object obj) {
        return ((MediaController$PlaybackInfo) obj).getPlaybackType();
    }

    public static AudioAttributes getAudioAttributes(Object obj) {
        return ((MediaController$PlaybackInfo) obj).getAudioAttributes();
    }

    public static int getLegacyAudioStream(Object obj) {
        return toLegacyStreamType(getAudioAttributes(obj));
    }

    public static int getVolumeControl(Object obj) {
        return ((MediaController$PlaybackInfo) obj).getVolumeControl();
    }

    public static int getMaxVolume(Object obj) {
        return ((MediaController$PlaybackInfo) obj).getMaxVolume();
    }

    public static int getCurrentVolume(Object obj) {
        return ((MediaController$PlaybackInfo) obj).getCurrentVolume();
    }

    private static int toLegacyStreamType(AudioAttributes audioAttributes) {
        if ((audioAttributes.getFlags() & 1) == 1) {
            return 7;
        }
        if ((audioAttributes.getFlags() & 4) == 4) {
            return 6;
        }
        switch (audioAttributes.getUsage()) {
            case 1:
            case 11:
            case 12:
            case 14:
                return 3;
            case 2:
                return 0;
            case 3:
                return 8;
            case 4:
                return 4;
            case 5:
            case 7:
            case 8:
            case 9:
            case 10:
                return 5;
            case 6:
                return 2;
            case 13:
                return 1;
            default:
                return 3;
        }
    }

    private MediaControllerCompatApi21$PlaybackInfo() {
    }
}
