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

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 289
    iput-object p2, p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareTask;->mCallback:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$OnPlatformCapabilityPreparedCallback;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/CountDownLatch;Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$OnPlatformCapabilityPreparedCallback;Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareTask-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareTask;-><init>(Ljava/util/concurrent/CountDownLatch;Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$OnPlatformCapabilityPreparedCallback;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 295
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->-$$Nest$sfgetREQUESTED_PERMISSIONS()[Ljava/lang/String;

    move-result-object v1

    .line 294
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/PermissionsUtil;->arePermissionsGranted(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareTask;->mCallback:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$OnPlatformCapabilityPreparedCallback;

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->-$$Nest$smprepareInternal(Ljava/util/concurrent/CountDownLatch;Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$OnPlatformCapabilityPreparedCallback;)V

    goto :goto_0

    .line 298
    :cond_0
    sget-object p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;->PERMISSION_DENIED:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->-$$Nest$sfputsPrepareState(Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$PrepareState;)V

    :goto_0
    return-void
.end method
