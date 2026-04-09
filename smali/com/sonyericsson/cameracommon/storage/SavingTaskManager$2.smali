.class Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$2;
.super Ljava/lang/Object;
.source "SavingTaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->storePicture(Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

.field final synthetic val$request:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;)V
    .locals 0

    .line 695
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$2;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$2;->val$request:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 698
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$2;->val$request:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->close()V

    .line 699
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$2;->val$request:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->notifyStoreFailed(Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;)V

    .line 700
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$2;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->access$200(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$2;->val$request:Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;->getStorageType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;->checkRemain(ZLcom/sonyericsson/cameracommon/storage/Storage$StorageType;)J

    return-void
.end method
