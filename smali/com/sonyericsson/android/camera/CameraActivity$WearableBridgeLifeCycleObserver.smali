.class Lcom/sonyericsson/android/camera/CameraActivity$WearableBridgeLifeCycleObserver;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$LifeCycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WearableBridgeLifeCycleObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/CameraActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .locals 0

    .line 2476
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$WearableBridgeLifeCycleObserver;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$1;)V
    .locals 0

    .line 2476
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity$WearableBridgeLifeCycleObserver;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 2479
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$WearableBridgeLifeCycleObserver;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/CameraActivity;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->canHandleWearableCaptureRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2480
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$WearableBridgeLifeCycleObserver;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->notifyStateIdleToWearable()V

    goto :goto_0

    .line 2482
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$WearableBridgeLifeCycleObserver;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->notifyStateBlockedToWearable()V

    :goto_0
    return-void
.end method
