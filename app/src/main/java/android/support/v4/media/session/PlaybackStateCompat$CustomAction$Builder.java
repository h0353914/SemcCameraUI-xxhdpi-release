package android.support.v4.media.session;

import android.os.Bundle;
import android.text.TextUtils;

public final class PlaybackStateCompat$CustomAction$Builder {
    private final String mAction;
    private Bundle mExtras;
    private final int mIcon;
    private final CharSequence mName;

    public PlaybackStateCompat$CustomAction$Builder(String str, CharSequence charSequence, int i) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("You must specify an action to build a CustomAction.");
        }
        if (TextUtils.isEmpty(charSequence)) {
            throw new IllegalArgumentException("You must specify a name to build a CustomAction.");
        }
        if (i == 0) {
            throw new IllegalArgumentException("You must specify an icon resource id to build a CustomAction.");
        }
        this.mAction = str;
        this.mName = charSequence;
        this.mIcon = i;
    }

    public PlaybackStateCompat$CustomAction$Builder setExtras(Bundle bundle) {
        this.mExtras = bundle;
        return this;
    }

    public PlaybackStateCompat$CustomAction build() {
        return new PlaybackStateCompat$CustomAction(this.mAction, this.mName, this.mIcon, this.mExtras);
    }
}
