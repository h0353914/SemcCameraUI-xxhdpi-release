.class Lcom/sonymobile/camera/faultdetector/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/camera/faultdetector/c;->a()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/CountDownLatch;

.field final synthetic b:Lcom/sonymobile/camera/faultdetector/c;


# direct methods
.method constructor <init>(Lcom/sonymobile/camera/faultdetector/c;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/camera/faultdetector/c$1;->b:Lcom/sonymobile/camera/faultdetector/c;

    iput-object p2, p0, Lcom/sonymobile/camera/faultdetector/c$1;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "DetectorImpl"

    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/camera/faultdetector/c$1;->b:Lcom/sonymobile/camera/faultdetector/c;

    invoke-static {v1}, Lcom/sonymobile/camera/faultdetector/c;->a(Lcom/sonymobile/camera/faultdetector/c;)Landroid/app/Application;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/camera/faultdetector/c$1;->b:Lcom/sonymobile/camera/faultdetector/c;

    invoke-static {v3}, Lcom/sonymobile/camera/faultdetector/c;->b(Lcom/sonymobile/camera/faultdetector/c;)Lcom/sonymobile/camera/faultdetector/c$c;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sonymobile/camera/faultdetector/c;->a(Lcom/sonymobile/camera/faultdetector/c;Landroid/app/Application;Lcom/sonymobile/camera/faultdetector/c$c;)Lcom/qualcomm/qti/snpe/NeuralNetwork;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonymobile/camera/faultdetector/c;->a(Lcom/sonymobile/camera/faultdetector/c;Lcom/qualcomm/qti/snpe/NeuralNetwork;)Lcom/qualcomm/qti/snpe/NeuralNetwork;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Failed to build network."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sonymobile/camera/faultdetector/c;->e()Z

    move-result v3

    if-nez v3, :cond_3

    :goto_0
    iget-object v1, p0, Lcom/sonymobile/camera/faultdetector/c$1;->b:Lcom/sonymobile/camera/faultdetector/c;

    invoke-static {v1}, Lcom/sonymobile/camera/faultdetector/c;->c(Lcom/sonymobile/camera/faultdetector/c;)Lcom/qualcomm/qti/snpe/NeuralNetwork;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sonymobile/camera/faultdetector/c$1;->b:Lcom/sonymobile/camera/faultdetector/c;

    invoke-static {v1}, Lcom/sonymobile/camera/faultdetector/c;->c(Lcom/sonymobile/camera/faultdetector/c;)Lcom/qualcomm/qti/snpe/NeuralNetwork;

    move-result-object v1

    invoke-interface {v1}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->getInputTensorsNames()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/camera/faultdetector/c$1;->b:Lcom/sonymobile/camera/faultdetector/c;

    invoke-static {v2}, Lcom/sonymobile/camera/faultdetector/c;->c(Lcom/sonymobile/camera/faultdetector/c;)Lcom/qualcomm/qti/snpe/NeuralNetwork;

    move-result-object v2

    invoke-interface {v2}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->getOutputTensorsNames()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/sonymobile/camera/faultdetector/c$1;->b:Lcom/sonymobile/camera/faultdetector/c;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/sonymobile/camera/faultdetector/c;->a(Lcom/sonymobile/camera/faultdetector/c;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/sonymobile/camera/faultdetector/c$1;->b:Lcom/sonymobile/camera/faultdetector/c;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sonymobile/camera/faultdetector/c;->b(Lcom/sonymobile/camera/faultdetector/c;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/sonymobile/camera/faultdetector/c;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Succeeded to initialize the network of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sonymobile/camera/faultdetector/c$1;->b:Lcom/sonymobile/camera/faultdetector/c;

    invoke-static {v2}, Lcom/sonymobile/camera/faultdetector/c;->b(Lcom/sonymobile/camera/faultdetector/c;)Lcom/sonymobile/camera/faultdetector/c$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/camera/faultdetector/c$c;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Input size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/camera/faultdetector/c$1;->b:Lcom/sonymobile/camera/faultdetector/c;

    invoke-virtual {v2}, Lcom/sonymobile/camera/faultdetector/c;->d()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/camera/faultdetector/c$1;->b:Lcom/sonymobile/camera/faultdetector/c;

    sget-object v1, Lcom/sonymobile/camera/faultdetector/c$d;->c:Lcom/sonymobile/camera/faultdetector/c$d;

    invoke-static {v0, v1}, Lcom/sonymobile/camera/faultdetector/c;->a(Lcom/sonymobile/camera/faultdetector/c;Lcom/sonymobile/camera/faultdetector/c$d;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected network input and/or output tensors."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/sonymobile/camera/faultdetector/c$1;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_3
    new-instance p0, Lcom/sonymobile/camera/faultdetector/BuildNetworkException;

    invoke-direct {p0, v2, v1}, Lcom/sonymobile/camera/faultdetector/BuildNetworkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method
