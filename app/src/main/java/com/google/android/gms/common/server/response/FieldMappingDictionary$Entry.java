package com.google.android.gms.common.server.response;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class FieldMappingDictionary$Entry implements SafeParcelable {
    public static final zzd CREATOR = new zzd();
    final String className;
    final int versionCode;
    final ArrayList<FieldMappingDictionary$FieldMapPair> zzahh;

    FieldMappingDictionary$Entry(int i, String str, ArrayList<FieldMappingDictionary$FieldMapPair> arrayList) {
        this.versionCode = i;
        this.className = str;
        this.zzahh = arrayList;
    }

    FieldMappingDictionary$Entry(String str, Map<String, FastJsonResponse$Field<?, ?>> map) {
        this.versionCode = 1;
        this.className = str;
        this.zzahh = zzF(map);
    }

    private static ArrayList<FieldMappingDictionary$FieldMapPair> zzF(Map<String, FastJsonResponse$Field<?, ?>> map) {
        if (map == null) {
            return null;
        }
        ArrayList<FieldMappingDictionary$FieldMapPair> arrayList = new ArrayList<>();
        for (String str : map.keySet()) {
            arrayList.add(new FieldMappingDictionary$FieldMapPair(str, map.get(str)));
        }
        return arrayList;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        zzd zzdVar = CREATOR;
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzd zzdVar = CREATOR;
        zzd.zza(this, parcel, i);
    }

    HashMap<String, FastJsonResponse$Field<?, ?>> zzpU() {
        HashMap<String, FastJsonResponse$Field<?, ?>> map = new HashMap<>();
        int size = this.zzahh.size();
        for (int i = 0; i < size; i++) {
            FieldMappingDictionary$FieldMapPair fieldMappingDictionary$FieldMapPair = this.zzahh.get(i);
            map.put(fieldMappingDictionary$FieldMapPair.key, fieldMappingDictionary$FieldMapPair.zzahi);
        }
        return map;
    }
}
