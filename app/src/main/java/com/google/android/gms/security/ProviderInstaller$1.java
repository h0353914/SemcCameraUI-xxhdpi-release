package com.google.android.gms.security;

import android.content.Context;
import android.os.AsyncTask;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;

/* JADX INFO: loaded from: classes.dex */
class ProviderInstaller$1 extends AsyncTask<Void, Void, Integer> {
    final /* synthetic */ ProviderInstaller$ProviderInstallListener zzaUW;
    final /* synthetic */ Context zzry;

    ProviderInstaller$1(Context context, ProviderInstaller$ProviderInstallListener providerInstaller$ProviderInstallListener) {
        this.zzry = context;
        this.zzaUW = providerInstaller$ProviderInstallListener;
    }

    @Override // android.os.AsyncTask
    protected /* synthetic */ Integer doInBackground(Void[] voidArr) {
        return zzc(voidArr);
    }

    @Override // android.os.AsyncTask
    protected /* synthetic */ void onPostExecute(Integer num) {
        zze(num);
    }

    protected Integer zzc(Void... voidArr) {
        int connectionStatusCode;
        try {
            ProviderInstaller.installIfNeeded(this.zzry);
            connectionStatusCode = 0;
        } catch (GooglePlayServicesNotAvailableException e) {
            connectionStatusCode = e.errorCode;
        } catch (GooglePlayServicesRepairableException e2) {
            connectionStatusCode = e2.getConnectionStatusCode();
        }
        return Integer.valueOf(connectionStatusCode);
    }

    protected void zze(Integer num) {
        if (num.intValue() == 0) {
            this.zzaUW.onProviderInstalled();
        } else {
            this.zzaUW.onProviderInstallFailed(num.intValue(), ProviderInstaller.zzCd().zza(this.zzry, num.intValue(), "pi"));
        }
    }
}
