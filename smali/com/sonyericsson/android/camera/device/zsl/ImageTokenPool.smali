.class public Lcom/sonyericsson/android/camera/device/zsl/ImageTokenPool;
.super Ljava/lang/Object;
.source "ImageTokenPool.java"


# instance fields
.field private final mImageTokenDeque:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/sonyericsson/android/camera/device/zsl/ImageToken;",
            ">;"
        }
    .end annotation
.end field

.field mListener:Lcom/sonyericsson/android/camera/device/zsl/ImageTokenListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmImageTokenDeque(Lcom/sonyericsson/android/camera/device/zsl/ImageTokenPool;)Ljava/util/Deque;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/zsl/ImageTokenPool;->mImageTokenDeque:Ljava/util/Deque;

    return-object p0
.end method

.method public constructor <init>(I)V
    .locals 4

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/zsl/ImageTokenPool;->mImageTokenDeque:Ljava/util/Deque;

    .line 44
    new-instance v0, Lcom/sonyericsson/android/camera/device/zsl/ImageTokenPool$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/device/zsl/ImageTokenPool$1;-><init>(Lcom/sonyericsson/android/camera/device/zsl/ImageTokenPool;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/zsl/ImageTokenPool;->mListener:Lcom/sonyericsson/android/camera/device/zsl/ImageTokenListener;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 26
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/zsl/ImageTokenPool;->mImageTokenDeque:Ljava/util/Deque;

    new-instance v2, Lcom/sonyericsson/android/camera/device/zsl/ImageToken;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/zsl/ImageTokenPool;->mListener:Lcom/sonyericsson/android/camera/device/zsl/ImageTokenListener;

    invoke-direct {v2, v3}, Lcom/sonyericsson/android/camera/device/zsl/ImageToken;-><init>(Lcom/sonyericsson/android/camera/device/zsl/ImageTokenListener;)V

    invoke-interface {v1, v2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getToken()Lcom/sonyericsson/android/camera/device/zsl/ImageToken;
    .locals 1

    .line 37
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "getToken() E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/zsl/ImageTokenPool;->mImageTokenDeque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 39
    invoke-static {}, Lcom/sonyericsson/android/camera/device/zsl/ImageToken;->invalidToken()Lcom/sonyericsson/android/camera/device/zsl/ImageToken;

    move-result-object p0

    return-object p0

    .line 41
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/zsl/ImageTokenPool;->mImageTokenDeque:Ljava/util/Deque;

    invoke-interface {p0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/device/zsl/ImageToken;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImageTokenPool{mImageTokenDeque="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/zsl/ImageTokenPool;->mImageTokenDeque:Ljava/util/Deque;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/zsl/ImageTokenPool;->mListener:Lcom/sonyericsson/android/camera/device/zsl/ImageTokenListener;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
