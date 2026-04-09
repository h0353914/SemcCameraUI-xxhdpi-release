.class Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackPrepareSuperSlowRecordingTask;
.super Ljava/lang/Object;
.source "BypassCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackPrepareSuperSlowRecordingTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;


# direct methods
.method private constructor <init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)V
    .locals 0

    .line 1508
    iput-object p1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackPrepareSuperSlowRecordingTask;->this$0:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$1;)V
    .locals 0

    .line 1508
    invoke-direct {p0, p1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackPrepareSuperSlowRecordingTask;-><init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1511
    iget-object v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackPrepareSuperSlowRecordingTask;->this$0:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    monitor-enter v0

    .line 1512
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackPrepareSuperSlowRecordingTask;->this$0:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    invoke-static {v1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->access$1900(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareSuperSlowRecordingCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1513
    iget-object p0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackPrepareSuperSlowRecordingTask;->this$0:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    invoke-static {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->access$1900(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareSuperSlowRecordingCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PrepareSuperSlowRecordingCallback;->onPrepareSuperSlowRecordingDone()V

    .line 1515
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
