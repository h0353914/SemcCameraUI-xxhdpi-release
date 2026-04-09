.class Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask$1;
.super Ljava/lang/Object;
.source "SavingTaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;

.field final synthetic val$type:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask$1;->this$1:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;

    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask$1;->val$type:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask$1;->this$1:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->access$200(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$PhotoSavingTask$1;->val$type:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->checkRemain(ZLcom/sonyericsson/cameracommon/storage/Storage$StorageType;)J

    return-void
.end method
