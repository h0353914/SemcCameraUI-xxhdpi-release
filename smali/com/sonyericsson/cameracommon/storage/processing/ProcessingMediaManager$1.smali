.class Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$1;
.super Ljava/lang/Object;
.source "ProcessingMediaManager.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$OnMediaDequeSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$1;->this$0:Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDequeSizeChanged(I)V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$1;->this$0:Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->-$$Nest$fgetmOnMediaDequeSizeChangedListenerExternal(Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;)Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$OnMediaDequeSizeChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$1;->this$0:Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->-$$Nest$fgetmOnMediaDequeSizeChangedListenerExternal(Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;)Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$OnMediaDequeSizeChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$OnMediaDequeSizeChangedListener;->onDequeSizeChanged(I)V

    .line 126
    :cond_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "size:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ",Waiting Deque Size:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$1;->this$0:Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->-$$Nest$fgetmDeque(Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;)Ljava/util/Deque;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Deque;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void
.end method
