package com.google.android.gms.playlog.internal;

import android.os.IInterface;
import android.os.RemoteException;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface zza extends IInterface {
    void zza(String str, PlayLoggerContext playLoggerContext, LogEvent logEvent) throws RemoteException;

    void zza(String str, PlayLoggerContext playLoggerContext, List<LogEvent> list) throws RemoteException;

    void zza(String str, PlayLoggerContext playLoggerContext, byte[] bArr) throws RemoteException;
}
