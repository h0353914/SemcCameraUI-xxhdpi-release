.class public Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo;
.super Ljava/lang/Object;
.source "BypassCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SnapshotInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifThumbnailInfo;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifOrientationInfo;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifGpsInfo;
    }
.end annotation


# instance fields
.field public final captureNum:I

.field public final exifGpsInfo:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifGpsInfo;

.field public final exifOrientationInfo:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifOrientationInfo;

.field public final exifThumbnailInfo:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifThumbnailInfo;

.field public final isQualityAutoControlEnabled:Z

.field public final isValid:Z

.field public final quality:I


# direct methods
.method public constructor <init>(ZLcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifGpsInfo;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifOrientationInfo;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifThumbnailInfo;IZI)V
    .locals 0

    .line 695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 696
    iput-boolean p1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo;->isValid:Z

    .line 697
    iput-object p2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo;->exifGpsInfo:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifGpsInfo;

    .line 698
    iput-object p3, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo;->exifOrientationInfo:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifOrientationInfo;

    .line 699
    iput-object p4, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo;->exifThumbnailInfo:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifThumbnailInfo;

    .line 700
    iput p5, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo;->quality:I

    .line 701
    iput-boolean p6, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo;->isQualityAutoControlEnabled:Z

    .line 702
    iput p7, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo;->captureNum:I

    return-void
.end method
