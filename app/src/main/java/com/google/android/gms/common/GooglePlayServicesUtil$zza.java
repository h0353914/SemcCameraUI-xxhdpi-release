package com.google.android.gms.common;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;

class GooglePlayServicesUtil$zza extends Handler {
    private final Context zzqZ;

    GooglePlayServicesUtil$zza(Context context) {
        super(Looper.myLooper() == null ? Looper.getMainLooper() : Looper.myLooper());
        this.zzqZ = context.getApplicationContext();
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        if (message.what != 1) {
            Log.w("GooglePlayServicesUtil", "Don't know how to handle this message: " + message.what);
            return;
        }
        int iIsGooglePlayServicesAvailable = GooglePlayServicesUtil.isGooglePlayServicesAvailable(this.zzqZ);
        if (GooglePlayServicesUtil.isUserRecoverableError(iIsGooglePlayServicesAvailable)) {
            GooglePlayServicesUtil.zzb(iIsGooglePlayServicesAvailable, this.zzqZ);
        }
    }
}
