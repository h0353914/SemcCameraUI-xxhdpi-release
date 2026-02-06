package android.support.v4.media.session;

import android.os.Bundle;
import android.os.RemoteException;
import android.support.v4.media.MediaMetadataCompat;
import java.util.List;

class MediaControllerCompat$MediaControllerImplApi21$ExtraCallback extends MediaControllerCompat$Callback$StubCompat {
    MediaControllerCompat$MediaControllerImplApi21$ExtraCallback(MediaControllerCompat$Callback mediaControllerCompat$Callback) {
        super(mediaControllerCompat$Callback);
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$Callback$StubCompat, android.support.v4.media.session.IMediaControllerCallback
    public void onSessionDestroyed() throws RemoteException {
        throw new AssertionError();
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$Callback$StubCompat, android.support.v4.media.session.IMediaControllerCallback
    public void onMetadataChanged(MediaMetadataCompat mediaMetadataCompat) throws RemoteException {
        throw new AssertionError();
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$Callback$StubCompat, android.support.v4.media.session.IMediaControllerCallback
    public void onQueueChanged(List<MediaSessionCompat$QueueItem> list) throws RemoteException {
        throw new AssertionError();
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$Callback$StubCompat, android.support.v4.media.session.IMediaControllerCallback
    public void onQueueTitleChanged(CharSequence charSequence) throws RemoteException {
        throw new AssertionError();
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$Callback$StubCompat, android.support.v4.media.session.IMediaControllerCallback
    public void onExtrasChanged(Bundle bundle) throws RemoteException {
        throw new AssertionError();
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$Callback$StubCompat, android.support.v4.media.session.IMediaControllerCallback
    public void onVolumeInfoChanged(ParcelableVolumeInfo parcelableVolumeInfo) throws RemoteException {
        throw new AssertionError();
    }
}
