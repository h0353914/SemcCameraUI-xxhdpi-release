.class Lcom/sonyericsson/android/camera/controller/StateMachine$7;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;->requestLoadStoredPicture(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

.field final synthetic val$result:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 620
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$7;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$7;->val$result:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataLoadCompleted(IZLjava/util/LinkedList;Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/LinkedList<",
            "Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onDataLoadFailed(I)V
    .locals 0

    return-void
.end method

.method public onLoadCompleted(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 623
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoke uri:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 624
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$7;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$7;->val$result:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    invoke-static {p1, p0, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mfinishOneShot(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onLoadFailed(Landroid/net/Uri;I)V
    .locals 2

    .line 629
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoke uri:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", reason:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 631
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$7;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$7;->val$result:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mfinishOneShot(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;Landroid/graphics/Bitmap;)V

    return-void
.end method
