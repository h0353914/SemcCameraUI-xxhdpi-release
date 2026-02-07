package android.support.v4.media.session;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import android.support.v4.media.MediaMetadataCompat;
import android.text.TextUtils;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class IMediaControllerCallback$Stub$Proxy implements IMediaControllerCallback {
    private IBinder mRemote;

    public String getInterfaceDescriptor() {
        return "android.support.v4.media.session.IMediaControllerCallback";
    }

    IMediaControllerCallback$Stub$Proxy(IBinder iBinder) {
        this.mRemote = iBinder;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.mRemote;
    }

    @Override // android.support.v4.media.session.IMediaControllerCallback
    public void onEvent(String str, Bundle bundle) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
            parcelObtain.writeString(str);
            if (bundle != null) {
                parcelObtain.writeInt(1);
                bundle.writeToParcel(parcelObtain, 0);
            } else {
                parcelObtain.writeInt(0);
            }
            this.mRemote.transact(1, parcelObtain, null, 1);
        } finally {
            parcelObtain.recycle();
        }
    }

    @Override // android.support.v4.media.session.IMediaControllerCallback
    public void onSessionDestroyed() throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
            this.mRemote.transact(2, parcelObtain, null, 1);
        } finally {
            parcelObtain.recycle();
        }
    }

    @Override // android.support.v4.media.session.IMediaControllerCallback
    public void onPlaybackStateChanged(PlaybackStateCompat playbackStateCompat) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
            if (playbackStateCompat != null) {
                parcelObtain.writeInt(1);
                playbackStateCompat.writeToParcel(parcelObtain, 0);
            } else {
                parcelObtain.writeInt(0);
            }
            this.mRemote.transact(3, parcelObtain, null, 1);
        } finally {
            parcelObtain.recycle();
        }
    }

    @Override // android.support.v4.media.session.IMediaControllerCallback
    public void onMetadataChanged(MediaMetadataCompat mediaMetadataCompat) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
            if (mediaMetadataCompat != null) {
                parcelObtain.writeInt(1);
                mediaMetadataCompat.writeToParcel(parcelObtain, 0);
            } else {
                parcelObtain.writeInt(0);
            }
            this.mRemote.transact(4, parcelObtain, null, 1);
        } finally {
            parcelObtain.recycle();
        }
    }

    @Override // android.support.v4.media.session.IMediaControllerCallback
    public void onQueueChanged(List<MediaSessionCompat$QueueItem> list) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
            parcelObtain.writeTypedList(list);
            this.mRemote.transact(5, parcelObtain, null, 1);
        } finally {
            parcelObtain.recycle();
        }
    }

    @Override // android.support.v4.media.session.IMediaControllerCallback
    public void onQueueTitleChanged(CharSequence charSequence) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
            if (charSequence != null) {
                parcelObtain.writeInt(1);
                TextUtils.writeToParcel(charSequence, parcelObtain, 0);
            } else {
                parcelObtain.writeInt(0);
            }
            this.mRemote.transact(6, parcelObtain, null, 1);
        } finally {
            parcelObtain.recycle();
        }
    }

    @Override // android.support.v4.media.session.IMediaControllerCallback
    public void onExtrasChanged(Bundle bundle) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
            if (bundle != null) {
                parcelObtain.writeInt(1);
                bundle.writeToParcel(parcelObtain, 0);
            } else {
                parcelObtain.writeInt(0);
            }
            this.mRemote.transact(7, parcelObtain, null, 1);
        } finally {
            parcelObtain.recycle();
        }
    }

    @Override // android.support.v4.media.session.IMediaControllerCallback
    public void onVolumeInfoChanged(ParcelableVolumeInfo parcelableVolumeInfo) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
            if (parcelableVolumeInfo != null) {
                parcelObtain.writeInt(1);
                parcelableVolumeInfo.writeToParcel(parcelObtain, 0);
            } else {
                parcelObtain.writeInt(0);
            }
            this.mRemote.transact(8, parcelObtain, null, 1);
        } finally {
            parcelObtain.recycle();
        }
    }

    @Override // android.support.v4.media.session.IMediaControllerCallback
    public void onRepeatModeChanged(int i) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
            parcelObtain.writeInt(i);
            this.mRemote.transact(9, parcelObtain, null, 1);
        } finally {
            parcelObtain.recycle();
        }
    }

    @Override // android.support.v4.media.session.IMediaControllerCallback
    public void onShuffleModeChangedRemoved(boolean z) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
            parcelObtain.writeInt(z ? 1 : 0);
            this.mRemote.transact(10, parcelObtain, null, 1);
        } finally {
            parcelObtain.recycle();
        }
    }

    @Override // android.support.v4.media.session.IMediaControllerCallback
    public void onCaptioningEnabledChanged(boolean z) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
            parcelObtain.writeInt(z ? 1 : 0);
            this.mRemote.transact(11, parcelObtain, null, 1);
        } finally {
            parcelObtain.recycle();
        }
    }

    @Override // android.support.v4.media.session.IMediaControllerCallback
    public void onShuffleModeChanged(int i) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
            parcelObtain.writeInt(i);
            this.mRemote.transact(12, parcelObtain, null, 1);
        } finally {
            parcelObtain.recycle();
        }
    }

    @Override // android.support.v4.media.session.IMediaControllerCallback
    public void onSessionReady() throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
            this.mRemote.transact(13, parcelObtain, null, 1);
        } finally {
            parcelObtain.recycle();
        }
    }
}
