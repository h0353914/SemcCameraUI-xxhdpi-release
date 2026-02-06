package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;

public class zzlc$zza<R extends Result> extends Handler {
    public zzlc$zza() {
        this(Looper.getMainLooper());
    }

    public zzlc$zza(Looper looper) {
        super(looper);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        switch (message.what) {
            case 1:
                Pair pair = (Pair) message.obj;
                zzb((ResultCallback) pair.first, (Result) pair.second);
                break;
            case 2:
                ((zzlc) message.obj).zzw(Status.zzabe);
                break;
            default:
                Log.wtf("BasePendingResult", "Don't know how to handle message: " + message.what, new Exception());
                break;
        }
    }

    public void zza(ResultCallback<? super R> resultCallback, R r) {
        sendMessage(obtainMessage(1, new Pair(resultCallback, r)));
    }

    public void zza(zzlc<R> zzlcVar, long j) {
        sendMessageDelayed(obtainMessage(2, zzlcVar), j);
    }

    protected void zzb(ResultCallback<? super R> resultCallback, R r) {
        try {
            resultCallback.onResult(r);
        } catch (RuntimeException e) {
            zzlc.zzd(r);
            throw e;
        }
    }

    public void zznM() {
        removeMessages(2);
    }
}
