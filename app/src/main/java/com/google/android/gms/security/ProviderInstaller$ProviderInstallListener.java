package com.google.android.gms.security;

import android.content.Intent;

/* JADX INFO: loaded from: classes.dex */
public interface ProviderInstaller$ProviderInstallListener {
    void onProviderInstallFailed(int i, Intent intent);

    void onProviderInstalled();
}
