package com.google.android.gms.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api$zzb;
import com.google.android.gms.common.api.GoogleApiClient$zza;
import java.util.Map;

class zzlg$zze extends zzlg$zzi {
    final /* synthetic */ zzlg zzabL;
    private final Map<Api$zzb, GoogleApiClient$zza> zzabU;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzlg$zze(zzlg zzlgVar, Map<Api$zzb, GoogleApiClient$zza> map) {
        super(zzlgVar, null);
        this.zzabL = zzlgVar;
        this.zzabU = map;
    }

    @Override // com.google.android.gms.internal.zzlg$zzi
    public void zznO() {
        int iIsGooglePlayServicesAvailable = zzlg.zzb(this.zzabL).isGooglePlayServicesAvailable(zzlg.zza(this.zzabL));
        if (iIsGooglePlayServicesAvailable != 0) {
            zzlg.zzd(this.zzabL).zza(new zzlg$zze$1(this, this.zzabL, new ConnectionResult(iIsGooglePlayServicesAvailable, null)));
            return;
        }
        if (zzlg.zze(this.zzabL)) {
            zzlg.zzf(this.zzabL).connect();
        }
        for (Api$zzb api$zzb : this.zzabU.keySet()) {
            api$zzb.zza(this.zzabU.get(api$zzb));
        }
    }
}
