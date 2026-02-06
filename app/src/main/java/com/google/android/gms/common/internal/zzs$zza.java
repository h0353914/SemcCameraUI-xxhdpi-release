package com.google.android.gms.common.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public abstract class zzs$zza extends Binder implements zzs {
    public static zzs zzaK(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
        return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof zzs)) ? new zzs$zza$zza(iBinder) : (zzs) iInterfaceQueryLocalInterface;
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1598968902) {
            parcel2.writeString("com.google.android.gms.common.internal.IGmsServiceBroker");
            return true;
        }
        switch (i) {
            case 1:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                zza(zzr$zza.zzaJ(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.createStringArray(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            case 2:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                zza(zzr$zza.zzaJ(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            case 3:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                zza(zzr$zza.zzaJ(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 4:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                zza(zzr$zza.zzaJ(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                return true;
            case 5:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                zzb(zzr$zza.zzaJ(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            case 6:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                zzc(zzr$zza.zzaJ(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            case 7:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                zzd(zzr$zza.zzaJ(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            case 8:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                zze(zzr$zza.zzaJ(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            case 9:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                zza(zzr$zza.zzaJ(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.createStringArray(), parcel.readString(), parcel.readStrongBinder(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            case 10:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                zza(zzr$zza.zzaJ(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.createStringArray());
                parcel2.writeNoException();
                return true;
            case 11:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                zzf(zzr$zza.zzaJ(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            case 12:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                zzg(zzr$zza.zzaJ(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            case 13:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                zzh(zzr$zza.zzaJ(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            case 14:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                zzi(zzr$zza.zzaJ(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            case 15:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                zzj(zzr$zza.zzaJ(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            case 16:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                zzk(zzr$zza.zzaJ(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            case 17:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                zzl(zzr$zza.zzaJ(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            case 18:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                zzm(zzr$zza.zzaJ(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            case 19:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                zza(zzr$zza.zzaJ(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readStrongBinder(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            case 20:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                zza(zzr$zza.zzaJ(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.createStringArray(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            case 21:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                zzb(zzr$zza.zzaJ(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 22:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                zzc(zzr$zza.zzaJ(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 23:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                zzn(zzr$zza.zzaJ(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            case 24:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                zzd(zzr$zza.zzaJ(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 25:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                zzo(zzr$zza.zzaJ(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            case 26:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                zze(zzr$zza.zzaJ(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 27:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                zzp(zzr$zza.zzaJ(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            case 28:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                zzpp();
                parcel2.writeNoException();
                return true;
            default:
                switch (i) {
                    case 30:
                        parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                        zza(zzr$zza.zzaJ(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.createStringArray(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                        parcel2.writeNoException();
                        return true;
                    case 31:
                        parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                        zzf(zzr$zza.zzaJ(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 32:
                        parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                        zzg(zzr$zza.zzaJ(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 33:
                        parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                        zza(zzr$zza.zzaJ(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.createStringArray());
                        parcel2.writeNoException();
                        return true;
                    case 34:
                        parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                        zza(zzr$zza.zzaJ(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 35:
                        parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                        zzh(zzr$zza.zzaJ(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 36:
                        parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                        zzi(zzr$zza.zzaJ(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 37:
                        parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                        zzq(zzr$zza.zzaJ(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                        parcel2.writeNoException();
                        return true;
                    case 38:
                        parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                        zzr(zzr$zza.zzaJ(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                        parcel2.writeNoException();
                        return true;
                    default:
                        switch (i) {
                            case 40:
                                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                                zzj(zzr$zza.zzaJ(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                                parcel2.writeNoException();
                                return true;
                            case 41:
                                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                                zzs(zzr$zza.zzaJ(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                                parcel2.writeNoException();
                                return true;
                            case 42:
                                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                                zzk(zzr$zza.zzaJ(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                                parcel2.writeNoException();
                                return true;
                            case 43:
                                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                                zzt(zzr$zza.zzaJ(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                                parcel2.writeNoException();
                                return true;
                            case 44:
                                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                                zzl(zzr$zza.zzaJ(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                                parcel2.writeNoException();
                                return true;
                            case 45:
                                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                                zzm(zzr$zza.zzaJ(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                                parcel2.writeNoException();
                                return true;
                            case 46:
                                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                                zza(zzr$zza.zzaJ(parcel.readStrongBinder()), parcel.readInt() != 0 ? GetServiceRequest.CREATOR.createFromParcel(parcel) : null);
                                parcel2.writeNoException();
                                return true;
                            case 47:
                                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                                zza(zzr$zza.zzaJ(parcel.readStrongBinder()), parcel.readInt() != 0 ? ValidateAccountRequest.CREATOR.createFromParcel(parcel) : null);
                                parcel2.writeNoException();
                                return true;
                            default:
                                return super.onTransact(i, parcel, parcel2, i2);
                        }
                }
        }
    }
}
