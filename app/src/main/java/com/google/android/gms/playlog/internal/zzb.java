package com.google.android.gms.playlog.internal;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class zzb {
    private final ArrayList<zzb$zza> zzaRK;
    private int zzaRL;

    public zzb() {
        this(100);
    }

    public zzb(int i) {
        this.zzaRK = new ArrayList<>();
        this.zzaRL = i;
    }

    private void zzBu() {
        while (getSize() > getCapacity()) {
            this.zzaRK.remove(0);
        }
    }

    public void clear() {
        this.zzaRK.clear();
    }

    public int getCapacity() {
        return this.zzaRL;
    }

    public int getSize() {
        return this.zzaRK.size();
    }

    public boolean isEmpty() {
        return this.zzaRK.isEmpty();
    }

    public ArrayList<zzb$zza> zzBt() {
        return this.zzaRK;
    }

    public void zza(PlayLoggerContext playLoggerContext, LogEvent logEvent) {
        this.zzaRK.add(new zzb$zza(playLoggerContext, logEvent, null));
        zzBu();
    }
}
