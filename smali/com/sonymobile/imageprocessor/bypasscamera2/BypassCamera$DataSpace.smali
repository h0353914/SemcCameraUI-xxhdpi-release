.class public Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;
.super Ljava/lang/Object;
.source "BypassCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataSpace"
.end annotation


# instance fields
.field public final colorRange:I

.field public final colorStandard:I

.field public final colorTransfer:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 836
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 837
    iput p1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;->colorStandard:I

    .line 838
    iput p2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;->colorTransfer:I

    .line 839
    iput p3, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;->colorRange:I

    return-void
.end method
