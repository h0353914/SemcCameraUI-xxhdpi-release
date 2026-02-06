package com.sonymobile.cameracommon.evf;

public class Evf$EvfFactory {
    public static Evf generate() {
        return new SurfaceViewEvf();
    }
}
