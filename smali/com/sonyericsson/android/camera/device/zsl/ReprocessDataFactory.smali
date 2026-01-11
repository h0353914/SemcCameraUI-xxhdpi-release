.class public Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory;
.super Ljava/lang/Object;
.source "ReprocessDataFactory.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/device/zsl/DataFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory$FactoryHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sonyericsson/android/camera/device/zsl/DataFactory<",
        "Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;",
        ">;"
    }
.end annotation


# static fields
.field public static final MAX_IN_PROCESS_ZSL_IMAGE:I = 0x2

.field private static final MSG_START_PROCESS:I = 0x1

.field private static final POLL_TIMEOUT_MS:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "ReprocessDataFactory"


# instance fields
.field private final mDataDeque:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque<",
            "Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;",
            ">;"
        }
    .end annotation
.end field

.field private mFactoryThreadHandler:Landroid/os/HandlerThread;

.field private mHandler:Landroid/os/Handler;

.field private mImageTokenPool:Lcom/sonyericsson/android/camera/device/zsl/ImageTokenPool;

.field private mListener:Lcom/sonyericsson/android/camera/device/zsl/DataListener;

.field private final mResultDeque:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque<",
            "Landroid/hardware/camera2/TotalCaptureResult;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mStopped:Z


# direct methods
.method static bridge synthetic -$$Nest$mprocess(Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory;Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory;->process(Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory;->mResultDeque:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 32
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory;->mDataDeque:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 46
    new-instance v0, Lcom/sonyericsson/android/camera/device/zsl/ImageTokenPool;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/device/zsl/ImageTokenPool;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory;->mImageTokenPool:Lcom/sonyericsson/android/camera/device/zsl/ImageTokenPool;

    return-void
.end method

.method private dealPreviousImage()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory;->mDataDeque:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;

    .line 158
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private inputCaptureResult(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1

    .line 167
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "inputCaptureResult"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 168
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory;->mStopped:Z

    if-eqz v0, :cond_1

    return-void

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory;->mResultDeque:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->remainingCapacity()I

    move-result v0

    if-nez v0, :cond_2

    .line 172
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory;->mResultDeque:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->poll()Ljava/lang/Object;

    .line 174
    :cond_2
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory;->mResultDeque:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->add(Ljava/lang/Object;)Z

    .line 175
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_3

    const-string p0, "inputCaptureResult X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private inputImage(Landroid/media/Image;)V
    .locals 3

    .line 138
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "inputImage E "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory;->mImageTokenPool:Lcom/sonyericsson/android/camera/device/zsl/ImageTokenPool;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/zsl/ImageTokenPool;->getToken()Lcom/sonyericsson/android/camera/device/zsl/ImageToken;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/zsl/ImageToken;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory;->mStopped:Z

    if-nez v1, :cond_2

    .line 142
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory;->mDataDeque:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 143
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory;->dealPreviousImage()V

    .line 146
    :cond_1
    new-instance v1, Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;

    invoke-direct {v1, v0}, Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;-><init>(Lcom/sonyericsson/android/camera/device/zsl/ImageToken;)V

    .line 147
    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;->setImage(Landroid/media/Image;)V

    .line 148
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory;->mDataDeque:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 150
    :cond_2
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 151
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/zsl/ImageToken;->recycle()V

    .line 153
    :goto_0
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_3

    const-string p0, "inputImage X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private process(Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;)V
    .locals 4

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory;->mResultDeque:Ljava/util/concurrent/LinkedBlockingDeque;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;->setResult(Landroid/hardware/camera2/TotalCaptureResult;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 78
    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory;->mListener:Lcom/sonyericsson/android/camera/device/zsl/DataListener;

    if-eqz p0, :cond_0

    .line 79
    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/device/zsl/DataListener;->onDataAvailable(Ljava/lang/Object;)V

    goto :goto_1

    .line 81
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;->recycle()V

    :goto_1
    return-void
.end method


# virtual methods
.method public clearData()V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory;->mResultDeque:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    .line 182
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory;->mDataDeque:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;->recycle()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public input(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)V"
        }
    .end annotation

    .line 121
    instance-of v0, p1, Landroid/media/Image;

    if-eqz v0, :cond_0

    .line 122
    check-cast p1, Landroid/media/Image;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory;->inputImage(Landroid/media/Image;)V

    goto :goto_0

    .line 123
    :cond_0
    instance-of v0, p1, Landroid/hardware/camera2/TotalCaptureResult;

    if-eqz v0, :cond_1

    .line 124
    check-cast p1, Landroid/hardware/camera2/TotalCaptureResult;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory;->inputCaptureResult(Landroid/hardware/camera2/TotalCaptureResult;)V

    :goto_0
    return-void

    .line 126
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported input data type : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isRunning()Z
    .locals 0

    .line 111
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory;->mStopped:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public setDataListener(Lcom/sonyericsson/android/camera/device/zsl/DataListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/device/zsl/DataListener<",
            "Lcom/sonyericsson/android/camera/device/zsl/ReprocessData;",
            ">;)V"
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory;->mListener:Lcom/sonyericsson/android/camera/device/zsl/DataListener;

    return-void
.end method

.method public start()V
    .locals 2

    .line 87
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start() E"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory;->clearData()V

    .line 89
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory;->mFactoryThreadHandler:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    .line 90
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "reprocess-data-factory"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory;->mFactoryThreadHandler:Landroid/os/HandlerThread;

    .line 91
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 92
    new-instance v0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory$FactoryHandler;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory;->mFactoryThreadHandler:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory$FactoryHandler;-><init>(Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory;->mHandler:Landroid/os/Handler;

    :cond_1
    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory;->mStopped:Z

    return-void
.end method

.method public stop()V
    .locals 1

    .line 99
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "stop E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory;->mStopped:Z

    .line 101
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory;->mFactoryThreadHandler:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory;->mFactoryThreadHandler:Landroid/os/HandlerThread;

    .line 104
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory;->mHandler:Landroid/os/Handler;

    .line 106
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory;->clearData()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ReprocessDataFactory{mResultDeque="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory;->mResultDeque:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFactoryThreadHandler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory;->mFactoryThreadHandler:Landroid/os/HandlerThread;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory;->mListener:Lcom/sonyericsson/android/camera/device/zsl/DataListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStopped="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory;->mStopped:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mImageTokenPool="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory;->mImageTokenPool:Lcom/sonyericsson/android/camera/device/zsl/ImageTokenPool;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHandler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/zsl/ReprocessDataFactory;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
