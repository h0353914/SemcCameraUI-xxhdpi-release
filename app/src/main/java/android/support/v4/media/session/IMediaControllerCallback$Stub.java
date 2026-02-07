package android.support.v4.media.session;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.support.v4.media.MediaMetadataCompat;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
public abstract class IMediaControllerCallback$Stub extends Binder implements IMediaControllerCallback {
    private static final String DESCRIPTOR = "android.support.v4.media.session.IMediaControllerCallback";
    static final int TRANSACTION_onCaptioningEnabledChanged = 11;
    static final int TRANSACTION_onEvent = 1;
    static final int TRANSACTION_onExtrasChanged = 7;
    static final int TRANSACTION_onMetadataChanged = 4;
    static final int TRANSACTION_onPlaybackStateChanged = 3;
    static final int TRANSACTION_onQueueChanged = 5;
    static final int TRANSACTION_onQueueTitleChanged = 6;
    static final int TRANSACTION_onRepeatModeChanged = 9;
    static final int TRANSACTION_onSessionDestroyed = 2;
    static final int TRANSACTION_onSessionReady = 13;
    static final int TRANSACTION_onShuffleModeChanged = 12;
    static final int TRANSACTION_onShuffleModeChangedRemoved = 10;
    static final int TRANSACTION_onVolumeInfoChanged = 8;

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
    }

    public IMediaControllerCallback$Stub() {
        attachInterface(this, "android.support.v4.media.session.IMediaControllerCallback");
    }

    public static IMediaControllerCallback asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("android.support.v4.media.session.IMediaControllerCallback");
        if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IMediaControllerCallback)) {
            return (IMediaControllerCallback) iInterfaceQueryLocalInterface;
        }
        return new IMediaControllerCallback$Stub$Proxy(iBinder);
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1598968902) {
            parcel2.writeString("android.support.v4.media.session.IMediaControllerCallback");
            return true;
        }
        switch (i) {
            case 1:
                parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                onEvent(parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                return true;
            case 2:
                parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                onSessionDestroyed();
                return true;
            case 3:
                parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                onPlaybackStateChanged(parcel.readInt() != 0 ? PlaybackStateCompat.CREATOR.createFromParcel(parcel) : null);
                return true;
            case 4:
                parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                onMetadataChanged(parcel.readInt() != 0 ? MediaMetadataCompat.CREATOR.createFromParcel(parcel) : null);
                return true;
            case 5:
                parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                onQueueChanged(parcel.createTypedArrayList(MediaSessionCompat$QueueItem.CREATOR));
                return true;
            case 6:
                parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                onQueueTitleChanged(parcel.readInt() != 0 ? (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel) : null);
                return true;
            case 7:
                parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                onExtrasChanged(parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                return true;
            case 8:
                parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                onVolumeInfoChanged(parcel.readInt() != 0 ? ParcelableVolumeInfo.CREATOR.createFromParcel(parcel) : null);
                return true;
            case 9:
                parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                onRepeatModeChanged(parcel.readInt());
                return true;
            case 10:
                parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                onShuffleModeChangedRemoved(parcel.readInt() != 0);
                return true;
            case 11:
                parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                onCaptioningEnabledChanged(parcel.readInt() != 0);
                return true;
            case 12:
                parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                onShuffleModeChanged(parcel.readInt());
                return true;
            case 13:
                parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
                onSessionReady();
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }
}
