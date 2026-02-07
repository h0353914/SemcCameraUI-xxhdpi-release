package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse$zza;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class StringToIntConverter implements SafeParcelable, FastJsonResponse$zza<String, Integer> {
    public static final zzb CREATOR = new zzb();
    private final int mVersionCode;
    private final HashMap<String, Integer> zzagP;
    private final HashMap<Integer, String> zzagQ;
    private final ArrayList<StringToIntConverter$Entry> zzagR;

    public StringToIntConverter() {
        this.mVersionCode = 1;
        this.zzagP = new HashMap<>();
        this.zzagQ = new HashMap<>();
        this.zzagR = null;
    }

    StringToIntConverter(int i, ArrayList<StringToIntConverter$Entry> arrayList) {
        this.mVersionCode = i;
        this.zzagP = new HashMap<>();
        this.zzagQ = new HashMap<>();
        this.zzagR = null;
        zzb(arrayList);
    }

    private void zzb(ArrayList<StringToIntConverter$Entry> arrayList) {
        for (StringToIntConverter$Entry stringToIntConverter$Entry : arrayList) {
            zzi(stringToIntConverter$Entry.zzagS, stringToIntConverter$Entry.zzagT);
        }
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse$zza
    public /* synthetic */ String convertBack(Integer num) {
        return zzb(num);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        zzb zzbVar = CREATOR;
        return 0;
    }

    int getVersionCode() {
        return this.mVersionCode;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzb zzbVar = CREATOR;
        zzb.zza(this, parcel, i);
    }

    public String zzb(Integer num) {
        String str = this.zzagQ.get(num);
        return (str == null && this.zzagP.containsKey("gms_unknown")) ? "gms_unknown" : str;
    }

    public StringToIntConverter zzi(String str, int i) {
        this.zzagP.put(str, Integer.valueOf(i));
        this.zzagQ.put(Integer.valueOf(i), str);
        return this;
    }

    ArrayList<StringToIntConverter$Entry> zzpA() {
        ArrayList<StringToIntConverter$Entry> arrayList = new ArrayList<>();
        for (String str : this.zzagP.keySet()) {
            arrayList.add(new StringToIntConverter$Entry(str, this.zzagP.get(str).intValue()));
        }
        return arrayList;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse$zza
    public int zzpB() {
        return 7;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse$zza
    public int zzpC() {
        return 0;
    }
}
