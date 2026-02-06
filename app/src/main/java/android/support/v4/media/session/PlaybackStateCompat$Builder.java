package android.support.v4.media.session;

import android.os.Bundle;
import android.os.SystemClock;
import java.util.ArrayList;
import java.util.List;

public final class PlaybackStateCompat$Builder {
    private long mActions;
    private long mActiveItemId;
    private long mBufferedPosition;
    private final List<PlaybackStateCompat$CustomAction> mCustomActions;
    private int mErrorCode;
    private CharSequence mErrorMessage;
    private Bundle mExtras;
    private long mPosition;
    private float mRate;
    private int mState;
    private long mUpdateTime;

    public PlaybackStateCompat$Builder() {
        this.mCustomActions = new ArrayList();
        this.mActiveItemId = -1L;
    }

    public PlaybackStateCompat$Builder(PlaybackStateCompat playbackStateCompat) {
        this.mCustomActions = new ArrayList();
        this.mActiveItemId = -1L;
        this.mState = playbackStateCompat.mState;
        this.mPosition = playbackStateCompat.mPosition;
        this.mRate = playbackStateCompat.mSpeed;
        this.mUpdateTime = playbackStateCompat.mUpdateTime;
        this.mBufferedPosition = playbackStateCompat.mBufferedPosition;
        this.mActions = playbackStateCompat.mActions;
        this.mErrorCode = playbackStateCompat.mErrorCode;
        this.mErrorMessage = playbackStateCompat.mErrorMessage;
        if (playbackStateCompat.mCustomActions != null) {
            this.mCustomActions.addAll(playbackStateCompat.mCustomActions);
        }
        this.mActiveItemId = playbackStateCompat.mActiveItemId;
        this.mExtras = playbackStateCompat.mExtras;
    }

    public PlaybackStateCompat$Builder setState(int i, long j, float f) {
        return setState(i, j, f, SystemClock.elapsedRealtime());
    }

    public PlaybackStateCompat$Builder setState(int i, long j, float f, long j2) {
        this.mState = i;
        this.mPosition = j;
        this.mUpdateTime = j2;
        this.mRate = f;
        return this;
    }

    public PlaybackStateCompat$Builder setBufferedPosition(long j) {
        this.mBufferedPosition = j;
        return this;
    }

    public PlaybackStateCompat$Builder setActions(long j) {
        this.mActions = j;
        return this;
    }

    public PlaybackStateCompat$Builder addCustomAction(String str, String str2, int i) {
        return addCustomAction(new PlaybackStateCompat$CustomAction(str, str2, i, null));
    }

    public PlaybackStateCompat$Builder addCustomAction(PlaybackStateCompat$CustomAction playbackStateCompat$CustomAction) {
        if (playbackStateCompat$CustomAction == null) {
            throw new IllegalArgumentException("You may not add a null CustomAction to PlaybackStateCompat.");
        }
        this.mCustomActions.add(playbackStateCompat$CustomAction);
        return this;
    }

    public PlaybackStateCompat$Builder setActiveQueueItemId(long j) {
        this.mActiveItemId = j;
        return this;
    }

    public PlaybackStateCompat$Builder setErrorMessage(CharSequence charSequence) {
        this.mErrorMessage = charSequence;
        return this;
    }

    public PlaybackStateCompat$Builder setErrorMessage(int i, CharSequence charSequence) {
        this.mErrorCode = i;
        this.mErrorMessage = charSequence;
        return this;
    }

    public PlaybackStateCompat$Builder setExtras(Bundle bundle) {
        this.mExtras = bundle;
        return this;
    }

    public PlaybackStateCompat build() {
        return new PlaybackStateCompat(this.mState, this.mPosition, this.mBufferedPosition, this.mRate, this.mActions, this.mErrorCode, this.mErrorMessage, this.mUpdateTime, this.mCustomActions, this.mActiveItemId, this.mExtras);
    }
}
