package com.google.android.gms.common.api;

import java.util.Set;

public interface GoogleApiClient$ServerAuthCodeCallbacks {
    GoogleApiClient$ServerAuthCodeCallbacks$CheckResult onCheckServerAuthorization(String str, Set<Scope> set);

    boolean onUploadServerAuthCode(String str, String str2);
}
