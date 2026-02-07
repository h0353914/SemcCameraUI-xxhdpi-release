package com.sonymobile.cameracommon.research.parameters;

/* JADX INFO: loaded from: classes.dex */
public interface Event$UserOperation extends Event$Action {
    Event$Category getCategory();

    int getValue();

    Event$UserOperation getViewer();

    boolean isShooting();

    Event$UserOperation updateOperation(Event$UserOperation event$UserOperation);
}
