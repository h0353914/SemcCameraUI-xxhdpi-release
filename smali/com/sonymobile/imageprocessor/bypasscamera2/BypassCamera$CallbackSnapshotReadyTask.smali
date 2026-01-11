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
.field private final mCaptureDuration:I

.field private final mCaptureStartPoint:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;

.field private final mDisplayFlashColor:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DisplayFlashColor;

.field private final mIsAfSuccessed:Z

.field private final mIsHighQualityBurstAvailable:Z

.field private final mRequireDisplayFlash:Z

.field final synthetic this$0:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;


# direct methods
.method public constructor <init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;ZZZIIIII)V
    .locals 0

    .line 1369
    iput-object p1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotReadyTask;->this$0:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1370
    iput-boolean p2, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotReadyTask;->mIsHighQualityBurstAvailable:Z

    .line 1371
    iput-boolean p3, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotReadyTask;->mIsAfSuccessed:Z

    .line 1372
    iput-boolean p4, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotReadyTask;->mRequireDisplayFlash:Z

    .line 1373
    new-instance p1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DisplayFlashColor;

    invoke-direct {p1, p5, p6, p7}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DisplayFlashColor;-><init>(III)V

    iput-object p1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotReadyTask;->mDisplayFlashColor:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DisplayFlashColor;

    if-eqz p8, :cond_1

    const/4 p1, 0x1

    if-eq p8, p1, :cond_0

    .line 1387
    sget-object p1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;->INVALID:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;

    iput-object p1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotReadyTask;->mCaptureStartPoint:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;

    goto :goto_0

    .line 1382
    :cond_0
    sget-object p1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;->ON_REQUEST:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;

    iput-object p1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotReadyTask;->mCaptureStartPoint:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;

    goto :goto_0

    .line 1379
    :cond_1
    sget-object p1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;->ALREADY_DONE:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;

    iput-object p1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotReadyTask;->mCaptureStartPoint:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;

    .line 1390
    :goto_0
    iput p9, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotReadyTask;->mCaptureDuration:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1395
    iget-object v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotReadyTask;->this$0:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    monitor-enter v0

    .line 1396
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotReadyTask;->this$0:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    invoke-static {v1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->-$$Nest$fgetmSnapshotReadyCallback(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotReadyCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1397
    iget-object v1, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotReadyTask;->this$0:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;

    invoke-static {v1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;->-$$Nest$fgetmSnapshotReadyCallback(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotReadyCallback;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotReadyTask;->mIsHighQualityBurstAvailable:Z

    iget-boolean v4, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotReadyTask;->mIsAfSuccessed:Z

    iget-boolean v5, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotReadyTask;->mRequireDisplayFlash:Z

    iget-object v6, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotReadyTask;->mDisplayFlashColor:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DisplayFlashColor;

    iget-object v7, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotReadyTask;->mCaptureStartPoint:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;

    iget v8, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CallbackSnapshotReadyTask;->mCaptureDuration:I

    invoke-interface/range {v2 .. v8}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SnapshotReadyCallback;->onSnapshotReadyDone(ZZZLcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$DisplayFlashColor;Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$CaptureStartPoint;I)V

    .line 1406
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
