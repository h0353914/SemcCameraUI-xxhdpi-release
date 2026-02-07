package com.google.android.gms.common.api;

import android.os.IBinder;
import com.google.android.gms.common.internal.zzp;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public interface Api$zzb {
    void disconnect();

    void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    boolean isConnected();

    void zza(GoogleApiClient$zza googleApiClient$zza);

    void zza(zzp zzpVar);

    void zza(zzp zzpVar, Set<Scope> set);

    boolean zzlN();

    IBinder zznz();
}
