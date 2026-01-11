.class public Lcom/sonyericsson/android/camera/controller/StateMachine$CameraKeyStatus;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraKeyStatus"
.end annotation


# instance fields
.field private isCameraBurst:Z

.field private isCameraKey:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    .line 4307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4308
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$CameraKeyStatus;->isCameraKey:Z

    .line 4309
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$CameraKeyStatus;->isCameraBurst:Z

    return-void
.end method


# virtual methods
.method public isCameraBurst()Z
    .locals 0

    .line 4317
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$CameraKeyStatus;->isCameraBurst:Z

    return p0
.end method

.method public isCameraKey()Z
    .locals 0

    .line 4313
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$CameraKeyStatus;->isCameraKey:Z

    return p0
.end method
