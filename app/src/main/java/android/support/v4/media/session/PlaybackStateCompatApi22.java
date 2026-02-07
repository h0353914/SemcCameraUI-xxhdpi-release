package android.support.v4.media.session;

import android.media.session.PlaybackState;
import android.media.session.PlaybackState$Builder;
import android.media.session.PlaybackState$CustomAction;
import android.os.Bundle;
import android.support.annotation.RequiresApi;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@RequiresApi(22)
class PlaybackStateCompatApi22 {
    public static Bundle getExtras(Object obj) {
        return ((PlaybackState) obj).getExtras();
    }

    public static Object newInstance(int i, long j, long j2, float f, long j3, CharSequence charSequence, long j4, List<Object> list, long j5, Bundle bundle) {
        PlaybackState$Builder playbackState$Builder = new PlaybackState$Builder();
        playbackState$Builder.setState(i, j, f, j4);
        playbackState$Builder.setBufferedPosition(j2);
        playbackState$Builder.setActions(j3);
        playbackState$Builder.setErrorMessage(charSequence);
        Iterator<Object> it = list.iterator();
        while (it.hasNext()) {
            playbackState$Builder.addCustomAction((PlaybackState$CustomAction) it.next());
        }
        playbackState$Builder.setActiveQueueItemId(j5);
        playbackState$Builder.setExtras(bundle);
        return playbackState$Builder.build();
    }

    private PlaybackStateCompatApi22() {
    }
}
