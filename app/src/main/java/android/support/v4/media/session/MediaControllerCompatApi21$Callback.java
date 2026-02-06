package android.support.v4.media.session;

import android.os.Bundle;
import java.util.List;

public interface MediaControllerCompatApi21$Callback {
    void onAudioInfoChanged(int i, int i2, int i3, int i4, int i5);

    void onExtrasChanged(Bundle bundle);

    void onMetadataChanged(Object obj);

    void onPlaybackStateChanged(Object obj);

    void onQueueChanged(List<?> list);

    void onQueueTitleChanged(CharSequence charSequence);

    void onSessionDestroyed();

    void onSessionEvent(String str, Bundle bundle);
}
