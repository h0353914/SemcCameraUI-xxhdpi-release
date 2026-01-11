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

    .line 853
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 854
    iput p1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;->colorStandard:I

    .line 855
    iput p2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;->colorTransfer:I

    .line 856
    iput p3, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DataSpace;->colorRange:I

    return-void
.end method
