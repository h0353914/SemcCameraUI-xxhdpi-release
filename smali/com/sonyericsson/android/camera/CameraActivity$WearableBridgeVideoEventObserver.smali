.class Lcom/sonyericsson/android/camera/CameraActivity$WearableBridgeVideoEventObserver;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$VideoEventObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WearableBridgeVideoEventObserver"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity$1;)V
    .locals 0

    .line 2514
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity$WearableBridgeVideoEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartVideoRecRequested()V
    .locals 0

    return-void
.end method

.method public onStopVideoRecRequested()V
    .locals 0

    return-void
.end method
