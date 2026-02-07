package com.google.android.gms.dynamic;

import android.content.Context;
import android.view.View;
import android.view.View$OnClickListener;
import com.google.android.gms.common.GooglePlayServicesUtil;

/* JADX INFO: loaded from: classes.dex */
class zza$5 implements View$OnClickListener {
    final /* synthetic */ int zzapy;
    final /* synthetic */ Context zzry;

    zza$5(Context context, int i) {
        this.zzry = context;
        this.zzapy = i;
    }

    @Override // android.view.View$OnClickListener
    public void onClick(View view) {
        this.zzry.startActivity(GooglePlayServicesUtil.zzbj(this.zzapy));
    }
}
