package com.google.android.gms.dynamic;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes.dex */
class zza$4 implements zza$zza {
    final /* synthetic */ zza zzapr;
    final /* synthetic */ Bundle zzapu;
    final /* synthetic */ FrameLayout zzapv;
    final /* synthetic */ LayoutInflater zzapw;
    final /* synthetic */ ViewGroup zzapx;

    zza$4(zza zzaVar, FrameLayout frameLayout, LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.zzapr = zzaVar;
        this.zzapv = frameLayout;
        this.zzapw = layoutInflater;
        this.zzapx = viewGroup;
        this.zzapu = bundle;
    }

    @Override // com.google.android.gms.dynamic.zza$zza
    public int getState() {
        return 2;
    }

    @Override // com.google.android.gms.dynamic.zza$zza
    public void zzb(LifecycleDelegate lifecycleDelegate) {
        this.zzapv.removeAllViews();
        this.zzapv.addView(zza.zzb(this.zzapr).onCreateView(this.zzapw, this.zzapx, this.zzapu));
    }
}
