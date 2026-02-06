package com.google.android.gms.common.api;

import android.os.Bundle;

public interface GoogleApiClient$ConnectionCallbacks {
    public static final int CAUSE_NETWORK_LOST = 2;
    public static final int CAUSE_SERVICE_DISCONNECTED = 1;

    void onConnected(Bundle bundle);

    void onConnectionSuspended(int i);
}
