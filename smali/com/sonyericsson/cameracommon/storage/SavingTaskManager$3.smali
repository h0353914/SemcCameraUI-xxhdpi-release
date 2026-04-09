.class Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$3;
.super Ljava/lang/Object;
.source "SavingTaskManager.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$MediaScanController$OnScanCompletedListener;


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

    .line 1076
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$3;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/storage/PhotoSavingRequest;)V
    .locals 0

    .line 1081
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$3;->this$0:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;

    sget-object p1, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->SUCCESS:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    invoke-static {p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;->access$600(Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/storage/SavingRequest;)V

    return-void
.end method
