.class Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient$VideoStateNotifierImpl;
.super Ljava/lang/Object;
.source "WearableBridgeClient.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$VideoStateNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoStateNotifierImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient$1;)V
    .locals 0

    .line 364
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient$VideoStateNotifierImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartRecordingFailed()V
    .locals 0

    return-void
.end method

.method public onStartRecordingSucceeded()V
    .locals 0

    return-void
.end method

.method public onStateChanged(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractVideoState;)V
    .locals 0

    return-void
.end method

.method public onStopRecordingFailed()V
    .locals 0

    return-void
.end method

.method public onStopRecordingSucceeded()V
    .locals 0

    return-void
.end method
