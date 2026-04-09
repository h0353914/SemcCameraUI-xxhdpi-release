.class public Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifGpsInfo;
.super Ljava/lang/Object;
.source "BypassCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExifGpsInfo"
.end annotation


# instance fields
.field public final exifGpsAltitude:D

.field public final exifGpsLatitude:D

.field public final exifGpsLongitude:D

.field public final exifGpsProcMethod:Ljava/lang/String;

.field public final exifGpsTimestamp:I

.field public final isExifGpsEnabled:Z

.field public final isExifGpsProcMethodEnabled:Z

.field public final isExifGpsTimestampEnabled:Z


# direct methods
.method public constructor <init>(ZDDDZLjava/lang/String;ZI)V
    .locals 0

    .line 598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 599
    iput-boolean p1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifGpsInfo;->isExifGpsEnabled:Z

    .line 600
    iput-wide p2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifGpsInfo;->exifGpsLatitude:D

    .line 601
    iput-wide p4, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifGpsInfo;->exifGpsLongitude:D

    .line 602
    iput-wide p6, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifGpsInfo;->exifGpsAltitude:D

    .line 603
    iput-boolean p8, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifGpsInfo;->isExifGpsProcMethodEnabled:Z

    .line 604
    iput-object p9, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifGpsInfo;->exifGpsProcMethod:Ljava/lang/String;

    .line 605
    iput-boolean p10, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifGpsInfo;->isExifGpsTimestampEnabled:Z

    .line 606
    iput p11, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifGpsInfo;->exifGpsTimestamp:I

    return-void
.end method
