package android.support.v4.media.session;

import android.content.Context;
import android.os.RemoteException;
import android.support.annotation.RequiresApi;

@RequiresApi(23)
class MediaControllerCompat$MediaControllerImplApi23 extends MediaControllerCompat$MediaControllerImplApi21 {
    public MediaControllerCompat$MediaControllerImplApi23(Context context, MediaSessionCompat$Token mediaSessionCompat$Token) throws RemoteException {
        super(context, mediaSessionCompat$Token);
    }

    @Override // android.support.v4.media.session.MediaControllerCompat$MediaControllerImplApi21, android.support.v4.media.session.MediaControllerCompat$MediaControllerImpl
    public MediaControllerCompat$TransportControls getTransportControls() {
        Object transportControls = MediaControllerCompatApi21.getTransportControls(this.mControllerObj);
        if (transportControls != null) {
            return new MediaControllerCompat$TransportControlsApi23(transportControls);
        }
        return null;
    }
}
