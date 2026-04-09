.class public Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionResult;
.super Ljava/lang/Object;
.source "CameraParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SceneRecognitionResult"
.end annotation


# instance fields
.field public deviceStabilityCondition:Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;

.field public isMacroRange:Z

.field public sceneMode:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    .line 633
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 634
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionResult;->sceneMode:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    .line 635
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 636
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionResult;->deviceStabilityCondition:Lcom/sonyericsson/android/camera/device/CameraParameters$DeviceStabilityCondition;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 637
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 638
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionResult;->isMacroRange:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    .line 639
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 640
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
