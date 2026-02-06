package com.google.android.gms.internal;

import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.consent.GetConsentIntentRequest;

public abstract class zzkg$zza extends Binder implements zzkg {
    public static zzkg zzaq(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.consent.internal.IConsentService");
        return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof zzkg)) ? new zzkg$zza$zza(iBinder) : (zzkg) iInterfaceQueryLocalInterface;
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 1) {
            if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            parcel2.writeString("com.google.android.gms.auth.api.consent.internal.IConsentService");
            return true;
        }
        parcel.enforceInterface("com.google.android.gms.auth.api.consent.internal.IConsentService");
        Intent intentZza = zza(parcel.readInt() != 0 ? GetConsentIntentRequest.CREATOR.createFromParcel(parcel) : null);
        parcel2.writeNoException();
        if (intentZza == null) {
            parcel2.writeInt(0);
            return true;
        }
        parcel2.writeInt(1);
        intentZza.writeToParcel(parcel2, 1);
        return true;
    }
}
