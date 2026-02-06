package com.google.android.gms.common.server.response;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class FieldMappingDictionary$FieldMapPair implements SafeParcelable {
    public static final zzb CREATOR = new zzb();
    final String key;
    final int versionCode;
    final FastJsonResponse$Field<?, ?> zzahi;

    FieldMappingDictionary$FieldMapPair(int i, String str, FastJsonResponse$Field<?, ?> fastJsonResponse$Field) {
        this.versionCode = i;
        this.key = str;
        this.zzahi = fastJsonResponse$Field;
    }

    FieldMappingDictionary$FieldMapPair(String str, FastJsonResponse$Field<?, ?> fastJsonResponse$Field) {
        this.versionCode = 1;
        this.key = str;
        this.zzahi = fastJsonResponse$Field;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        zzb zzbVar = CREATOR;
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzb zzbVar = CREATOR;
        zzb.zza(this, parcel, i);
    }
}
