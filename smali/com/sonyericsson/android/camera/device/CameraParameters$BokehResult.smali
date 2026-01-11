.class public Lcom/sonyericsson/android/camera/device/CameraParameters$BokehResult;
.super Ljava/lang/Object;
.source "CameraParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BokehResult"
.end annotation


# instance fields
.field private mQuality:I

.field private mStatus:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1081
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 1084
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1085
    iput p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters$BokehResult;->mStatus:I

    .line 1086
    iput p2, p0, Lcom/sonyericsson/android/camera/device/CameraParameters$BokehResult;->mQuality:I

    return-void
.end method


# virtual methods
.method public getQuality()I
    .locals 0

    .line 1094
    iget p0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters$BokehResult;->mQuality:I

    return p0
.end method

.method public getStatus()I
    .locals 0

    .line 1090
    iget p0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters$BokehResult;->mStatus:I

    return p0
.end method
