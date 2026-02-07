package com.google.android.gms.common.server.response;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.common.server.converter.ConverterWrapper;
import java.util.ArrayList;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class FastJsonResponse$Field<I, O> implements SafeParcelable {
    public static final zza CREATOR = new zza();
    private final int mVersionCode;
    protected final int zzagU;
    protected final boolean zzagV;
    protected final int zzagW;
    protected final boolean zzagX;
    protected final String zzagY;
    protected final int zzagZ;
    protected final Class<? extends FastJsonResponse> zzaha;
    protected final String zzahb;
    private FieldMappingDictionary zzahc;
    private FastJsonResponse$zza<I, O> zzahd;

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    FastJsonResponse$Field(int i, int i2, boolean z, int i3, boolean z2, String str, int i4, String str2, ConverterWrapper converterWrapper) {
        this.mVersionCode = i;
        this.zzagU = i2;
        this.zzagV = z;
        this.zzagW = i3;
        this.zzagX = z2;
        this.zzagY = str;
        this.zzagZ = i4;
        FastJsonResponse$zza<I, O> fastJsonResponse$zza = null;
        if (str2 == null) {
            this.zzaha = null;
            this.zzahb = null;
        } else {
            this.zzaha = SafeParcelResponse.class;
            this.zzahb = str2;
        }
        this.zzahd = converterWrapper != null ? (FastJsonResponse$zza<I, O>) converterWrapper.zzpz() : fastJsonResponse$zza;
    }

    protected FastJsonResponse$Field(int i, boolean z, int i2, boolean z2, String str, int i3, Class<? extends FastJsonResponse> cls, FastJsonResponse$zza<I, O> fastJsonResponse$zza) {
        this.mVersionCode = 1;
        this.zzagU = i;
        this.zzagV = z;
        this.zzagW = i2;
        this.zzagX = z2;
        this.zzagY = str;
        this.zzagZ = i3;
        this.zzaha = cls;
        this.zzahb = cls == null ? null : cls.getCanonicalName();
        this.zzahd = fastJsonResponse$zza;
    }

    public static FastJsonResponse$Field zza(String str, int i, FastJsonResponse$zza<?, ?> fastJsonResponse$zza, boolean z) {
        return new FastJsonResponse$Field(fastJsonResponse$zza.zzpB(), z, fastJsonResponse$zza.zzpC(), false, str, i, null, fastJsonResponse$zza);
    }

    public static <T extends FastJsonResponse> FastJsonResponse$Field<T, T> zza(String str, int i, Class<T> cls) {
        return new FastJsonResponse$Field<>(11, false, 11, false, str, i, cls, null);
    }

    public static <T extends FastJsonResponse> FastJsonResponse$Field<ArrayList<T>, ArrayList<T>> zzb(String str, int i, Class<T> cls) {
        return new FastJsonResponse$Field<>(11, true, 11, true, str, i, cls, null);
    }

    static /* synthetic */ FastJsonResponse$zza zzc(FastJsonResponse$Field fastJsonResponse$Field) {
        return fastJsonResponse$Field.zzahd;
    }

    public static FastJsonResponse$Field<Integer, Integer> zzj(String str, int i) {
        return new FastJsonResponse$Field<>(0, false, 0, false, str, i, null, null);
    }

    public static FastJsonResponse$Field<Double, Double> zzk(String str, int i) {
        return new FastJsonResponse$Field<>(4, false, 4, false, str, i, null, null);
    }

    public static FastJsonResponse$Field<Boolean, Boolean> zzl(String str, int i) {
        return new FastJsonResponse$Field<>(6, false, 6, false, str, i, null, null);
    }

    public static FastJsonResponse$Field<String, String> zzm(String str, int i) {
        return new FastJsonResponse$Field<>(7, false, 7, false, str, i, null, null);
    }

    public static FastJsonResponse$Field<ArrayList<String>, ArrayList<String>> zzn(String str, int i) {
        return new FastJsonResponse$Field<>(7, true, 7, true, str, i, null, null);
    }

    public I convertBack(O o) {
        return this.zzahd.convertBack(o);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        zza zzaVar = CREATOR;
        return 0;
    }

    public int getVersionCode() {
        return this.mVersionCode;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Field\n");
        sb.append("            versionCode=");
        sb.append(this.mVersionCode);
        sb.append('\n');
        sb.append("                 typeIn=");
        sb.append(this.zzagU);
        sb.append('\n');
        sb.append("            typeInArray=");
        sb.append(this.zzagV);
        sb.append('\n');
        sb.append("                typeOut=");
        sb.append(this.zzagW);
        sb.append('\n');
        sb.append("           typeOutArray=");
        sb.append(this.zzagX);
        sb.append('\n');
        sb.append("        outputFieldName=");
        sb.append(this.zzagY);
        sb.append('\n');
        sb.append("      safeParcelFieldId=");
        sb.append(this.zzagZ);
        sb.append('\n');
        sb.append("       concreteTypeName=");
        sb.append(zzpM());
        sb.append('\n');
        if (zzpL() != null) {
            sb.append("     concreteType.class=");
            sb.append(zzpL().getCanonicalName());
            sb.append('\n');
        }
        sb.append("          converterName=");
        sb.append(this.zzahd == null ? "null" : this.zzahd.getClass().getCanonicalName());
        sb.append('\n');
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zza zzaVar = CREATOR;
        zza.zza(this, parcel, i);
    }

    public void zza(FieldMappingDictionary fieldMappingDictionary) {
        this.zzahc = fieldMappingDictionary;
    }

    public int zzpB() {
        return this.zzagU;
    }

    public int zzpC() {
        return this.zzagW;
    }

    public FastJsonResponse$Field<I, O> zzpG() {
        return new FastJsonResponse$Field<>(this.mVersionCode, this.zzagU, this.zzagV, this.zzagW, this.zzagX, this.zzagY, this.zzagZ, this.zzahb, zzpO());
    }

    public boolean zzpH() {
        return this.zzagV;
    }

    public boolean zzpI() {
        return this.zzagX;
    }

    public String zzpJ() {
        return this.zzagY;
    }

    public int zzpK() {
        return this.zzagZ;
    }

    public Class<? extends FastJsonResponse> zzpL() {
        return this.zzaha;
    }

    String zzpM() {
        if (this.zzahb == null) {
            return null;
        }
        return this.zzahb;
    }

    public boolean zzpN() {
        return this.zzahd != null;
    }

    ConverterWrapper zzpO() {
        if (this.zzahd == null) {
            return null;
        }
        return ConverterWrapper.zza(this.zzahd);
    }

    public Map<String, FastJsonResponse$Field<?, ?>> zzpP() {
        zzx.zzw(this.zzahb);
        zzx.zzw(this.zzahc);
        return this.zzahc.zzcw(this.zzahb);
    }
}
