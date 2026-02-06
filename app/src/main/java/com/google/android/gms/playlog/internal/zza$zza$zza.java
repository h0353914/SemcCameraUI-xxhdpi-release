package com.google.android.gms.playlog.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

class zza$zza$zza implements zza {
    private IBinder zznJ;

    zza$zza$zza(IBinder iBinder) {
        this.zznJ = iBinder;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.zznJ;
    }

    @Override // com.google.android.gms.playlog.internal.zza
    public void zza(String str, PlayLoggerContext playLoggerContext, LogEvent logEvent) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.google.android.gms.playlog.internal.IPlayLogService");
            parcelObtain.writeString(str);
            if (playLoggerContext != null) {
                parcelObtain.writeInt(1);
                playLoggerContext.writeToParcel(parcelObtain, 0);
            } else {
                parcelObtain.writeInt(0);
            }
            if (logEvent != null) {
                parcelObtain.writeInt(1);
                logEvent.writeToParcel(parcelObtain, 0);
            } else {
                parcelObtain.writeInt(0);
            }
            this.zznJ.transact(2, parcelObtain, null, 1);
        } finally {
            parcelObtain.recycle();
        }
    }

    @Override // com.google.android.gms.playlog.internal.zza
    public void zza(String str, PlayLoggerContext playLoggerContext, List<LogEvent> list) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.google.android.gms.playlog.internal.IPlayLogService");
            parcelObtain.writeString(str);
            if (playLoggerContext != null) {
                parcelObtain.writeInt(1);
                playLoggerContext.writeToParcel(parcelObtain, 0);
            } else {
                parcelObtain.writeInt(0);
            }
            parcelObtain.writeTypedList(list);
            this.zznJ.transact(3, parcelObtain, null, 1);
        } finally {
            parcelObtain.recycle();
        }
    }

    @Override // com.google.android.gms.playlog.internal.zza
    public void zza(String str, PlayLoggerContext playLoggerContext, byte[] bArr) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.google.android.gms.playlog.internal.IPlayLogService");
            parcelObtain.writeString(str);
            if (playLoggerContext != null) {
                parcelObtain.writeInt(1);
                playLoggerContext.writeToParcel(parcelObtain, 0);
            } else {
                parcelObtain.writeInt(0);
            }
            parcelObtain.writeByteArray(bArr);
            this.zznJ.transact(4, parcelObtain, null, 1);
        } finally {
            parcelObtain.recycle();
        }
    }
}
