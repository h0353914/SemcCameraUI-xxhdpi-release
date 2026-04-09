.class public Lcom/sonyericsson/cameracommon/device/BypassCameraSnapshotInfoFactory;
.super Ljava/lang/Object;
.source "BypassCameraSnapshotInfoFactory.java"


# static fields
.field private static final EXIF_THUMBNAIL_HEIGHT:I = 0x78

.field private static final EXIF_THUMBNAIL_QUALITY:I = 0x50

.field private static final EXIF_THUMBNAIL_WIDTH:I = 0xa0

.field private static final QUALITY:I = 0x2

.field private static final QUALITY_AUTO_CONTROL_ENABLED:Z = true


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;I)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo;
    .locals 9

    .line 36
    new-instance v8, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo;

    .line 38
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/device/BypassCameraSnapshotInfoFactory;->createExifGpsInfo(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifGpsInfo;

    move-result-object v2

    .line 39
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/device/BypassCameraSnapshotInfoFactory;->createExifOrientationInfo(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifOrientationInfo;

    move-result-object v3

    .line 40
    invoke-static {}, Lcom/sonyericsson/cameracommon/device/BypassCameraSnapshotInfoFactory;->createExifThumbnailInfo()Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifThumbnailInfo;

    move-result-object v4

    const/4 p0, 0x2

    .line 41
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants$JpegQuality;->getPlatformQualityFromCameraProfile(I)I

    move-result v5

    const/4 v1, 0x1

    const/4 v6, 0x1

    move-object v0, v8

    move v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo;-><init>(ZLcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifGpsInfo;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifOrientationInfo;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifThumbnailInfo;IZI)V

    return-object v8
.end method

.method public static createExifGpsInfo(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifGpsInfo;
    .locals 24

    move-object/from16 v0, p0

    const-string v1, ""

    .line 56
    iget-object v2, v0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    if-eqz v2, :cond_6

    .line 57
    iget-object v2, v0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    .line 58
    iget-object v2, v0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    cmpl-double v2, v7, v4

    if-nez v2, :cond_1

    cmpl-double v2, v9, v4

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v6

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v3

    :goto_1
    if-eqz v2, :cond_5

    .line 69
    iget-object v11, v0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v11, v11, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    invoke-virtual {v11}, Landroid/location/Location;->hasAltitude()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 70
    iget-object v4, v0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v4, v4, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    .line 74
    :cond_2
    iget-object v11, v0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v11, v11, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    invoke-virtual {v11}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 76
    iget-object v1, v0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    move v11, v3

    goto :goto_2

    :cond_3
    move v11, v6

    .line 85
    :goto_2
    iget-object v12, v0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v12, v12, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    invoke-virtual {v12}, Landroid/location/Location;->getTime()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_4

    .line 87
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v12

    iget-object v6, v0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v6, v6, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    .line 88
    invoke-virtual {v6}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v14

    sub-long/2addr v12, v14

    const-wide/32 v14, 0xf4240

    div-long/2addr v12, v14

    .line 89
    iget-object v0, v0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v14

    add-long/2addr v14, v12

    const-wide/16 v12, 0x3e8

    div-long/2addr v14, v12

    long-to-int v6, v14

    move-object/from16 v21, v1

    move v13, v2

    move/from16 v22, v3

    move-wide/from16 v18, v4

    move/from16 v23, v6

    goto :goto_3

    :cond_4
    move-object/from16 v21, v1

    move v13, v2

    move-wide/from16 v18, v4

    move/from16 v22, v6

    move/from16 v23, v22

    :goto_3
    move-wide v14, v7

    move-wide/from16 v16, v9

    move/from16 v20, v11

    goto :goto_5

    :cond_5
    move-object/from16 v21, v1

    move v13, v2

    move-wide v14, v4

    move-wide/from16 v16, v14

    move-wide/from16 v18, v16

    move/from16 v20, v6

    goto :goto_4

    :cond_6
    move-object/from16 v21, v1

    move-wide v14, v4

    move-wide/from16 v16, v14

    move-wide/from16 v18, v16

    move v13, v6

    move/from16 v20, v13

    :goto_4
    move/from16 v22, v20

    move/from16 v23, v22

    .line 95
    :goto_5
    new-instance v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifGpsInfo;

    move-object v12, v0

    invoke-direct/range {v12 .. v23}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifGpsInfo;-><init>(ZDDDZLjava/lang/String;ZI)V

    return-object v0
.end method

.method private static createExifOrientationInfo(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifOrientationInfo;
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    if-eqz v0, :cond_0

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_0

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_0

    .line 117
    new-instance p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifOrientationInfo;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifOrientationInfo;-><init>(ZI)V

    return-object p0

    .line 115
    :cond_0
    new-instance v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifOrientationInfo;

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;->mCommonStatus:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    invoke-direct {v0, v1, p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifOrientationInfo;-><init>(ZI)V

    return-object v0
.end method

.method private static createExifThumbnailInfo()Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifThumbnailInfo;
    .locals 5

    .line 122
    new-instance v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifThumbnailInfo;

    const/4 v1, 0x1

    const/16 v2, 0xa0

    const/16 v3, 0x78

    const/16 v4, 0x50

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifThumbnailInfo;-><init>(ZIII)V

    return-object v0
.end method
