package com.google.android.gms.dynamic;

import android.content.Intent;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public abstract class zzc$zza extends Binder implements zzc {
    public zzc$zza() {
        attachInterface(this, "com.google.android.gms.dynamic.IFragmentWrapper");
    }

    public static zzc zzbj(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamic.IFragmentWrapper");
        return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof zzc)) ? new zzc$zza$zza(iBinder) : (zzc) iInterfaceQueryLocalInterface;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1598968902) {
            parcel2.writeString("com.google.android.gms.dynamic.IFragmentWrapper");
            return true;
        }
        switch (i) {
            case 2:
                parcel.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
                zzd zzdVarZzsa = zzsa();
                parcel2.writeNoException();
                parcel2.writeStrongBinder(zzdVarZzsa != null ? zzdVarZzsa.asBinder() : null);
                return true;
            case 3:
                parcel.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
                Bundle arguments = getArguments();
                parcel2.writeNoException();
                if (arguments == null) {
                    parcel2.writeInt(0);
                    return true;
                }
                parcel2.writeInt(1);
                arguments.writeToParcel(parcel2, 1);
                return true;
            case 4:
                parcel.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
                int id = getId();
                parcel2.writeNoException();
                parcel2.writeInt(id);
                return true;
            case 5:
                parcel.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
                zzc zzcVarZzsb = zzsb();
                parcel2.writeNoException();
                parcel2.writeStrongBinder(zzcVarZzsb != null ? zzcVarZzsb.asBinder() : null);
                return true;
            case 6:
                parcel.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
                zzd zzdVarZzsc = zzsc();
                parcel2.writeNoException();
                parcel2.writeStrongBinder(zzdVarZzsc != null ? zzdVarZzsc.asBinder() : null);
                return true;
            case 7:
                parcel.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
                boolean retainInstance = getRetainInstance();
                parcel2.writeNoException();
                parcel2.writeInt(retainInstance ? 1 : 0);
                return true;
            case 8:
                parcel.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
                String tag = getTag();
                parcel2.writeNoException();
                parcel2.writeString(tag);
                return true;
            case 9:
                parcel.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
                zzc zzcVarZzsd = zzsd();
                parcel2.writeNoException();
                parcel2.writeStrongBinder(zzcVarZzsd != null ? zzcVarZzsd.asBinder() : null);
                return true;
            case 10:
                parcel.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
                int targetRequestCode = getTargetRequestCode();
                parcel2.writeNoException();
                parcel2.writeInt(targetRequestCode);
                return true;
            case 11:
                parcel.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
                boolean userVisibleHint = getUserVisibleHint();
                parcel2.writeNoException();
                parcel2.writeInt(userVisibleHint ? 1 : 0);
                return true;
            case 12:
                parcel.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
                zzd view = getView();
                parcel2.writeNoException();
                parcel2.writeStrongBinder(view != null ? view.asBinder() : null);
                return true;
            case 13:
                parcel.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
                boolean zIsAdded = isAdded();
                parcel2.writeNoException();
                parcel2.writeInt(zIsAdded ? 1 : 0);
                return true;
            case 14:
                parcel.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
                boolean zIsDetached = isDetached();
                parcel2.writeNoException();
                parcel2.writeInt(zIsDetached ? 1 : 0);
                return true;
            case 15:
                parcel.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
                boolean zIsHidden = isHidden();
                parcel2.writeNoException();
                parcel2.writeInt(zIsHidden ? 1 : 0);
                return true;
            case 16:
                parcel.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
                boolean zIsInLayout = isInLayout();
                parcel2.writeNoException();
                parcel2.writeInt(zIsInLayout ? 1 : 0);
                return true;
            case 17:
                parcel.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
                boolean zIsRemoving = isRemoving();
                parcel2.writeNoException();
                parcel2.writeInt(zIsRemoving ? 1 : 0);
                return true;
            case 18:
                parcel.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
                boolean zIsResumed = isResumed();
                parcel2.writeNoException();
                parcel2.writeInt(zIsResumed ? 1 : 0);
                return true;
            case 19:
                parcel.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
                boolean zIsVisible = isVisible();
                parcel2.writeNoException();
                parcel2.writeInt(zIsVisible ? 1 : 0);
                return true;
            case 20:
                parcel.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
                zzn(zzd$zza.zzbk(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 21:
                parcel.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
                setHasOptionsMenu(parcel.readInt() != 0);
                parcel2.writeNoException();
                return true;
            case 22:
                parcel.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
                setMenuVisibility(parcel.readInt() != 0);
                parcel2.writeNoException();
                return true;
            case 23:
                parcel.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
                setRetainInstance(parcel.readInt() != 0);
                parcel2.writeNoException();
                return true;
            case 24:
                parcel.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
                setUserVisibleHint(parcel.readInt() != 0);
                parcel2.writeNoException();
                return true;
            case 25:
                parcel.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
                startActivity(parcel.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            case 26:
                parcel.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
                startActivityForResult(parcel.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                parcel2.writeNoException();
                return true;
            case 27:
                parcel.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
                zzo(zzd$zza.zzbk(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }
}
