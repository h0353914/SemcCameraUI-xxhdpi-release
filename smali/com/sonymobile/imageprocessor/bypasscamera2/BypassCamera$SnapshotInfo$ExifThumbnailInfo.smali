.class public Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifThumbnailInfo;
.super Ljava/lang/Object;
.source "BypassCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExifThumbnailInfo"
.end annotation


# instance fields
.field public final exifThumbHeight:I

.field public final exifThumbQuality:I

.field public final exifThumbWidth:I

.field public final isExifThumbEnabled:Z


# direct methods
.method public constructor <init>(ZIII)V
    .locals 0

    .line 675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 676
    iput-boolean p1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifThumbnailInfo;->isExifThumbEnabled:Z

    .line 677
    iput p2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifThumbnailInfo;->exifThumbWidth:I

    .line 678
    iput p3, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifThumbnailInfo;->exifThumbHeight:I

    .line 679
    iput p4, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifThumbnailInfo;->exifThumbQuality:I

    return-void
.end method
