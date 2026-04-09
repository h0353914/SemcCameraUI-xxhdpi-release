.class Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotReadyTask;
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
    name = "CallbackSnapshotReadyTask"
.end annotation


# instance fields
.field private final mDisplayFlashColor:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DisplayFlashColor;

.field private final mIsAfSuccessed:Z

.field private final mIsHighQualityBurstAvailable:Z

.field private final mRequireDisplayFlash:Z

.field final synthetic this$0:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;


# direct methods
.method public constructor <init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;ZZZIII)V
    .locals 0

    .line 1304
    iput-object p1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotReadyTask;->this$0:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1305
    iput-boolean p2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotReadyTask;->mIsHighQualityBurstAvailable:Z

    .line 1306
    iput-boolean p3, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotReadyTask;->mIsAfSuccessed:Z

    .line 1307
    iput-boolean p4, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotReadyTask;->mRequireDisplayFlash:Z

    .line 1308
    new-instance p1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DisplayFlashColor;

    invoke-direct {p1, p5, p6, p7}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DisplayFlashColor;-><init>(III)V

    iput-object p1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotReadyTask;->mDisplayFlashColor:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DisplayFlashColor;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1316
    iget-object v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotReadyTask;->this$0:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    monitor-enter v0

    .line 1317
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotReadyTask;->this$0:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    invoke-static {v1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->access$600(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotReadyCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1318
    iget-object v1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotReadyTask;->this$0:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    invoke-static {v1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->access$600(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotReadyCallback;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotReadyTask;->mIsHighQualityBurstAvailable:Z

    iget-boolean v3, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotReadyTask;->mIsAfSuccessed:Z

    iget-boolean v4, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotReadyTask;->mRequireDisplayFlash:Z

    iget-object p0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotReadyTask;->mDisplayFlashColor:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DisplayFlashColor;

    invoke-interface {v1, v2, v3, v4, p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotReadyCallback;->onSnapshotReadyDone(ZZZLcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DisplayFlashColor;)V

    .line 1324
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
