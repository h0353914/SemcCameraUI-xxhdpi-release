.class Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClientBroadcastReceiver$NotifyVideoStartRecRequestedTask;
.super Ljava/lang/Object;
.source "WearableBridgeClientBroadcastReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClientBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotifyVideoStartRecRequestedTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClientBroadcastReceiver;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClientBroadcastReceiver;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClientBroadcastReceiver$NotifyVideoStartRecRequestedTask;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClientBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClientBroadcastReceiver;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClientBroadcastReceiver$1;)V
    .locals 0

    .line 136
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClientBroadcastReceiver$NotifyVideoStartRecRequestedTask;-><init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClientBroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClientBroadcastReceiver$NotifyVideoStartRecRequestedTask;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClientBroadcastReceiver;

    invoke-static {p0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClientBroadcastReceiver;->access$700(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClientBroadcastReceiver;)Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$VideoEventObserver;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$VideoEventObserver;->onStartVideoRecRequested()V

    return-void
.end method
