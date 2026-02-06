package com.google.android.gms.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.GoogleApiClient$OnConnectionFailedListener;
import java.io.FileDescriptor;
import java.io.PrintWriter;

class zzlp$zza implements GoogleApiClient$OnConnectionFailedListener {
    public final int zzacQ;
    public final GoogleApiClient zzacR;
    public final GoogleApiClient$OnConnectionFailedListener zzacS;
    final /* synthetic */ zzlp zzacT;

    public zzlp$zza(zzlp zzlpVar, int i, GoogleApiClient googleApiClient, GoogleApiClient$OnConnectionFailedListener googleApiClient$OnConnectionFailedListener) {
        this.zzacT = zzlpVar;
        this.zzacQ = i;
        this.zzacR = googleApiClient;
        this.zzacS = googleApiClient$OnConnectionFailedListener;
        googleApiClient.registerConnectionFailedListener(this);
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.append((CharSequence) str).append("GoogleApiClient #").print(this.zzacQ);
        printWriter.println(":");
        this.zzacR.dump(str + "  ", fileDescriptor, printWriter, strArr);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient$OnConnectionFailedListener
    public void onConnectionFailed(ConnectionResult connectionResult) {
        zzlp.zzd(this.zzacT).post(new zzlp$zzb(this.zzacT, this.zzacQ, connectionResult));
    }

    public void zzom() {
        this.zzacR.unregisterConnectionFailedListener(this);
        this.zzacR.disconnect();
    }
}
