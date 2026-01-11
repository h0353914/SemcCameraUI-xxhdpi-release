.class public Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;
.super Ljava/lang/Object;
.source "CameraParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FusionResult"
.end annotation


# instance fields
.field private mFusionCondition:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;

.field private mFusionStatus:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1039
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1040
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;->UNKNOWN:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;->mFusionStatus:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;

    .line 1041
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;->NORMAL:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;->mFusionCondition:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;)V
    .locals 0

    .line 1044
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1045
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;->mFusionStatus:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;

    .line 1046
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;->mFusionCondition:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;

    return-void
.end method


# virtual methods
.method public getFusionCondition()Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;
    .locals 0

    .line 1064
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;->mFusionCondition:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;

    return-object p0
.end method

.method public getFusionStatus()Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;
    .locals 0

    .line 1055
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;->mFusionStatus:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1069
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[FusionStatus="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;->mFusionStatus:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "][FusionCondition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;->mFusionCondition:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
