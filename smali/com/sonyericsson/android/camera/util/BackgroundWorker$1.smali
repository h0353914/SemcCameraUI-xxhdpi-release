.class Lcom/sonyericsson/android/camera/util/BackgroundWorker$1;
.super Ljava/lang/Object;
.source "BackgroundWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/util/BackgroundWorker;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

.field final synthetic val$readySignal:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/util/BackgroundWorker;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/BackgroundWorker$1;->this$0:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/util/BackgroundWorker$1;->val$readySignal:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 40
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 41
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/BackgroundWorker$1;->this$0:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->access$002(Lcom/sonyericsson/android/camera/util/BackgroundWorker;Landroid/os/Looper;)Landroid/os/Looper;

    .line 43
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/BackgroundWorker$1;->val$readySignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 45
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
