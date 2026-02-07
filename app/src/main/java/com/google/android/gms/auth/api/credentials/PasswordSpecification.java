package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public final class PasswordSpecification implements SafeParcelable {
    public static final zze CREATOR = new zze();
    public static final PasswordSpecification zzSt = new PasswordSpecification$zza().zzg(12, 16).zzbD("abcdefghijkmnopqrstxyzABCDEFGHJKLMNPQRSTXY3456789").zzf("abcdefghijkmnopqrstxyz", 1).zzf("ABCDEFGHJKLMNPQRSTXY", 1).zzf("3456789", 1).zzlK();
    public static final PasswordSpecification zzSu = new PasswordSpecification$zza().zzg(12, 16).zzbD("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890").zzf("abcdefghijklmnopqrstuvwxyz", 1).zzf("ABCDEFGHIJKLMNOPQRSTUVWXYZ", 1).zzf("1234567890", 1).zzlK();
    final int mVersionCode;
    final String zzSv;
    final List<String> zzSw;
    final List<Integer> zzSx;
    final int zzSy;
    final int zzSz;
    private final int[] zzSA = zzlJ();
    private final Random zzts = new SecureRandom();

    PasswordSpecification(int i, String str, List<String> list, List<Integer> list2, int i2, int i3) {
        this.mVersionCode = i;
        this.zzSv = str;
        this.zzSw = Collections.unmodifiableList(list);
        this.zzSx = Collections.unmodifiableList(list2);
        this.zzSy = i2;
        this.zzSz = i3;
    }

    private int zza(char c) {
        return c - ' ';
    }

    private static String zzb(Collection<Character> collection) {
        char[] cArr = new char[collection.size()];
        Iterator<Character> it = collection.iterator();
        int i = 0;
        while (it.hasNext()) {
            cArr[i] = it.next().charValue();
            i++;
        }
        return new String(cArr);
    }

    private static boolean zzb(int i, int i2, int i3) {
        return i < i2 || i > i3;
    }

    static /* synthetic */ String zzc(Collection collection) {
        return zzb(collection);
    }

    static /* synthetic */ boolean zzc(int i, int i2, int i3) {
        return zzb(i, i2, i3);
    }

    private int[] zzlJ() {
        int[] iArr = new int[95];
        Arrays.fill(iArr, -1);
        Iterator<String> it = this.zzSw.iterator();
        int i = 0;
        while (it.hasNext()) {
            for (char c : it.next().toCharArray()) {
                iArr[zza(c)] = i;
            }
            i++;
        }
        return iArr;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zze.zza(this, parcel, i);
    }
}
