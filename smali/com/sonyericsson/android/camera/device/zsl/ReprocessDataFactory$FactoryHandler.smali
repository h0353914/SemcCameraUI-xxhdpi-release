.class Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory$FactoryHandler;
.super Landroid/os/Handler;
.source "ReprocessDataFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FactoryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory;Landroid/os/Looper;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory$FactoryHandler;->this$0:Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory;

    .line 55
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 60
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 61
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleMessage() msg.what : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 62
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 64
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory$FactoryHandler;->this$0:Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory;->-$$Nest$mprocess(Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory;Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;)V

    :goto_0
    return-void
.end method
