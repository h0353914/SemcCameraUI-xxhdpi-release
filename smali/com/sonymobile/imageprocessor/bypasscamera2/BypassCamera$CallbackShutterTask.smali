.class Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackShutterTask;
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
    name = "CallbackShutterTask"
.end annotation


# instance fields
.field private final mCaptureNum:I

.field private final mIsAfSuccessed:Z

.field private final mRequestId:I

.field final synthetic this$0:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;


# direct methods
.method public constructor <init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;IIZ)V
    .locals 0

    .line 1422
    iput-object p1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackShutterTask;->this$0:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1423
    iput p2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackShutterTask;->mRequestId:I

    .line 1424
    iput p3, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackShutterTask;->mCaptureNum:I

    .line 1425
    iput-boolean p4, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackShutterTask;->mIsAfSuccessed:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1430
    iget-object v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackShutterTask;->this$0:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    monitor-enter v0

    .line 1431
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackShutterTask;->this$0:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    invoke-static {v1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->-$$Nest$fgetmSnapshotCallback(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1432
    iget-object v1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackShutterTask;->this$0:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    invoke-static {v1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->-$$Nest$fgetmSnapshotCallback(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotCallback;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackShutterTask;->mRequestId:I

    iget v3, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackShutterTask;->mCaptureNum:I

    iget-boolean p0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackShutterTask;->mIsAfSuccessed:Z

    invoke-interface {v1, v2, v3, p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotCallback;->onShutterDone(IIZ)V

    .line 1434
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
