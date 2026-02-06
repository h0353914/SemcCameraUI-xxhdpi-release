package android.support.v4.media.session;

import android.content.Intent;
import android.os.Bundle;
import android.os.ResultReceiver;

interface MediaSessionCompatApi21$Callback {
    void onCommand(String str, Bundle bundle, ResultReceiver resultReceiver);

    void onCustomAction(String str, Bundle bundle);

    void onFastForward();

    boolean onMediaButtonEvent(Intent intent);

    void onPause();

    void onPlay();

    void onPlayFromMediaId(String str, Bundle bundle);

    void onPlayFromSearch(String str, Bundle bundle);

    void onRewind();

    void onSeekTo(long j);

    void onSetRating(Object obj);

    void onSetRating(Object obj, Bundle bundle);

    void onSkipToNext();

    void onSkipToPrevious();

    void onSkipToQueueItem(long j);

    void onStop();
}
