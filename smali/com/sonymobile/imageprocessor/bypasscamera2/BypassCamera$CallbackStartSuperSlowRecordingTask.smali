.class Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackStartSuperSlowRecordingTask;
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
    name = "CallbackStartSuperSlowRecordingTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;


# direct methods
.method private constructor <init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)V
    .locals 0

    .line 1601
    iput-object p1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackStartSuperSlowRecordingTask;->this$0:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackStartSuperSlowRecordingTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackStartSuperSlowRecordingTask;-><init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1604
    iget-object v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackStartSuperSlowRecordingTask;->this$0:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    monitor-enter v0

    .line 1605
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackStartSuperSlowRecordingTask;->this$0:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    invoke-static {v1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->-$$Nest$fgetmStartSuperSlowRecordingCallback(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StartSuperSlowRecordingCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1606
    iget-object p0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackStartSuperSlowRecordingTask;->this$0:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    invoke-static {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->-$$Nest$fgetmStartSuperSlowRecordingCallback(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StartSuperSlowRecordingCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$StartSuperSlowRecordingCallback;->onStartSuperSlowRecordingDone()V

    .line 1608
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
