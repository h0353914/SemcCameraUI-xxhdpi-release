.class public Lcom/sonymobile/cameracommon/evf/Evf$EvfFactory;
.super Ljava/lang/Object;
.source "Evf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/evf/Evf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EvfFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generate()Lcom/sonymobile/cameracommon/evf/Evf;
    .locals 1

    .line 22
    new-instance v0, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;

    invoke-direct {v0}, Lcom/sonymobile/cameracommon/evf/SurfaceViewEvf;-><init>()V

    return-object v0
.end method
