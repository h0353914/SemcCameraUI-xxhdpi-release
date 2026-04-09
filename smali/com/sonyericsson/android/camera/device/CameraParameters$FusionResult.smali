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

    .line 826
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 827
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;->UNKNOWN:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;->mFusionStatus:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;

    .line 828
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;->NORMAL:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;->mFusionCondition:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;)V
    .locals 0

    .line 831
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 832
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;->mFusionStatus:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;

    .line 833
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;->mFusionCondition:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;

    return-void
.end method


# virtual methods
.method public getFusionCondition()Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;
    .locals 0

    .line 851
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;->mFusionCondition:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;

    return-object p0
.end method

.method public getFusionStatus()Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;
    .locals 0

    .line 842
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;->mFusionStatus:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[FusionStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;->mFusionStatus:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "][FusionCondition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters$FusionResult;->mFusionCondition:Lcom/sonyericsson/android/camera/device/CameraParameters$FusionCondition;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
