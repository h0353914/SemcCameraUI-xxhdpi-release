package com.google.android.gms.security;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.internal.zzx;
import java.lang.reflect.Method;

public class ProviderInstaller {
    public static final String PROVIDER_NAME = "GmsCore_OpenSSL";
    private static Method zzaUV;
    private static final GoogleApiAvailability zzacJ = GoogleApiAvailability.getInstance();
    private static final Object zzpy = new Object();

    public static void installIfNeeded(Context context) throws GooglePlayServicesRepairableException, GooglePlayServicesNotAvailableException {
        zzx.zzb(context, "Context must not be null");
        zzacJ.zzab(context);
        Context remoteContext = GooglePlayServicesUtil.getRemoteContext(context);
        if (remoteContext == null) {
            Log.e("ProviderInstaller", "Failed to get remote context");
            throw new GooglePlayServicesNotAvailableException(8);
        }
        synchronized (zzpy) {
            try {
                try {
                    if (zzaUV == null) {
                        zzaM(remoteContext);
                    }
                    zzaUV.invoke(null, remoteContext);
                } catch (Exception e) {
                    Log.e("ProviderInstaller", "Failed to install provider: " + e.getMessage());
                    throw new GooglePlayServicesNotAvailableException(8);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void installIfNeededAsync(Context context, ProviderInstaller$ProviderInstallListener providerInstaller$ProviderInstallListener) {
        zzx.zzb(context, "Context must not be null");
        zzx.zzb(providerInstaller$ProviderInstallListener, "Listener must not be null");
        zzx.zzci("Must be called on the UI thread");
        new ProviderInstaller$1(context, providerInstaller$ProviderInstallListener).execute(new Void[0]);
    }

    static /* synthetic */ GoogleApiAvailability zzCd() {
        return zzacJ;
    }

    private static void zzaM(Context context) throws NoSuchMethodException, ClassNotFoundException {
        zzaUV = context.getClassLoader().loadClass("com.google.android.gms.common.security.ProviderInstallerImpl").getMethod("insertProvider", Context.class);
    }
}
