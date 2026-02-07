package com.google.android.gms.internal;

import android.os.Binder;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzlr<T> {
    private static zzlr$zza zzadc = null;
    private static int zzadd = 0;
    private static String zzade = "com.google.android.providers.gsf.permission.READ_GSERVICES";
    private static final Object zzpy = new Object();
    private T zzOX = null;
    protected final String zzue;
    protected final T zzuf;

    protected zzlr(String str, T t) {
        this.zzue = str;
        this.zzuf = t;
    }

    public static boolean isInitialized() {
        return zzadc != null;
    }

    public static zzlr<Float> zza(String str, Float f) {
        return new zzlr$4(str, f);
    }

    public static zzlr<Integer> zza(String str, Integer num) {
        return new zzlr$3(str, num);
    }

    public static zzlr<Long> zza(String str, Long l) {
        return new zzlr$2(str, l);
    }

    public static zzlr<Boolean> zzg(String str, boolean z) {
        return new zzlr$1(str, Boolean.valueOf(z));
    }

    public static int zzoo() {
        return zzadd;
    }

    static /* synthetic */ zzlr$zza zzoq() {
        return zzadc;
    }

    public static zzlr<String> zzu(String str, String str2) {
        return new zzlr$5(str, str2);
    }

    public final T get() {
        return this.zzOX != null ? this.zzOX : zzbY(this.zzue);
    }

    protected abstract T zzbY(String str);

    public final T zzop() {
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            return get();
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }
}
