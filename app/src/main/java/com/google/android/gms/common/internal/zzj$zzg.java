package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;

protected final class zzj$zzg extends zzj<T>.zzj$zza {
    final /* synthetic */ zzj zzafK;
    public final IBinder zzafO;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzj$zzg(zzj zzjVar, int i, IBinder iBinder, Bundle bundle) {
        super(zzjVar, i, bundle);
        this.zzafK = zzjVar;
        this.zzafO = iBinder;
    }

    @Override // com.google.android.gms.common.internal.zzj$zza
    protected void zzh(ConnectionResult connectionResult) {
        if (zzj.zze(this.zzafK) != null) {
            zzj.zze(this.zzafK).onConnectionFailed(connectionResult);
        }
        this.zzafK.onConnectionFailed(connectionResult);
    }

    @Override // com.google.android.gms.common.internal.zzj$zza
    protected boolean zzpf() {
        try {
            String interfaceDescriptor = this.zzafO.getInterfaceDescriptor();
            if (!this.zzafK.zzfL().equals(interfaceDescriptor)) {
                Log.e("GmsClient", "service descriptor mismatch: " + this.zzafK.zzfL() + " vs. " + interfaceDescriptor);
                return false;
            }
            IInterface iInterfaceZzW = this.zzafK.zzW(this.zzafO);
            if (iInterfaceZzW == null || !zzj.zza(this.zzafK, 2, 3, iInterfaceZzW)) {
                return false;
            }
            Bundle bundleZzmS = this.zzafK.zzmS();
            if (zzj.zzb(this.zzafK) == null) {
                return true;
            }
            zzj.zzb(this.zzafK).onConnected(bundleZzmS);
            return true;
        } catch (RemoteException unused) {
            Log.w("GmsClient", "service probably died");
            return false;
        }
    }
}
