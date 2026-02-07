package com.google.android.gms.internal;

import android.content.Intent;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.auth.api.consent.GetConsentIntentRequest;

/* JADX INFO: loaded from: classes.dex */
public interface zzkg extends IInterface {
    Intent zza(GetConsentIntentRequest getConsentIntentRequest) throws RemoteException;
}
