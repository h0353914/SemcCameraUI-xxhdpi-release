.class Lcom/sonyericsson/android/camera/device/CameraController$WalkingParamStatus;
.super Ljava/lang/Object;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WalkingParamStatus"
.end annotation


# instance fields
.field private ev:J

.field private iso:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 7474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEv()J
    .locals 2

    .line 7479
    iget-wide v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$WalkingParamStatus;->ev:J

    return-wide v0
.end method

.method public getIso()I
    .locals 0

    .line 7487
    iget p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$WalkingParamStatus;->iso:I

    return p0
.end method

.method public setEv(J)V
    .locals 0

    .line 7483
    iput-wide p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$WalkingParamStatus;->ev:J

    return-void
.end method

.method public setIso(I)V
    .locals 0

    .line 7491
    iput p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$WalkingParamStatus;->iso:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 7496
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WalkingParamStatus{iso="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$WalkingParamStatus;->iso:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ev="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$WalkingParamStatus;->ev:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
