package com.google.android.gms.internal;

import android.content.IntentSender$SendIntentException;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesUtil;

class zzlp$zzb implements Runnable {
    final /* synthetic */ zzlp zzacT;
    private final int zzacU;
    private final ConnectionResult zzacV;

    public zzlp$zzb(zzlp zzlpVar, int i, ConnectionResult connectionResult) {
        this.zzacT = zzlpVar;
        this.zzacU = i;
        this.zzacV = connectionResult;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!zzlp.zza(this.zzacT) || zzlp.zzb(this.zzacT)) {
            return;
        }
        zzlp.zza(this.zzacT, true);
        zzlp.zza(this.zzacT, this.zzacU);
        zzlp.zza(this.zzacT, this.zzacV);
        if (this.zzacV.hasResolution()) {
            try {
                this.zzacV.startResolutionForResult(this.zzacT.getActivity(), 1 + ((this.zzacT.getActivity().getSupportFragmentManager().getFragments().indexOf(this.zzacT) + 1) << 16));
                return;
            } catch (IntentSender$SendIntentException unused) {
                zzlp.zzc(this.zzacT);
                return;
            }
        }
        if (zzlp.zzol().isUserResolvableError(this.zzacV.getErrorCode())) {
            GooglePlayServicesUtil.showErrorDialogFragment(this.zzacV.getErrorCode(), this.zzacT.getActivity(), this.zzacT, 2, this.zzacT);
        } else if (this.zzacV.getErrorCode() != 18) {
            zzlp.zza(this.zzacT, this.zzacU, this.zzacV);
        } else {
            zzlp.zza(this.zzacT, zzll.zza(this.zzacT.getActivity().getApplicationContext(), new zzlp$zzb$1(this, zzlp.zzol().zza(this.zzacT.getActivity(), this.zzacT))));
        }
    }
}
