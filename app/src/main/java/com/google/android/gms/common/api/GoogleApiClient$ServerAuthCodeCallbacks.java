package com.google.android.gms.common.api;

import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public interface GoogleApiClient$ServerAuthCodeCallbacks {
    GoogleApiClient$ServerAuthCodeCallbacks$CheckResult onCheckServerAuthorization(String str, Set<Scope> set);

    boolean onUploadServerAuthCode(String str, String str2);
}
