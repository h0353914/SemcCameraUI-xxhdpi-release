package android.support.v4.media.session;

import android.media.session.PlaybackState$CustomAction;
import android.media.session.PlaybackState$CustomAction$Builder;
import android.os.Bundle;

final class PlaybackStateCompatApi21$CustomAction {
    public static String getAction(Object obj) {
        return ((PlaybackState$CustomAction) obj).getAction();
    }

    public static CharSequence getName(Object obj) {
        return ((PlaybackState$CustomAction) obj).getName();
    }

    public static int getIcon(Object obj) {
        return ((PlaybackState$CustomAction) obj).getIcon();
    }

    public static Bundle getExtras(Object obj) {
        return ((PlaybackState$CustomAction) obj).getExtras();
    }

    public static Object newInstance(String str, CharSequence charSequence, int i, Bundle bundle) {
        PlaybackState$CustomAction$Builder playbackState$CustomAction$Builder = new PlaybackState$CustomAction$Builder(str, charSequence, i);
        playbackState$CustomAction$Builder.setExtras(bundle);
        return playbackState$CustomAction$Builder.build();
    }

    private PlaybackStateCompatApi21$CustomAction() {
    }
}
