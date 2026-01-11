.class public Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowRecordingParameters;
.super Ljava/lang/Object;
.source "BypassCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SuperSlowRecordingParameters"
.end annotation


# instance fields
.field public final fps:I

.field public final frameNum:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 909
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 910
    iput p1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowRecordingParameters;->fps:I

    .line 911
    iput p2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowRecordingParameters;->frameNum:I

    return-void
.end method
