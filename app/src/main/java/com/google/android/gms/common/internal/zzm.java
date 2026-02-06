package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.Handler$Callback;
import android.os.Message;
import java.util.HashMap;

final class zzm extends zzl implements Handler$Callback {
    private final Handler mHandler;
    private final HashMap<zzm$zza, zzm$zzb> zzafY = new HashMap<>();
    private final com.google.android.gms.common.stats.zzb zzafZ = com.google.android.gms.common.stats.zzb.zzqh();
    private final long zzaga = 5000;
    private final Context zzqZ;

    zzm(Context context) {
        this.zzqZ = context.getApplicationContext();
        this.mHandler = new Handler(context.getMainLooper(), this);
    }

    static /* synthetic */ HashMap zza(zzm zzmVar) {
        return zzmVar.zzafY;
    }

    private boolean zza(zzm$zza zzm_zza, ServiceConnection serviceConnection, String str) {
        boolean zIsBound;
        zzx.zzb(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.zzafY) {
            zzm$zzb zzm_zzb = this.zzafY.get(zzm_zza);
            if (zzm_zzb != null) {
                this.mHandler.removeMessages(0, zzm_zzb);
                if (!zzm_zzb.zza(serviceConnection)) {
                    zzm_zzb.zza(serviceConnection, str);
                    switch (zzm_zzb.getState()) {
                        case 1:
                            serviceConnection.onServiceConnected(zzm_zzb.getComponentName(), zzm_zzb.getBinder());
                            break;
                        case 2:
                            zzm_zzb.zzcm(str);
                            break;
                    }
                } else {
                    throw new IllegalStateException("Trying to bind a GmsServiceConnection that was already connected before.  config=" + zzm_zza);
                }
            } else {
                zzm_zzb = new zzm$zzb(this, zzm_zza);
                zzm_zzb.zza(serviceConnection, str);
                zzm_zzb.zzcm(str);
                this.zzafY.put(zzm_zza, zzm_zzb);
            }
            zIsBound = zzm_zzb.isBound();
        }
        return zIsBound;
    }

    static /* synthetic */ Context zzb(zzm zzmVar) {
        return zzmVar.zzqZ;
    }

    private void zzb(zzm$zza zzm_zza, ServiceConnection serviceConnection, String str) {
        zzx.zzb(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.zzafY) {
            zzm$zzb zzm_zzb = this.zzafY.get(zzm_zza);
            if (zzm_zzb == null) {
                throw new IllegalStateException("Nonexistent connection status for service config: " + zzm_zza);
            }
            if (!zzm_zzb.zza(serviceConnection)) {
                throw new IllegalStateException("Trying to unbind a GmsServiceConnection  that was not bound before.  config=" + zzm_zza);
            }
            zzm_zzb.zzb(serviceConnection, str);
            if (zzm_zzb.zzpn()) {
                this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(0, zzm_zzb), this.zzaga);
            }
        }
    }

    static /* synthetic */ com.google.android.gms.common.stats.zzb zzc(zzm zzmVar) {
        return zzmVar.zzafZ;
    }

    @Override // android.os.Handler$Callback
    public boolean handleMessage(Message message) {
        if (message.what != 0) {
            return false;
        }
        zzm$zzb zzm_zzb = (zzm$zzb) message.obj;
        synchronized (this.zzafY) {
            if (zzm_zzb.zzpn()) {
                if (zzm_zzb.isBound()) {
                    zzm_zzb.zzcn("GmsClientSupervisor");
                }
                this.zzafY.remove(zzm$zzb.zza(zzm_zzb));
            }
        }
        return true;
    }

    @Override // com.google.android.gms.common.internal.zzl
    public boolean zza(ComponentName componentName, ServiceConnection serviceConnection, String str) {
        return zza(new zzm$zza(componentName), serviceConnection, str);
    }

    @Override // com.google.android.gms.common.internal.zzl
    public boolean zza(String str, ServiceConnection serviceConnection, String str2) {
        return zza(new zzm$zza(str), serviceConnection, str2);
    }

    @Override // com.google.android.gms.common.internal.zzl
    public void zzb(ComponentName componentName, ServiceConnection serviceConnection, String str) {
        zzb(new zzm$zza(componentName), serviceConnection, str);
    }

    @Override // com.google.android.gms.common.internal.zzl
    public void zzb(String str, ServiceConnection serviceConnection, String str2) {
        zzb(new zzm$zza(str), serviceConnection, str2);
    }
}
