.class public final Lcom/qualcomm/qti/snpe/internal/NativeNetwork;
.super Ljava/lang/Object;
.source "NativeNetwork.java"

# interfaces
.implements Lcom/qualcomm/qti/snpe/NeuralNetwork;


# static fields
.field private static final mRuntimeAvailability:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mInputTensors:Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;

.field private mIsDebugEnabled:Z

.field private mModelVersion:Ljava/lang/String;

.field private mNativeHandle:J

.field private mOutputLayerNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOutputTensors:Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;

.field private mTargetRuntime:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mRuntimeAvailability:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;Ljava/util/Set;ZLcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;ZZZZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;",
            "Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;",
            "Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;",
            "ZZZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[I>;)V"
        }
    .end annotation

    move-object v0, p0

    move/from16 v13, p4

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    .line 68
    invoke-static/range {v1 .. v12}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->createInitBundle(Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;Ljava/util/Set;ZLcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;ZZZZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;

    move-result-object v1

    .line 71
    invoke-virtual {v1}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->marshall()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 73
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 74
    invoke-virtual/range {p2 .. p2}, Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;->getNativeAddress()J

    move-result-wide v4

    .line 75
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    .line 74
    invoke-direct {p0, v4, v5, v1, v6}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->nativeInitFromBuffer(JLjava/nio/ByteBuffer;I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mNativeHandle:J

    .line 76
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    if-eqz v13, :cond_0

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "Network initialization took "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v4, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "snpe-android"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v1, p1

    move-object/from16 v2, p3

    .line 81
    invoke-direct {p0, p1, v2, v13}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->init(Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;Ljava/util/Set;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;Ljava/io/File;Ljava/util/Set;ZLcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;ZZZZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;",
            "Ljava/io/File;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;",
            "Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;",
            "ZZZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[I>;)V"
        }
    .end annotation

    move-object v0, p0

    move/from16 v13, p4

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    .line 105
    invoke-static/range {v1 .. v12}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->createInitBundle(Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;Ljava/util/Set;ZLcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;ZZZZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;

    move-result-object v1

    .line 108
    invoke-virtual {v1}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->marshall()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 110
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 111
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 112
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    .line 111
    invoke-direct {p0, v4, v1, v5}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->nativeInitFromFile(Ljava/lang/String;Ljava/nio/ByteBuffer;I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mNativeHandle:J

    .line 113
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    if-eqz v13, :cond_0

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "Network initialization took "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v4, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "snpe-android"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v1, p1

    move-object/from16 v2, p3

    .line 119
    invoke-direct {p0, p1, v2, v13}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->init(Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;Ljava/util/Set;Z)V

    return-void
.end method

.method private assertInputTensor(Ljava/lang/String;Lcom/qualcomm/qti/snpe/Tensor;)V
    .locals 1

    if-eqz p2, :cond_2

    .line 434
    instance-of v0, p2, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;

    if-eqz v0, :cond_1

    .line 438
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mInputTensors:Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;

    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    iget-object p0, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mInputTensors:Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;

    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/qualcomm/qti/snpe/TensorAttributes;

    invoke-interface {p0}, Lcom/qualcomm/qti/snpe/TensorAttributes;->getDims()[I

    move-result-object p0

    .line 443
    invoke-virtual {p2}, Lcom/qualcomm/qti/snpe/Tensor;->getShape()[I

    move-result-object p2

    invoke-static {p1, p0, p2}, Lcom/qualcomm/qti/snpe/internal/TensorUtil;->assertShape(Ljava/lang/String;[I[I)V

    return-void

    .line 439
    :cond_0
    new-instance p0, Lcom/qualcomm/qti/snpe/NeuralNetwork$InvalidInput;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Tensor not amongst network input tensors: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/snpe/NeuralNetwork$InvalidInput;-><init>(Ljava/lang/String;)V

    throw p0

    .line 435
    :cond_1
    new-instance p0, Lcom/qualcomm/qti/snpe/NeuralNetwork$InvalidInput;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Input Tensor must be an instance of "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class p2, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/snpe/NeuralNetwork$InvalidInput;-><init>(Ljava/lang/String;)V

    throw p0

    .line 431
    :cond_2
    new-instance p0, Lcom/qualcomm/qti/snpe/NeuralNetwork$InvalidInput;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Tensor can not be null: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/snpe/NeuralNetwork$InvalidInput;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private assertInputTensor(Ljava/lang/String;Lcom/qualcomm/qti/snpe/UserBufferTensor;)V
    .locals 1

    if-eqz p2, :cond_2

    .line 451
    instance-of p2, p2, Lcom/qualcomm/qti/snpe/internal/NativeUserBufferHandle;

    if-eqz p2, :cond_1

    .line 455
    iget-object p0, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mInputTensors:Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;

    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 456
    :cond_0
    new-instance p0, Lcom/qualcomm/qti/snpe/NeuralNetwork$InvalidInput;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Tensor not amongst network input tensors: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/snpe/NeuralNetwork$InvalidInput;-><init>(Ljava/lang/String;)V

    throw p0

    .line 452
    :cond_1
    new-instance p0, Lcom/qualcomm/qti/snpe/NeuralNetwork$InvalidInput;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Input Tensor must be an instance of "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class p2, Lcom/qualcomm/qti/snpe/internal/NativeUserBufferHandle;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/snpe/NeuralNetwork$InvalidInput;-><init>(Ljava/lang/String;)V

    throw p0

    .line 448
    :cond_2
    new-instance p0, Lcom/qualcomm/qti/snpe/NeuralNetwork$InvalidInput;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Tensor can not be null: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/snpe/NeuralNetwork$InvalidInput;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private assertOutputTensor(Ljava/lang/String;Lcom/qualcomm/qti/snpe/UserBufferTensor;)V
    .locals 1

    if-eqz p2, :cond_2

    .line 465
    instance-of p2, p2, Lcom/qualcomm/qti/snpe/internal/NativeUserBufferHandle;

    if-eqz p2, :cond_1

    .line 469
    iget-object p0, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mOutputTensors:Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;

    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 470
    :cond_0
    new-instance p0, Lcom/qualcomm/qti/snpe/NeuralNetwork$InvalidInput;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Tensor not amongst network output tensors: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/snpe/NeuralNetwork$InvalidInput;-><init>(Ljava/lang/String;)V

    throw p0

    .line 466
    :cond_1
    new-instance p0, Lcom/qualcomm/qti/snpe/NeuralNetwork$InvalidInput;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Output Tensor must be an instance of "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class p2, Lcom/qualcomm/qti/snpe/internal/NativeUserBufferHandle;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/snpe/NeuralNetwork$InvalidInput;-><init>(Ljava/lang/String;)V

    throw p0

    .line 462
    :cond_2
    new-instance p0, Lcom/qualcomm/qti/snpe/NeuralNetwork$InvalidInput;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Tensor can not be null: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/snpe/NeuralNetwork$InvalidInput;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static assertSelectedOutputLayer(Ljava/util/Set;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 311
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 312
    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 313
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Selected layer is not amongst network output layers: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method private static createInitBundle(Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;Ljava/util/Set;ZLcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;ZZZZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;",
            "Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;",
            "ZZZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[I>;)",
            "Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;"
        }
    .end annotation

    .line 331
    new-instance v0, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;

    invoke-direct {v0}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;-><init>()V

    .line 332
    iget p0, p0, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;->ordinal:I

    invoke-virtual {v0, p0}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeInt(I)V

    .line 333
    iget p0, p3, Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;->ordinal:I

    invoke-virtual {v0, p0}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeInt(I)V

    .line 334
    iget p0, p4, Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;->ordinal:I

    invoke-virtual {v0, p0}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeInt(I)V

    .line 335
    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeStrings(Ljava/util/Collection;)V

    .line 336
    invoke-virtual {v0, p2}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeBoolean(Z)V

    .line 337
    invoke-virtual {v0, p5}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeBoolean(Z)V

    .line 338
    invoke-virtual {v0, p6}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeBoolean(Z)V

    .line 339
    invoke-virtual {v0, p7}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeBoolean(Z)V

    .line 340
    invoke-virtual {v0, p8}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeBoolean(Z)V

    .line 341
    invoke-virtual {v0, p9}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeString(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v0, p10}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeString(Ljava/lang/String;)V

    .line 343
    invoke-interface {p11}, Ljava/util/Map;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeInt(I)V

    .line 344
    invoke-interface {p11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 345
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeString(Ljava/lang/String;)V

    .line 346
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeInts([I)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private doRelease()V
    .locals 5

    .line 294
    iget-wide v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 295
    invoke-direct {p0, v0, v1}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->nativeRelease(J)V

    .line 296
    iput-wide v2, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mNativeHandle:J

    :cond_0
    return-void
.end method

.method private init(Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;Ljava/util/Set;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 85
    iget-wide v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->nativeGetModelMetadata(J)Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mModelVersion:Ljava/lang/String;

    .line 87
    invoke-static {v0}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->readOutputLayerNames(Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mOutputLayerNames:Ljava/util/Set;

    .line 88
    new-instance v1, Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;

    invoke-direct {v1, v0}, Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;-><init>(Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;)V

    iput-object v1, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mInputTensors:Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;

    .line 89
    new-instance v1, Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;

    invoke-direct {v1, v0}, Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;-><init>(Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;)V

    iput-object v1, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mOutputTensors:Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;

    .line 90
    iput-object p1, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mTargetRuntime:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    .line 91
    iput-boolean p3, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mIsDebugEnabled:Z

    .line 93
    iget-object p0, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mOutputLayerNames:Ljava/util/Set;

    invoke-static {p0, p2}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->assertSelectedOutputLayer(Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method public static declared-synchronized isRuntimeAvailable(Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;)Z
    .locals 3

    const-class v0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;

    monitor-enter v0

    .line 51
    :try_start_0
    sget-object v1, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mRuntimeAvailability:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 52
    iget v2, p0, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;->ordinal:I

    invoke-static {v2}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->nativeIsRuntimeAvailable(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_0
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private native nativeForward(JLjava/nio/ByteBuffer;I[Ljava/nio/ByteBuffer;)Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;
.end method

.method private native nativeGetModelMetadata(J)Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;
.end method

.method private native nativeInitFromBuffer(JLjava/nio/ByteBuffer;I)J
.end method

.method private native nativeInitFromFile(Ljava/lang/String;Ljava/nio/ByteBuffer;I)J
.end method

.method private static native nativeIsRuntimeAvailable(I)Z
.end method

.method private native nativeRelease(J)V
.end method

.method private native nativeUserBufferForward(JLjava/nio/ByteBuffer;I)Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;
.end method

.method private static readOutputLayerNames(Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 301
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 302
    invoke-virtual {p0}, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->readInt()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 304
    invoke-virtual {p0}, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private readOutputTensors(Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/qualcomm/qti/snpe/FloatTensor;",
            ">;"
        }
    .end annotation

    .line 352
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 353
    invoke-virtual {p1}, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->readInt()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 355
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->readTensor(Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;)Landroid/util/Pair;

    move-result-object v3

    .line 356
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private readOutputUserBufferTensors(Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;Ljava/util/Map;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/qualcomm/qti/snpe/UserBufferTensor;",
            ">;)Z"
        }
    .end annotation

    .line 372
    invoke-virtual {p1}, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->readInt()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 374
    invoke-virtual {p1}, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->readString()Ljava/lang/String;

    move-result-object v3

    .line 375
    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    return v1

    .line 379
    :cond_0
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qualcomm/qti/snpe/UserBufferTensor;

    invoke-direct {p0, p1, v3}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->readUserBufferTensor(Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;Lcom/qualcomm/qti/snpe/UserBufferTensor;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private readTensor(Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/qualcomm/qti/snpe/FloatTensor;",
            ">;"
        }
    .end annotation

    .line 362
    invoke-virtual {p1}, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->readString()Ljava/lang/String;

    move-result-object p0

    .line 363
    invoke-virtual {p1}, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->readIntArray()[I

    move-result-object v0

    .line 364
    invoke-virtual {p1}, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->readFloatArray()[F

    move-result-object p1

    .line 365
    new-instance v1, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;

    invoke-direct {v1, v0}, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;-><init>([I)V

    .line 366
    array-length v0, p1

    const/4 v2, 0x0

    new-array v3, v2, [I

    invoke-virtual {v1, p1, v2, v0, v3}, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->write([FII[I)V

    .line 367
    invoke-static {p0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private readUserBufferTensor(Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;Lcom/qualcomm/qti/snpe/UserBufferTensor;)V
    .locals 1

    .line 386
    invoke-virtual {p2}, Lcom/qualcomm/qti/snpe/UserBufferTensor;->getEncoding()Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;

    move-result-object p0

    sget-object v0, Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;->TF8:Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;

    if-ne p0, v0, :cond_1

    .line 387
    instance-of p0, p2, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;

    if-eqz p0, :cond_0

    .line 391
    const-class p0, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;

    invoke-virtual {p0, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;

    .line 392
    invoke-virtual {p1}, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->readInt()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->setStepExactly0(I)V

    .line 393
    invoke-virtual {p1}, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->readFloat()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->setQuantizedStepSize(F)V

    goto :goto_0

    .line 388
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "UserBuffer tensor encodings do not match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private writeInputTensors(Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;Ljava/util/Map;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 399
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    .line 400
    invoke-virtual {p1, v0}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeInt(I)V

    .line 401
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 402
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 403
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;

    invoke-direct {p0, p1, v2, v3}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->writeTensor(Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;Ljava/lang/String;Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 404
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private writeTensor(Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;Ljava/lang/String;Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;)Ljava/nio/ByteBuffer;
    .locals 2

    .line 411
    invoke-virtual {p3}, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->getNativeHandle()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeLong(J)V

    .line 412
    invoke-virtual {p1, p2}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeString(Ljava/lang/String;)V

    .line 414
    invoke-virtual {p3}, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->asByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 415
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeInt(I)V

    return-object p0
.end method

.method private writeUserBufferTensors(Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/qualcomm/qti/snpe/UserBufferTensor;",
            ">;)V"
        }
    .end annotation

    .line 421
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p0

    .line 422
    invoke-virtual {p1, p0}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeInt(I)V

    .line 423
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 424
    const-class v1, Lcom/qualcomm/qti/snpe/internal/NativeUserBufferHandle;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/qti/snpe/internal/NativeUserBufferHandle;

    invoke-interface {v1}, Lcom/qualcomm/qti/snpe/internal/NativeUserBufferHandle;->getNativeHandle()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeLong(J)V

    .line 425
    invoke-virtual {p1, v0}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public varargs createFloatTensor([I)Lcom/qualcomm/qti/snpe/FloatTensor;
    .locals 3

    if-eqz p1, :cond_2

    .line 189
    array-length p0, p1

    if-eqz p0, :cond_2

    .line 193
    array-length p0, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    aget v1, p1, v0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Shape dimension can not be < 1!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 198
    :cond_1
    new-instance p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;-><init>([I)V

    return-object p0

    .line 190
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Tensor shape can not be null or empty!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createTF8UserBufferTensor(I[IIFLjava/nio/ByteBuffer;)Lcom/qualcomm/qti/snpe/TF8UserBufferTensor;
    .locals 6

    if-lez p1, :cond_5

    .line 209
    array-length p0, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    aget v1, p2, v0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Strides can not be less than 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-ltz p3, :cond_4

    const/16 p0, 0xff

    if-gt p3, p0, :cond_4

    float-to-double v0, p4

    const-wide/16 v2, 0x0

    cmpg-double p0, v0, v2

    if-lez p0, :cond_3

    if-eqz p5, :cond_2

    .line 227
    new-instance p0, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;-><init>(I[IIFLjava/nio/ByteBuffer;)V

    return-object p0

    .line 224
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Buffer must be allocated, not null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 220
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Step size has to be a positive value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 216
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Step representing 0.0 has to be a valid 8-bit value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 206
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Buffer size has to be greater than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public execute(Ljava/util/Map;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/qualcomm/qti/snpe/FloatTensor;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/qualcomm/qti/snpe/FloatTensor;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 124
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 129
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 130
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qualcomm/qti/snpe/Tensor;

    .line 131
    invoke-direct {p0, v2, v3}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->assertInputTensor(Ljava/lang/String;Lcom/qualcomm/qti/snpe/Tensor;)V

    .line 132
    const-class v4, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 135
    :cond_0
    new-instance p1, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;

    invoke-direct {p1}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;-><init>()V

    .line 136
    invoke-direct {p0, p1, v0}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->writeInputTensors(Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 138
    invoke-virtual {p1}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->marshall()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 140
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 141
    iget-wide v2, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mNativeHandle:J

    .line 142
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/nio/ByteBuffer;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, [Ljava/nio/ByteBuffer;

    move-object v1, p0

    .line 141
    invoke-direct/range {v1 .. v6}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->nativeForward(JLjava/nio/ByteBuffer;I[Ljava/nio/ByteBuffer;)Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;

    move-result-object p1

    .line 143
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 145
    iget-boolean v2, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mIsDebugEnabled:Z

    if-eqz v2, :cond_1

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Network forward took "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v0, v7

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "snpe-android"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_1
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->readOutputTensors(Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 125
    :cond_2
    new-instance p0, Lcom/qualcomm/qti/snpe/NeuralNetwork$InvalidInput;

    const-string p1, "Input tensor map can not be null or empty!"

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/snpe/NeuralNetwork$InvalidInput;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public execute(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/qualcomm/qti/snpe/UserBufferTensor;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/qualcomm/qti/snpe/UserBufferTensor;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 154
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p2, :cond_3

    .line 158
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 162
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 163
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/qti/snpe/UserBufferTensor;

    invoke-direct {p0, v1, v2}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->assertInputTensor(Ljava/lang/String;Lcom/qualcomm/qti/snpe/UserBufferTensor;)V

    goto :goto_0

    .line 166
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 167
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/qti/snpe/UserBufferTensor;

    invoke-direct {p0, v1, v2}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->assertOutputTensor(Ljava/lang/String;Lcom/qualcomm/qti/snpe/UserBufferTensor;)V

    goto :goto_1

    .line 170
    :cond_1
    new-instance v0, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;

    invoke-direct {v0}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;-><init>()V

    .line 171
    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->writeUserBufferTensors(Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;Ljava/util/Map;)V

    .line 172
    invoke-direct {p0, v0, p2}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->writeUserBufferTensors(Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;Ljava/util/Map;)V

    .line 174
    invoke-virtual {v0}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->marshall()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 176
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 177
    iget-wide v2, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mNativeHandle:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-direct {p0, v2, v3, p1, v4}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->nativeUserBufferForward(JLjava/nio/ByteBuffer;I)Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;

    move-result-object p1

    .line 178
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 180
    iget-boolean v4, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mIsDebugEnabled:Z

    if-eqz v4, :cond_2

    .line 181
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Network forward took "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v2, v0

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "snpe-android"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->readOutputUserBufferTensors(Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;Ljava/util/Map;)Z

    move-result p0

    return p0

    .line 159
    :cond_3
    new-instance p0, Lcom/qualcomm/qti/snpe/NeuralNetwork$InvalidInput;

    const-string p1, "Output tensor map can not be null or empty"

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/snpe/NeuralNetwork$InvalidInput;-><init>(Ljava/lang/String;)V

    throw p0

    .line 155
    :cond_4
    new-instance p0, Lcom/qualcomm/qti/snpe/NeuralNetwork$InvalidInput;

    const-string p1, "Input tensor map can not be null or empty!"

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/snpe/NeuralNetwork$InvalidInput;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 287
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 288
    invoke-direct {p0}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->doRelease()V

    return-void
.end method

.method public getInputTensorsNames()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 242
    iget-object p0, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mInputTensors:Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;

    invoke-virtual {p0}, Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getInputTensorsShapes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation

    .line 232
    new-instance v0, Ljava/util/HashMap;

    iget-object p0, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mInputTensors:Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;

    invoke-virtual {p0}, Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;->getTensorShapes()Ljava/util/Map;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getModelVersion()Ljava/lang/String;
    .locals 0

    .line 263
    iget-object p0, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mModelVersion:Ljava/lang/String;

    return-object p0
.end method

.method public getOutputLayers()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 273
    iget-object p0, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mOutputLayerNames:Ljava/util/Set;

    return-object p0
.end method

.method public getOutputTensorsNames()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 247
    iget-object p0, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mOutputTensors:Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;

    invoke-virtual {p0}, Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getOutputTensorsShapes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation

    .line 237
    new-instance v0, Ljava/util/HashMap;

    iget-object p0, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mOutputTensors:Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;

    invoke-virtual {p0}, Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;->getTensorShapes()Ljava/util/Map;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getRuntime()Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mTargetRuntime:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    return-object p0
.end method

.method public getTensorAttributes(Ljava/lang/String;)Lcom/qualcomm/qti/snpe/TensorAttributes;
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mInputTensors:Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;

    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-object p0, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mInputTensors:Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;

    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/qualcomm/qti/snpe/TensorAttributes;

    return-object p0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mOutputTensors:Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;

    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    iget-object p0, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mOutputTensors:Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;

    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/qualcomm/qti/snpe/TensorAttributes;

    return-object p0

    .line 257
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Network has no tensor with name "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public declared-synchronized release()V
    .locals 4

    monitor-enter p0

    .line 278
    :try_start_0
    iget-wide v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 281
    invoke-direct {p0}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->doRelease()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    monitor-exit p0

    return-void

    .line 279
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Network instance already released!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
