.class Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareTask;
.super Ljava/lang/Object;
.source "PlatformCapability.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrepareTask"
.end annotation


# instance fields
.field private mCallback:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$OnPlatformCapabilityPreparedCallback;

.field private final mLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method private constructor <init>(Ljava/util/concurrent/CountDownLatch;Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$OnPlatformCapabilityPreparedCallback;)V
    .locals 0

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 198
    iput-object p2, p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareTask;->mCallback:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$OnPlatformCapabilityPreparedCallback;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/CountDownLatch;Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$OnPlatformCapabilityPreparedCallback;Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$1;)V
    .locals 0

    .line 189
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareTask;-><init>(Ljava/util/concurrent/CountDownLatch;Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$OnPlatformCapabilityPreparedCallback;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareTask;->mCallback:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$OnPlatformCapabilityPreparedCallback;

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->access$100(Ljava/util/concurrent/CountDownLatch;Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$OnPlatformCapabilityPreparedCallback;)V

    return-void
.end method
