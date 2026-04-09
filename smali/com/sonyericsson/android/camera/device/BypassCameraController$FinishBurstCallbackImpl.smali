.class Lcom/sonyericsson/android/camera/device/BypassCameraController$FinishBurstCallbackImpl;
.super Ljava/lang/Object;
.source "BypassCameraController.java"

# interfaces
.implements Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$FinishBurstCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/BypassCameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FinishBurstCallbackImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/BypassCameraController$1;)V
    .locals 0

    .line 551
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController$FinishBurstCallbackImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishBurstDone()V
    .locals 0

    return-void
.end method
