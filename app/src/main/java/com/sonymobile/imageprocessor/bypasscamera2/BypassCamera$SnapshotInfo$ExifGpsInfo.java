package com.sonymobile.imageprocessor.bypasscamera2;

public class BypassCamera$SnapshotInfo$ExifGpsInfo {
    public final double exifGpsAltitude;
    public final double exifGpsLatitude;
    public final double exifGpsLongitude;
    public final String exifGpsProcMethod;
    public final int exifGpsTimestamp;
    public final boolean isExifGpsEnabled;
    public final boolean isExifGpsProcMethodEnabled;
    public final boolean isExifGpsTimestampEnabled;

    public BypassCamera$SnapshotInfo$ExifGpsInfo(boolean z, double d, double d2, double d3, boolean z2, String str, boolean z3, int i) {
        this.isExifGpsEnabled = z;
        this.exifGpsLatitude = d;
        this.exifGpsLongitude = d2;
        this.exifGpsAltitude = d3;
        this.isExifGpsProcMethodEnabled = z2;
        this.exifGpsProcMethod = str;
        this.isExifGpsTimestampEnabled = z3;
        this.exifGpsTimestamp = i;
    }
}
