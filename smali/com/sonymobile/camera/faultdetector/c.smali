.class Lcom/sonymobile/camera/faultdetector/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/camera/faultdetector/c$c;,
        Lcom/sonymobile/camera/faultdetector/c$b;,
        Lcom/sonymobile/camera/faultdetector/c$a;,
        Lcom/sonymobile/camera/faultdetector/c$d;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "DetectorImpl"

.field private static final b:Ljava/lang/String; = "DetectorImpl_PERF"

.field private static final c:Z

.field private static final d:J = 0x3L

.field private static final e:Ljava/lang/Object;


# instance fields
.field private final f:Landroid/app/Application;

.field private final g:Lcom/sonymobile/camera/faultdetector/c$c;

.field private volatile h:Lcom/qualcomm/qti/snpe/NeuralNetwork;

.field private volatile i:Lcom/sonymobile/camera/faultdetector/c$d;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Landroid/os/HandlerThread;

.field private m:Lcom/sonymobile/camera/faultdetector/c$a;

.field private n:Lcom/sonymobile/camera/faultdetector/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "userdebug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sonymobile/camera/faultdetector/c;->c:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonymobile/camera/faultdetector/c;->e:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/app/Application;Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sonymobile/camera/faultdetector/c;->f:Landroid/app/Application;

    new-instance v0, Lcom/sonymobile/camera/faultdetector/b;

    invoke-direct {v0}, Lcom/sonymobile/camera/faultdetector/b;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/camera/faultdetector/c;->n:Lcom/sonymobile/camera/faultdetector/b;

    sget-object v0, Lcom/sonymobile/camera/faultdetector/c$4;->a:[I

    invoke-virtual {p2}, Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget-object p2, Lcom/sonymobile/camera/faultdetector/c$c;->b:Lcom/sonymobile/camera/faultdetector/c$c;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unsupported DetectorType: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sget-object p2, Lcom/sonymobile/camera/faultdetector/c$c;->a:Lcom/sonymobile/camera/faultdetector/c$c;

    :goto_0
    iput-object p2, p0, Lcom/sonymobile/camera/faultdetector/c;->g:Lcom/sonymobile/camera/faultdetector/c$c;

    sget-object p2, Lcom/sonymobile/camera/faultdetector/c$d;->a:Lcom/sonymobile/camera/faultdetector/c$d;

    invoke-direct {p0, p2}, Lcom/sonymobile/camera/faultdetector/c;->a(Lcom/sonymobile/camera/faultdetector/c$d;)V

    invoke-direct {p0}, Lcom/sonymobile/camera/faultdetector/c;->f()V

    sget-boolean p0, Lcom/sonymobile/camera/faultdetector/c;->c:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Prepare detector for version: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/qualcomm/qti/snpe/SNPE;->getRuntimeVersion(Landroid/app/Application;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DetectorImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/sonymobile/camera/faultdetector/c;)Landroid/app/Application;
    .locals 0

    iget-object p0, p0, Lcom/sonymobile/camera/faultdetector/c;->f:Landroid/app/Application;

    return-object p0
.end method

.method private a(Landroid/app/Application;Lcom/sonymobile/camera/faultdetector/c$c;)Lcom/qualcomm/qti/snpe/NeuralNetwork;
    .locals 9

    const-string v0, "Detector build time = "

    const-string v1, "buildNetwork is.available(): "

    new-instance v2, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;

    invoke-direct {v2, p1}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;-><init>(Landroid/app/Application;)V

    sget-boolean v3, Lcom/sonymobile/camera/faultdetector/c;->c:Z

    const-string v4, "DetectorImpl"

    if-eqz v3, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "buildNetwork application.getProcessName(): "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "buildNetwork model.name(): "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sonymobile/camera/faultdetector/c$c;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "buildNetwork model.runtime: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p2, Lcom/sonymobile/camera/faultdetector/c$c;->d:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "buildNetwork model.resourceId: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p2, Lcom/sonymobile/camera/faultdetector/c$c;->c:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "buildNetwork model.isCpuFallbackNeeded: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, p2, Lcom/sonymobile/camera/faultdetector/c$c;->f:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "buildNetwork model.isQuantized: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, p2, Lcom/sonymobile/camera/faultdetector/c$c;->e:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "buildNetwork builder.isRuntimeSupported(model.runtime): "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p2, Lcom/sonymobile/camera/faultdetector/c$c;->d:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    invoke-virtual {v2, v6}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->isRuntimeSupported(Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v5, p2, Lcom/sonymobile/camera/faultdetector/c$c;->d:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    invoke-virtual {v2, v5}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->isRuntimeSupported(Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_6

    :try_start_0
    iget-object p0, p0, Lcom/sonymobile/camera/faultdetector/c;->n:Lcom/sonymobile/camera/faultdetector/b;

    iget v5, p2, Lcom/sonymobile/camera/faultdetector/c$c;->c:I

    invoke-virtual {p0, p1, v5}, Lcom/sonymobile/camera/faultdetector/b;->a(Landroid/app/Application;I)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_2

    :try_start_1
    const-string p1, "Failed to get decrypted stream."

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return-object v6

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    :try_start_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 p1, 0x0

    invoke-virtual {v2, p1}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->setDebugEnabled(Z)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;

    move-result-object v1

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    iget-object v7, p2, Lcom/sonymobile/camera/faultdetector/c$c;->d:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    aput-object v7, v5, p1

    invoke-virtual {v1, v5}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->setRuntimeOrder([Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v1

    invoke-virtual {p1, p0, v1}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->setModel(Ljava/io/InputStream;I)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;

    move-result-object p1

    iget-boolean v1, p2, Lcom/sonymobile/camera/faultdetector/c$c;->f:Z

    invoke-virtual {p1, v1}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->setCpuFallbackEnabled(Z)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;

    move-result-object p1

    iget-boolean v1, p2, Lcom/sonymobile/camera/faultdetector/c$c;->e:Z

    invoke-virtual {p1, v1}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->setUseUserSuppliedBuffers(Z)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;

    move-result-object p1

    sget-object v1, Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;->LOW:Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;

    invoke-virtual {p1, v1}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->setExecutionPriorityHint(Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-virtual {v2}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->build()Lcom/qualcomm/qti/snpe/NeuralNetwork;

    move-result-object v6

    if-eqz v3, :cond_4

    const-string p1, "DetectorImpl_PERF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v7

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    if-eqz p0, :cond_7

    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :goto_0
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p0, :cond_5

    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p0

    :try_start_7
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed to build network: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sonymobile/camera/faultdetector/c$c;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Unsupported runtime: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p2, Lcom/sonymobile/camera/faultdetector/c$c;->d:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    invoke-virtual {p1}, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_2
    return-object v6
.end method

.method static synthetic a(Lcom/sonymobile/camera/faultdetector/c;Landroid/app/Application;Lcom/sonymobile/camera/faultdetector/c$c;)Lcom/qualcomm/qti/snpe/NeuralNetwork;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonymobile/camera/faultdetector/c;->a(Landroid/app/Application;Lcom/sonymobile/camera/faultdetector/c$c;)Lcom/qualcomm/qti/snpe/NeuralNetwork;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/sonymobile/camera/faultdetector/c;Lcom/qualcomm/qti/snpe/NeuralNetwork;)Lcom/qualcomm/qti/snpe/NeuralNetwork;
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/camera/faultdetector/c;->h:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    return-object p1
.end method

.method static synthetic a(Lcom/sonymobile/camera/faultdetector/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/camera/faultdetector/c;->j:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/graphics/Bitmap;Ljava/util/Map;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/qualcomm/qti/snpe/TF8UserBufferTensor;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sonymobile/camera/faultdetector/c;->h:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/camera/faultdetector/c;->h:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    iget-object v1, p0, Lcom/sonymobile/camera/faultdetector/c;->j:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->getTensorAttributes(Ljava/lang/String;)Lcom/qualcomm/qti/snpe/TensorAttributes;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/camera/faultdetector/c;->a(Lcom/qualcomm/qti/snpe/TensorAttributes;)[I

    move-result-object v3

    const/4 v0, 0x0

    aget v2, v3, v0

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    iget-object p1, p0, Lcom/sonymobile/camera/faultdetector/c;->j:Ljava/lang/String;

    invoke-interface {p3, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/sonymobile/camera/faultdetector/c;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/sonymobile/camera/faultdetector/c;->h:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    iget-object p3, p0, Lcom/sonymobile/camera/faultdetector/c;->g:Lcom/sonymobile/camera/faultdetector/c$c;

    iget v4, p3, Lcom/sonymobile/camera/faultdetector/c$c;->h:I

    iget-object p0, p0, Lcom/sonymobile/camera/faultdetector/c;->g:Lcom/sonymobile/camera/faultdetector/c$c;

    iget v5, p0, Lcom/sonymobile/camera/faultdetector/c$c;->g:F

    invoke-interface/range {v1 .. v6}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->createTF8UserBufferTensor(I[IIFLjava/nio/ByteBuffer;)Lcom/qualcomm/qti/snpe/TF8UserBufferTensor;

    move-result-object p0

    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private declared-synchronized a(Lcom/sonymobile/camera/faultdetector/c$d;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sonymobile/camera/faultdetector/c;->i:Lcom/sonymobile/camera/faultdetector/c$d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/sonymobile/camera/faultdetector/c;Lcom/sonymobile/camera/faultdetector/c$d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonymobile/camera/faultdetector/c;->a(Lcom/sonymobile/camera/faultdetector/c$d;)V

    return-void
.end method

.method static synthetic a(Lcom/sonymobile/camera/faultdetector/c;Ljava/util/List;Lcom/sonymobile/camera/faultdetector/DetectorInterface$Callback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonymobile/camera/faultdetector/c;->b(Ljava/util/List;Lcom/sonymobile/camera/faultdetector/DetectorInterface$Callback;)V

    return-void
.end method

.method private a(Ljava/util/Map;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/qualcomm/qti/snpe/TF8UserBufferTensor;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sonymobile/camera/faultdetector/c;->h:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/camera/faultdetector/c;->h:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    iget-object v1, p0, Lcom/sonymobile/camera/faultdetector/c;->k:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->getTensorAttributes(Ljava/lang/String;)Lcom/qualcomm/qti/snpe/TensorAttributes;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/camera/faultdetector/c;->a(Lcom/qualcomm/qti/snpe/TensorAttributes;)[I

    move-result-object v3

    const/4 v0, 0x0

    aget v2, v3, v0

    iget-object v0, p0, Lcom/sonymobile/camera/faultdetector/c;->k:Ljava/lang/String;

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sonymobile/camera/faultdetector/c;->k:Ljava/lang/String;

    iget-object v1, p0, Lcom/sonymobile/camera/faultdetector/c;->h:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    iget-object p0, p0, Lcom/sonymobile/camera/faultdetector/c;->k:Ljava/lang/String;

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-interface/range {v1 .. v6}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->createTF8UserBufferTensor(I[IIFLjava/nio/ByteBuffer;)Lcom/qualcomm/qti/snpe/TF8UserBufferTensor;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final varargs a([Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/qualcomm/qti/snpe/UserBufferTensor;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    array-length p0, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    aget-object v1, p1, v0

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/qti/snpe/UserBufferTensor;

    invoke-virtual {v2}, Lcom/qualcomm/qti/snpe/UserBufferTensor;->release()V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)[F
    .locals 17

    move-object/from16 v1, p0

    const-string v2, "DetectorImpl"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v8, p1

    invoke-direct {v1, v8, v5, v0}, Lcom/sonymobile/camera/faultdetector/c;->a(Landroid/graphics/Bitmap;Ljava/util/Map;Ljava/util/Map;)V

    invoke-direct {v1, v6, v7}, Lcom/sonymobile/camera/faultdetector/c;->a(Ljava/util/Map;Ljava/util/Map;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v10, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/sonymobile/camera/faultdetector/c;->h:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/sonymobile/camera/faultdetector/c;->h:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    invoke-interface {v0, v5, v6}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->execute(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v11, "Failed to execute in native."

    invoke-static {v2, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    move v0, v10

    :goto_0
    sget-boolean v11, Lcom/sonymobile/camera/faultdetector/c;->c:Z

    const-string v12, " ms"

    const-string v13, "DetectorImpl_PERF"

    if-eqz v11, :cond_1

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Network execution time = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    sub-long v8, v15, v8

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v8, 0x0

    if-nez v0, :cond_2

    const-string v0, "Failed to execute"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :cond_2
    iget-object v0, v1, Lcom/sonymobile/camera/faultdetector/c;->k:Ljava/lang/String;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/qti/snpe/TF8UserBufferTensor;

    iget-object v9, v1, Lcom/sonymobile/camera/faultdetector/c;->k:Ljava/lang/String;

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;

    if-nez v7, :cond_3

    const-string v0, "Failed to get output buffers"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :cond_3
    invoke-direct {v1, v0, v7}, Lcom/sonymobile/camera/faultdetector/c;->a(Lcom/qualcomm/qti/snpe/TF8UserBufferTensor;Ljava/nio/ByteBuffer;)[F

    move-result-object v0

    const/4 v2, 0x1

    new-array v7, v2, [Ljava/util/Map;

    aput-object v5, v7, v10

    invoke-direct {v1, v7}, Lcom/sonymobile/camera/faultdetector/c;->a([Ljava/util/Map;)V

    new-array v2, v2, [Ljava/util/Map;

    aput-object v6, v2, v10

    invoke-direct {v1, v2}, Lcom/sonymobile/camera/faultdetector/c;->a([Ljava/util/Map;)V

    if-eqz v11, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Total execution time = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v0
.end method

.method private a(Lcom/qualcomm/qti/snpe/TF8UserBufferTensor;Ljava/nio/ByteBuffer;)[F
    .locals 5

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p0

    new-array v0, p0, [B

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-array p2, p0, [F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p1}, Lcom/qualcomm/qti/snpe/TF8UserBufferTensor;->getMin()F

    move-result v3

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/qualcomm/qti/snpe/TF8UserBufferTensor;->getQuantizedStepSize()F

    move-result v4

    mul-float/2addr v2, v4

    add-float/2addr v3, v2

    aput v3, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p2

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Lcom/qualcomm/qti/snpe/TensorAttributes;)[I
    .locals 5

    invoke-interface {p0}, Lcom/qualcomm/qti/snpe/TensorAttributes;->getDims()[I

    move-result-object v0

    array-length v0, v0

    new-array v1, v0, [I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    aput v2, v1, v0

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v2, v0, -0x1

    aget v3, v1, v0

    invoke-interface {p0}, Lcom/qualcomm/qti/snpe/TensorAttributes;->getDims()[I

    move-result-object v4

    aget v4, v4, v0

    mul-int/2addr v3, v4

    aput v3, v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method static synthetic b(Lcom/sonymobile/camera/faultdetector/c;)Lcom/sonymobile/camera/faultdetector/c$c;
    .locals 0

    iget-object p0, p0, Lcom/sonymobile/camera/faultdetector/c;->g:Lcom/sonymobile/camera/faultdetector/c$c;

    return-object p0
.end method

.method static synthetic b(Lcom/sonymobile/camera/faultdetector/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/camera/faultdetector/c;->k:Ljava/lang/String;

    return-object p1
.end method

.method private b(Ljava/util/List;Lcom/sonymobile/camera/faultdetector/DetectorInterface$Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/sonymobile/camera/faultdetector/DetectorInterface$Callback;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sonymobile/camera/faultdetector/c;->h:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/sonymobile/camera/faultdetector/c;->h()Lcom/sonymobile/camera/faultdetector/c$d;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/camera/faultdetector/c$d;->d:Lcom/sonymobile/camera/faultdetector/c$d;

    if-eq v2, v3, :cond_1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/sonymobile/camera/faultdetector/c;->e:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, v1}, Lcom/sonymobile/camera/faultdetector/c;->a(Landroid/graphics/Bitmap;)[F

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/sonymobile/camera/faultdetector/c;->h()Lcom/sonymobile/camera/faultdetector/c$d;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/camera/faultdetector/c$d;->d:Lcom/sonymobile/camera/faultdetector/c$d;

    if-eq v1, v2, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    invoke-interface {p2, v0}, Lcom/sonymobile/camera/faultdetector/DetectorInterface$Callback;->onExecuted(Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method static synthetic c(Lcom/sonymobile/camera/faultdetector/c;)Lcom/qualcomm/qti/snpe/NeuralNetwork;
    .locals 0

    iget-object p0, p0, Lcom/sonymobile/camera/faultdetector/c;->h:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    return-object p0
.end method

.method static synthetic d(Lcom/sonymobile/camera/faultdetector/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/camera/faultdetector/c;->g()V

    return-void
.end method

.method static synthetic e(Lcom/sonymobile/camera/faultdetector/c;)Lcom/sonymobile/camera/faultdetector/c$d;
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/camera/faultdetector/c;->h()Lcom/sonymobile/camera/faultdetector/c$d;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e()Z
    .locals 1

    sget-boolean v0, Lcom/sonymobile/camera/faultdetector/c;->c:Z

    return v0
.end method

.method private f()V
    .locals 3

    iget-object v0, p0, Lcom/sonymobile/camera/faultdetector/c;->l:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WT_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sonymobile/camera/faultdetector/c;->g:Lcom/sonymobile/camera/faultdetector/c$c;

    iget-object v2, v2, Lcom/sonymobile/camera/faultdetector/c$c;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonymobile/camera/faultdetector/c;->l:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/sonymobile/camera/faultdetector/c$a;

    iget-object v1, p0, Lcom/sonymobile/camera/faultdetector/c;->l:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/camera/faultdetector/c$a;-><init>(Lcom/sonymobile/camera/faultdetector/c;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonymobile/camera/faultdetector/c;->m:Lcom/sonymobile/camera/faultdetector/c$a;

    :cond_0
    return-void
.end method

.method private g()V
    .locals 3

    iget-object v0, p0, Lcom/sonymobile/camera/faultdetector/c;->m:Lcom/sonymobile/camera/faultdetector/c$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/camera/faultdetector/c$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sonymobile/camera/faultdetector/c;->h:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/camera/faultdetector/c;->h:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    invoke-interface {v0}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "DetectorImpl"

    const-string v2, "Failed to release network resources."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput-object v1, p0, Lcom/sonymobile/camera/faultdetector/c;->h:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    :cond_0
    iput-object v1, p0, Lcom/sonymobile/camera/faultdetector/c;->j:Ljava/lang/String;

    iput-object v1, p0, Lcom/sonymobile/camera/faultdetector/c;->k:Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized h()Lcom/sonymobile/camera/faultdetector/c$d;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/camera/faultdetector/c;->i:Lcom/sonymobile/camera/faultdetector/c$d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method a(Ljava/util/List;Lcom/sonymobile/camera/faultdetector/DetectorInterface$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/sonymobile/camera/faultdetector/DetectorInterface$Callback;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/sonymobile/camera/faultdetector/c$b;

    invoke-direct {v0, p1, p2}, Lcom/sonymobile/camera/faultdetector/c$b;-><init>(Ljava/util/List;Lcom/sonymobile/camera/faultdetector/DetectorInterface$Callback;)V

    iget-object p0, p0, Lcom/sonymobile/camera/faultdetector/c;->m:Lcom/sonymobile/camera/faultdetector/c$a;

    const/4 p1, 0x3

    invoke-static {p0, p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method a()Z
    .locals 6

    const-string v0, "DetectorImpl"

    invoke-direct {p0}, Lcom/sonymobile/camera/faultdetector/c;->h()Lcom/sonymobile/camera/faultdetector/c$d;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/camera/faultdetector/c$d;->b:Lcom/sonymobile/camera/faultdetector/c$d;

    const/4 v3, 0x1

    if-eq v1, v2, :cond_3

    invoke-direct {p0}, Lcom/sonymobile/camera/faultdetector/c;->h()Lcom/sonymobile/camera/faultdetector/c$d;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/camera/faultdetector/c$d;->c:Lcom/sonymobile/camera/faultdetector/c$d;

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/sonymobile/camera/faultdetector/c$d;->b:Lcom/sonymobile/camera/faultdetector/c$d;

    invoke-direct {p0, v1}, Lcom/sonymobile/camera/faultdetector/c;->a(Lcom/sonymobile/camera/faultdetector/c$d;)V

    invoke-direct {p0}, Lcom/sonymobile/camera/faultdetector/c;->f()V

    iget-object v1, p0, Lcom/sonymobile/camera/faultdetector/c;->m:Lcom/sonymobile/camera/faultdetector/c$a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonymobile/camera/faultdetector/c$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v2, p0, Lcom/sonymobile/camera/faultdetector/c;->m:Lcom/sonymobile/camera/faultdetector/c$a;

    new-instance v4, Lcom/sonymobile/camera/faultdetector/c$1;

    invoke-direct {v4, p0, v1}, Lcom/sonymobile/camera/faultdetector/c$1;-><init>(Lcom/sonymobile/camera/faultdetector/c;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v2, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    iput v3, v2, Landroid/os/Message;->what:I

    iget-object v4, p0, Lcom/sonymobile/camera/faultdetector/c;->m:Lcom/sonymobile/camera/faultdetector/c$a;

    invoke-virtual {v4, v2}, Lcom/sonymobile/camera/faultdetector/c$a;->sendMessage(Landroid/os/Message;)Z

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x3

    invoke-virtual {v1, v4, v5, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Initialization timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/sonymobile/camera/faultdetector/c;->c:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonymobile/camera/faultdetector/c;->m:Lcom/sonymobile/camera/faultdetector/c$a;

    new-instance v2, Lcom/sonymobile/camera/faultdetector/c$2;

    invoke-direct {v2, p0}, Lcom/sonymobile/camera/faultdetector/c$2;-><init>(Lcom/sonymobile/camera/faultdetector/c;)V

    invoke-virtual {v1, v2}, Lcom/sonymobile/camera/faultdetector/c$a;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Initialization failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-boolean v0, Lcom/sonymobile/camera/faultdetector/c;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/camera/faultdetector/c;->m:Lcom/sonymobile/camera/faultdetector/c$a;

    new-instance v1, Lcom/sonymobile/camera/faultdetector/c$3;

    invoke-direct {v1, p0}, Lcom/sonymobile/camera/faultdetector/c$3;-><init>(Lcom/sonymobile/camera/faultdetector/c;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/camera/faultdetector/c$a;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/sonymobile/camera/faultdetector/c;->h()Lcom/sonymobile/camera/faultdetector/c$d;

    move-result-object p0

    sget-object v0, Lcom/sonymobile/camera/faultdetector/c$d;->c:Lcom/sonymobile/camera/faultdetector/c$d;

    if-ne p0, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :cond_3
    :goto_1
    return v3
.end method

.method b()V
    .locals 2

    invoke-direct {p0}, Lcom/sonymobile/camera/faultdetector/c;->h()Lcom/sonymobile/camera/faultdetector/c$d;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/camera/faultdetector/c$d;->a:Lcom/sonymobile/camera/faultdetector/c$d;

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lcom/sonymobile/camera/faultdetector/c;->h()Lcom/sonymobile/camera/faultdetector/c$d;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/camera/faultdetector/c$d;->e:Lcom/sonymobile/camera/faultdetector/c$d;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sonymobile/camera/faultdetector/c$d;->e:Lcom/sonymobile/camera/faultdetector/c$d;

    invoke-direct {p0, v0}, Lcom/sonymobile/camera/faultdetector/c;->a(Lcom/sonymobile/camera/faultdetector/c$d;)V

    iget-object v0, p0, Lcom/sonymobile/camera/faultdetector/c;->m:Lcom/sonymobile/camera/faultdetector/c$a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sonymobile/camera/faultdetector/c$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lcom/sonymobile/camera/faultdetector/c;->m:Lcom/sonymobile/camera/faultdetector/c$a;

    invoke-virtual {p0, v0}, Lcom/sonymobile/camera/faultdetector/c$a;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method c()V
    .locals 2

    invoke-direct {p0}, Lcom/sonymobile/camera/faultdetector/c;->h()Lcom/sonymobile/camera/faultdetector/c$d;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/camera/faultdetector/c$d;->a:Lcom/sonymobile/camera/faultdetector/c$d;

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sonymobile/camera/faultdetector/c;->h()Lcom/sonymobile/camera/faultdetector/c$d;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/camera/faultdetector/c$d;->e:Lcom/sonymobile/camera/faultdetector/c$d;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/camera/faultdetector/c;->b()V

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/camera/faultdetector/c;->l:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/camera/faultdetector/c;->l:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/camera/faultdetector/c;->l:Landroid/os/HandlerThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "DetectorImpl"

    const-string v1, "Failed to join worker thread."

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method d()Landroid/util/Size;
    .locals 3

    iget-object v0, p0, Lcom/sonymobile/camera/faultdetector/c;->h:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/camera/faultdetector/c;->h:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    invoke-interface {v0}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->getInputTensorsShapes()Ljava/util/Map;

    move-result-object v0

    iget-object p0, p0, Lcom/sonymobile/camera/faultdetector/c;->j:Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/util/Size;

    const/4 v1, 0x1

    aget v1, p0, v1

    const/4 v2, 0x2

    aget p0, p0, v2

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Failed to obtain appropriate shape of tensor"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
