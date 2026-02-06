package com.google.android.gms.auth.api.credentials;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;

public class PasswordSpecification$zza {
    private final TreeSet<Character> zzSB = new TreeSet<>();
    private final List<String> zzSw = new ArrayList();
    private final List<Integer> zzSx = new ArrayList();
    private int zzSy = 12;
    private int zzSz = 16;

    private void zzlL() {
        Iterator<Integer> it = this.zzSx.iterator();
        int iIntValue = 0;
        while (it.hasNext()) {
            iIntValue += it.next().intValue();
        }
        if (iIntValue > this.zzSz) {
            throw new PasswordSpecification$zzb("required character count cannot be greater than the max password size");
        }
    }

    private void zzlM() {
        boolean[] zArr = new boolean[95];
        Iterator<String> it = this.zzSw.iterator();
        while (it.hasNext()) {
            for (char c : it.next().toCharArray()) {
                int i = c - ' ';
                if (zArr[i]) {
                    throw new PasswordSpecification$zzb("character " + c + " occurs in more than one required character set");
                }
                zArr[i] = true;
            }
        }
    }

    private TreeSet<Character> zzr(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            throw new PasswordSpecification$zzb(str2 + " cannot be null or empty");
        }
        TreeSet<Character> treeSet = new TreeSet<>();
        for (char c : str.toCharArray()) {
            if (PasswordSpecification.zzc(c, 32, 126)) {
                throw new PasswordSpecification$zzb(str2 + " must only contain ASCII printable characters");
            }
            treeSet.add(Character.valueOf(c));
        }
        return treeSet;
    }

    public PasswordSpecification$zza zzbD(String str) {
        this.zzSB.addAll(zzr(str, "allowedChars"));
        return this;
    }

    public PasswordSpecification$zza zzf(String str, int i) {
        if (i < 1) {
            throw new PasswordSpecification$zzb("count must be at least 1");
        }
        this.zzSw.add(PasswordSpecification.zzc(zzr(str, "requiredChars")));
        this.zzSx.add(Integer.valueOf(i));
        return this;
    }

    public PasswordSpecification$zza zzg(int i, int i2) {
        if (i < 1) {
            throw new PasswordSpecification$zzb("minimumSize must be at least 1");
        }
        if (i > i2) {
            throw new PasswordSpecification$zzb("maximumSize must be greater than or equal to minimumSize");
        }
        this.zzSy = i;
        this.zzSz = i2;
        return this;
    }

    public PasswordSpecification zzlK() {
        if (this.zzSB.isEmpty()) {
            throw new PasswordSpecification$zzb("no allowed characters specified");
        }
        zzlL();
        zzlM();
        return new PasswordSpecification(1, PasswordSpecification.zzc(this.zzSB), this.zzSw, this.zzSx, this.zzSy, this.zzSz);
    }
}
