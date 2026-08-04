package com.sonyericsson.cameracommon.device;

import android.os.SystemClock;
import com.sonyericsson.cameracommon.mediasaving.MediaSavingConstants;
import com.sonyericsson.cameracommon.storage.RequestFactory;
import com.sonymobile.imageprocessor.bypasscamera2.BypassCamera;

public class BypassCameraSnapshotInfoFactory {
    private static final int EXIF_THUMBNAIL_HEIGHT = 120;
    private static final int EXIF_THUMBNAIL_QUALITY = 80;
    private static final int EXIF_THUMBNAIL_WIDTH = 160;
    private static final int QUALITY = 2;
    private static final boolean QUALITY_AUTO_CONTROL_ENABLED = true;

    public static BypassCamera.SnapshotInfo create(RequestFactory.PhotoSavingRequestBuilder photoSavingRequestBuilder, int i) {
        return new BypassCamera.SnapshotInfo(true, createExifGpsInfo(photoSavingRequestBuilder), createExifOrientationInfo(photoSavingRequestBuilder), createExifThumbnailInfo(), MediaSavingConstants.JpegQuality.getPlatformQualityFromCameraProfile(2), true, i);
    }

    public static BypassCamera.SnapshotInfo.ExifGpsInfo createExifGpsInfo(RequestFactory.PhotoSavingRequestBuilder photoSavingRequestBuilder) {
        String provider = "";
        boolean isValid = false;
        double latitude = 0.0d;
        double longitude = 0.0d;
        double altitude = 0.0d;
        boolean hasProvider = false;
        boolean hasTime = false;
        int time = 0;

        if (photoSavingRequestBuilder.mCommonStatus.location != null) {
            latitude = photoSavingRequestBuilder.mCommonStatus.location.getLatitude();
            longitude = photoSavingRequestBuilder.mCommonStatus.location.getLongitude();
            boolean hasLatLon = !(latitude == 0.0d && longitude == 0.0d);
            if (hasLatLon) {
                isValid = true;

                if (photoSavingRequestBuilder.mCommonStatus.location.hasAltitude()) {
                    altitude = photoSavingRequestBuilder.mCommonStatus.location.getAltitude();
                }

                if (photoSavingRequestBuilder.mCommonStatus.location.getProvider() != null) {
                    provider = photoSavingRequestBuilder.mCommonStatus.location.getProvider();
                    hasProvider = true;
                }

                if (photoSavingRequestBuilder.mCommonStatus.location.getTime() != 0) {
                    hasTime = true;
                    time = (int) ((photoSavingRequestBuilder.mCommonStatus.location.getTime()
                            + ((SystemClock.elapsedRealtimeNanos() - photoSavingRequestBuilder.mCommonStatus.location.getElapsedRealtimeNanos()) / 1000000)) / 1000);
                }
            }
        }

        return new BypassCamera.SnapshotInfo.ExifGpsInfo(isValid, latitude, longitude, altitude, hasProvider, provider, hasTime, time);
    }

    private static BypassCamera.SnapshotInfo.ExifOrientationInfo createExifOrientationInfo(RequestFactory.PhotoSavingRequestBuilder photoSavingRequestBuilder) {
        int i = photoSavingRequestBuilder.mCommonStatus.orientation;
        if (i == 0 || i == 90 || i == 180 || i == 270) {
            return new BypassCamera.SnapshotInfo.ExifOrientationInfo(true, photoSavingRequestBuilder.mCommonStatus.orientation);
        }
        return new BypassCamera.SnapshotInfo.ExifOrientationInfo(false, 0);
    }

    private static BypassCamera.SnapshotInfo.ExifThumbnailInfo createExifThumbnailInfo() {
        return new BypassCamera.SnapshotInfo.ExifThumbnailInfo(true, 160, 120, 80);
    }
}
