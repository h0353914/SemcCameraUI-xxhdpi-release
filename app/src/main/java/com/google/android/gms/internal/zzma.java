package com.google.android.gms.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzlb;

/* loaded from: /home/h/tmp/SemcCameraUI-xxhdpi-release/SemcCameraUI-xxhdpi-release/build/apk/classes.dex */
abstract class zzma<R extends Result> extends zzlb.zza<R, zzmb> {

    static abstract class zza extends zzma<Status> {
        public zza(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzlc
        /* renamed from: zzd, reason: merged with bridge method [inline-methods] */
        public Status zzc(Status status) {
            return status;
        }
    }

    public zzma(GoogleApiClient googleApiClient) {
        super(zzlx.zzRk, googleApiClient);
    }
}
