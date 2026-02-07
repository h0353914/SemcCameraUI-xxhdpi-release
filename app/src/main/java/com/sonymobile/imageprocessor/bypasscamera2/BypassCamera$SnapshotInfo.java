package com.sonymobile.imageprocessor.bypasscamera2;

/* JADX INFO: loaded from: classes.dex */
public class BypassCamera$SnapshotInfo {
    public final int captureNum;
    public final BypassCamera$SnapshotInfo$ExifGpsInfo exifGpsInfo;
    public final BypassCamera$SnapshotInfo$ExifOrientationInfo exifOrientationInfo;
    public final BypassCamera$SnapshotInfo$ExifThumbnailInfo exifThumbnailInfo;
    public final boolean isQualityAutoControlEnabled;
    public final boolean isValid;
    public final int quality;

    public BypassCamera$SnapshotInfo(boolean z, BypassCamera$SnapshotInfo$ExifGpsInfo bypassCamera$SnapshotInfo$ExifGpsInfo, BypassCamera$SnapshotInfo$ExifOrientationInfo bypassCamera$SnapshotInfo$ExifOrientationInfo, BypassCamera$SnapshotInfo$ExifThumbnailInfo bypassCamera$SnapshotInfo$ExifThumbnailInfo, int i, boolean z2, int i2) {
        this.isValid = z;
        this.exifGpsInfo = bypassCamera$SnapshotInfo$ExifGpsInfo;
        this.exifOrientationInfo = bypassCamera$SnapshotInfo$ExifOrientationInfo;
        this.exifThumbnailInfo = bypassCamera$SnapshotInfo$ExifThumbnailInfo;
        this.quality = i;
        this.isQualityAutoControlEnabled = z2;
        this.captureNum = i2;
    }
}
