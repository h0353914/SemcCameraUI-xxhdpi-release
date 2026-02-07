package com.google.android.gms.common.server.response;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzx;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class FieldMappingDictionary implements SafeParcelable {
    public static final zzc CREATOR = new zzc();
    private final int mVersionCode;
    private final HashMap<String, Map<String, FastJsonResponse$Field<?, ?>>> zzahe;
    private final ArrayList<FieldMappingDictionary$Entry> zzahf;
    private final String zzahg;

    FieldMappingDictionary(int i, ArrayList<FieldMappingDictionary$Entry> arrayList, String str) {
        this.mVersionCode = i;
        this.zzahf = null;
        this.zzahe = zzc(arrayList);
        this.zzahg = (String) zzx.zzw(str);
        zzpQ();
    }

    public FieldMappingDictionary(Class<? extends FastJsonResponse> cls) {
        this.mVersionCode = 1;
        this.zzahf = null;
        this.zzahe = new HashMap<>();
        this.zzahg = cls.getCanonicalName();
    }

    private static HashMap<String, Map<String, FastJsonResponse$Field<?, ?>>> zzc(ArrayList<FieldMappingDictionary$Entry> arrayList) {
        HashMap<String, Map<String, FastJsonResponse$Field<?, ?>>> map = new HashMap<>();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            FieldMappingDictionary$Entry fieldMappingDictionary$Entry = arrayList.get(i);
            map.put(fieldMappingDictionary$Entry.className, fieldMappingDictionary$Entry.zzpU());
        }
        return map;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        zzc zzcVar = CREATOR;
        return 0;
    }

    int getVersionCode() {
        return this.mVersionCode;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        for (String str : this.zzahe.keySet()) {
            sb.append(str);
            sb.append(":\n");
            Map<String, FastJsonResponse$Field<?, ?>> map = this.zzahe.get(str);
            for (String str2 : map.keySet()) {
                sb.append("  ");
                sb.append(str2);
                sb.append(": ");
                sb.append(map.get(str2));
            }
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzc zzcVar = CREATOR;
        zzc.zza(this, parcel, i);
    }

    public void zza(Class<? extends FastJsonResponse> cls, Map<String, FastJsonResponse$Field<?, ?>> map) {
        this.zzahe.put(cls.getCanonicalName(), map);
    }

    public boolean zzb(Class<? extends FastJsonResponse> cls) {
        return this.zzahe.containsKey(cls.getCanonicalName());
    }

    public Map<String, FastJsonResponse$Field<?, ?>> zzcw(String str) {
        return this.zzahe.get(str);
    }

    public void zzpQ() {
        Iterator<String> it = this.zzahe.keySet().iterator();
        while (it.hasNext()) {
            Map<String, FastJsonResponse$Field<?, ?>> map = this.zzahe.get(it.next());
            Iterator<String> it2 = map.keySet().iterator();
            while (it2.hasNext()) {
                map.get(it2.next()).zza(this);
            }
        }
    }

    public void zzpR() {
        for (String str : this.zzahe.keySet()) {
            Map<String, FastJsonResponse$Field<?, ?>> map = this.zzahe.get(str);
            HashMap map2 = new HashMap();
            for (String str2 : map.keySet()) {
                map2.put(str2, map.get(str2).zzpG());
            }
            this.zzahe.put(str, map2);
        }
    }

    ArrayList<FieldMappingDictionary$Entry> zzpS() {
        ArrayList<FieldMappingDictionary$Entry> arrayList = new ArrayList<>();
        for (String str : this.zzahe.keySet()) {
            arrayList.add(new FieldMappingDictionary$Entry(str, this.zzahe.get(str)));
        }
        return arrayList;
    }

    public String zzpT() {
        return this.zzahg;
    }
}
