.class Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotTask;
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
    name = "CallbackSnapshotTask"
.end annotation


# instance fields
.field private final mRequestId:I

.field final synthetic this$0:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;


# direct methods
.method public constructor <init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;I)V
    .locals 0

    .line 1446
    iput-object p1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotTask;->this$0:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1447
    iput p2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotTask;->mRequestId:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1452
    iget-object v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotTask;->this$0:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    monitor-enter v0

    .line 1453
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotTask;->this$0:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    invoke-static {v1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->-$$Nest$fgetmSnapshotCallback(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1454
    iget-object v1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotTask;->this$0:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    invoke-static {v1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->-$$Nest$fgetmSnapshotCallback(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotCallback;

    move-result-object v1

    iget p0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotTask;->mRequestId:I

    invoke-interface {v1, p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotCallback;->onSnapshotDone(I)V

    .line 1456
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
