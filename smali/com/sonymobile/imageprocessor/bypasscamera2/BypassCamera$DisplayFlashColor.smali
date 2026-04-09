.class public Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DisplayFlashColor;
.super Ljava/lang/Object;
.source "BypassCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayFlashColor"
.end annotation


# instance fields
.field public final colorBlue:I

.field public final colorGreen:I

.field public final colorRed:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 856
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 857
    iput p1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DisplayFlashColor;->colorRed:I

    .line 858
    iput p2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DisplayFlashColor;->colorGreen:I

    .line 859
    iput p3, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DisplayFlashColor;->colorBlue:I

    return-void
.end method
