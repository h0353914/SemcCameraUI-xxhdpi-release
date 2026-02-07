package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.gms.common.internal.zzx;

/* JADX INFO: loaded from: classes.dex */
final class zzlm$zza extends Handler {
    final /* synthetic */ zzlm zzacH;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzlm$zza(zzlm zzlmVar, Looper looper) {
        super(looper);
        this.zzacH = zzlmVar;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        zzx.zzaa(message.what == 1);
        this.zzacH.zzb((zzlm$zzb) message.obj);
    }
}
