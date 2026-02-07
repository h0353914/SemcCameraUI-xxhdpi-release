package com.google.android.gms.common;

import android.content.Intent;

/* JADX INFO: loaded from: classes.dex */
public class GooglePlayServicesRepairableException extends UserRecoverableException {
    private final int zzRy;

    GooglePlayServicesRepairableException(int i, String str, Intent intent) {
        super(str, intent);
        this.zzRy = i;
    }

    public int getConnectionStatusCode() {
        return this.zzRy;
    }
}
