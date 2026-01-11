.class public Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifOrientationInfo;
.super Ljava/lang/Object;
.source "BypassCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExifOrientationInfo"
.end annotation


# instance fields
.field public final exifOrientation:I

.field public final isExifOrientationEnabled:Z


# direct methods
.method public constructor <init>(ZI)V
    .locals 0

    .line 645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 646
    iput-boolean p1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifOrientationInfo;->isExifOrientationEnabled:Z

    .line 647
    iput p2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotInfo$ExifOrientationInfo;->exifOrientation:I

    return-void
.end method
