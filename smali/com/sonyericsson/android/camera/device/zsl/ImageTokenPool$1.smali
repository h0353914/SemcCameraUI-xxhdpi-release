.class Lcom/sonyericsson/android/camera/device/zsl/ImageTokenPool$1;
.super Ljava/lang/Object;
.source "ImageTokenPool.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/device/zsl/ImageTokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/zsl/ImageTokenPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/zsl/ImageTokenPool;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/zsl/ImageTokenPool;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/zsl/ImageTokenPool$1;->this$0:Lcom/sonyericsson/android/camera/device/zsl/ImageTokenPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTokenRecycled(Lcom/sonyericsson/android/camera/device/zsl/ImageToken;)V
    .locals 2

    .line 47
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onTokenRecycled() : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 48
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/zsl/ImageTokenPool$1;->this$0:Lcom/sonyericsson/android/camera/device/zsl/ImageTokenPool;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/zsl/ImageTokenPool;->-$$Nest$fgetmImageTokenDeque(Lcom/sonyericsson/android/camera/device/zsl/ImageTokenPool;)Ljava/util/Deque;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    return-void
.end method
