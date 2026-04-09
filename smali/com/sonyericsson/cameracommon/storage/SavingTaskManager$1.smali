.class Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$1;
.super Ljava/lang/Object;
.source "SavingTaskManager.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/storage/SavingTaskInquiry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$1;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getReservedSize(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)J
    .locals 5

    .line 99
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$1;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->access$000(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Ljava/util/LinkedList;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$1;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->access$000(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-direct {v0, p0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 101
    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 102
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 103
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;

    .line 104
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->access$100(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;)I

    move-result p1

    int-to-long v3, p1

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    return-wide v1
.end method
