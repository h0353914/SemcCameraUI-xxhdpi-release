package com.google.android.gms.common.internal;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public abstract class zze {
    public static final zze zzaeL = zza("\t\n\u000b\f\r \u0085\u1680\u2028\u2029\u205f\u3000 \u180e ").zza(zza(8192, 8202));
    public static final zze zzaeM = zza("\t\n\u000b\f\r \u0085\u1680\u2028\u2029\u205f\u3000").zza(zza(8192, 8198)).zza(zza(8200, 8202));
    public static final zze zzaeN = zza(0, 127);
    public static final zze zzaeO;
    public static final zze zzaeP;
    public static final zze zzaeQ;
    public static final zze zzaeR;
    public static final zze zzaeS;
    public static final zze zzaeT;
    public static final zze zzaeU;
    public static final zze zzaeV;
    public static final zze zzaeW;
    public static final zze zzaeX;
    public static final zze zzaeY;
    public static final zze zzaeZ;

    static {
        zze zzeVarZza = zza('0', '9');
        zze zzeVarZza2 = zzeVarZza;
        for (char c : "٠۰߀०০੦૦୦௦౦೦൦๐໐༠၀႐០᠐᥆᧐᭐᮰᱀᱐꘠꣐꤀꩐０".toCharArray()) {
            zzeVarZza2 = zzeVarZza2.zza(zza(c, (char) (c + '\t')));
        }
        zzaeO = zzeVarZza2;
        zzaeP = zza('\t', '\r').zza(zza((char) 28, ' ')).zza(zzc((char) 5760)).zza(zzc((char) 6158)).zza(zza((char) 8192, (char) 8198)).zza(zza((char) 8200, (char) 8203)).zza(zza((char) 8232, (char) 8233)).zza(zzc((char) 8287)).zza(zzc((char) 12288));
        zzaeQ = new zze$1();
        zzaeR = new zze$5();
        zzaeS = new zze$6();
        zzaeT = new zze$7();
        zzaeU = new zze$8();
        zzaeV = zza((char) 0, (char) 31).zza(zza((char) 127, (char) 159));
        zzaeW = zza((char) 0, ' ').zza(zza((char) 127, (char) 160)).zza(zzc((char) 173)).zza(zza((char) 1536, (char) 1539)).zza(zza("\u06dd\u070f\u1680឴឵\u180e")).zza(zza((char) 8192, (char) 8207)).zza(zza((char) 8232, (char) 8239)).zza(zza((char) 8287, (char) 8292)).zza(zza((char) 8298, (char) 8303)).zza(zzc((char) 12288)).zza(zza((char) 55296, (char) 63743)).zza(zza("\ufeff\ufff9\ufffa\ufffb"));
        zzaeX = zza((char) 0, (char) 1273).zza(zzc((char) 1470)).zza(zza((char) 1488, (char) 1514)).zza(zzc((char) 1523)).zza(zzc((char) 1524)).zza(zza((char) 1536, (char) 1791)).zza(zza((char) 1872, (char) 1919)).zza(zza((char) 3584, (char) 3711)).zza(zza((char) 7680, (char) 8367)).zza(zza((char) 8448, (char) 8506)).zza(zza((char) 64336, (char) 65023)).zza(zza((char) 65136, (char) 65279)).zza(zza((char) 65377, (char) 65500));
        zzaeY = new zze$9();
        zzaeZ = new zze$10();
    }

    public static zze zza(char c, char c2) {
        zzx.zzaa(c2 >= c);
        return new zze$4(c, c2);
    }

    public static zze zza(CharSequence charSequence) {
        switch (charSequence.length()) {
            case 0:
                return zzaeZ;
            case 1:
                return zzc(charSequence.charAt(0));
            case 2:
                return new zze$2(charSequence.charAt(0), charSequence.charAt(1));
            default:
                char[] charArray = charSequence.toString().toCharArray();
                Arrays.sort(charArray);
                return new zze$3(charArray);
        }
    }

    public static zze zzc(char c) {
        return new zze$11(c);
    }

    public zze zza(zze zzeVar) {
        return new zze$zza(Arrays.asList(this, (zze) zzx.zzw(zzeVar)));
    }

    public boolean zzb(CharSequence charSequence) {
        for (int length = charSequence.length() - 1; length >= 0; length--) {
            if (!zzd(charSequence.charAt(length))) {
                return false;
            }
        }
        return true;
    }

    public abstract boolean zzd(char c);
}
