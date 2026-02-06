package com.google.android.gms.common.data;

import com.google.android.gms.common.internal.zzx;
import java.util.ArrayList;
import java.util.HashMap;

public class DataHolder$zza {
    private final HashMap<Object, Integer> zzadA;
    private boolean zzadB;
    private String zzadC;
    private final String[] zzadp;
    private final ArrayList<HashMap<String, Object>> zzady;
    private final String zzadz;

    private DataHolder$zza(String[] strArr, String str) {
        this.zzadp = (String[]) zzx.zzw(strArr);
        this.zzady = new ArrayList<>();
        this.zzadz = str;
        this.zzadA = new HashMap<>();
        this.zzadB = false;
        this.zzadC = null;
    }

    /* synthetic */ DataHolder$zza(String[] strArr, String str, DataHolder$1 dataHolder$1) {
        this(strArr, str);
    }

    static /* synthetic */ String[] zza(DataHolder$zza dataHolder$zza) {
        return dataHolder$zza.zzadp;
    }

    static /* synthetic */ ArrayList zzb(DataHolder$zza dataHolder$zza) {
        return dataHolder$zza.zzady;
    }
}
