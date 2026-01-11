.class public Lcom/sonyericsson/cameracommon/controller/ZoomController;
.super Ljava/lang/Object;
.source "ZoomController.java"


# static fields
.field private static final PINCH_ZOOM_COEFFICIENT:F = 0.2f


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getZoomValue(FF)F
    .locals 1

    const v0, 0x3e4ccccd    # 0.2f

    mul-float/2addr p1, v0

    add-float/2addr p0, p1

    return p0
.end method
