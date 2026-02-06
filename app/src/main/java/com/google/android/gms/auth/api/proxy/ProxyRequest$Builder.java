package com.google.android.gms.auth.api.proxy;

import android.os.Bundle;
import android.util.Patterns;
import com.google.android.gms.common.internal.zzx;

public class ProxyRequest$Builder {
    private String zzSL;
    private int zzSM = ProxyRequest.HTTP_METHOD_GET;
    private long zzSN = 3000;
    private byte[] zzSO = null;
    private Bundle zzSP = new Bundle();

    public ProxyRequest$Builder(String str) {
        zzx.zzcr(str);
        if (Patterns.WEB_URL.matcher(str).matches()) {
            this.zzSL = str;
            return;
        }
        throw new IllegalArgumentException("The supplied url [ " + str + "] is not match Patterns.WEB_URL!");
    }

    public ProxyRequest build() {
        if (this.zzSO == null) {
            this.zzSO = new byte[0];
        }
        return new ProxyRequest(2, this.zzSL, this.zzSM, this.zzSN, this.zzSO, this.zzSP);
    }

    public ProxyRequest$Builder putHeader(String str, String str2) {
        zzx.zzh(str, "Header name cannot be null or empty!");
        Bundle bundle = this.zzSP;
        if (str2 == null) {
            str2 = "";
        }
        bundle.putString(str, str2);
        return this;
    }

    public ProxyRequest$Builder setBody(byte[] bArr) {
        this.zzSO = bArr;
        return this;
    }

    public ProxyRequest$Builder setHttpMethod(int i) {
        zzx.zzb(i >= 0 && i <= ProxyRequest.LAST_CODE, "Unrecognized http method code.");
        this.zzSM = i;
        return this;
    }

    public ProxyRequest$Builder setTimeoutMillis(long j) {
        zzx.zzb(j >= 0, "The specified timeout must be non-negative.");
        this.zzSN = j;
        return this;
    }
}
