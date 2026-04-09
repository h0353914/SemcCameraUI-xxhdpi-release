.class Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$isBypassCameraSupportStateHolder;
.super Ljava/lang/Object;
.source "PlatformCapability.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "isBypassCameraSupportStateHolder"
.end annotation


# static fields
.field private static final sIsSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1305
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$isBypassCameraSupportStateHolder;->isSupported()Z

    move-result v0

    sput-boolean v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$isBypassCameraSupportStateHolder;->sIsSupported:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .line 1304
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$isBypassCameraSupportStateHolder;->sIsSupported:Z

    return v0
.end method

.method private static isSupported()Z
    .locals 1

    :try_start_0
    const-string v0, "com.sonymobile.imageprocessor.bypasscamera2.BypassCamera"

    .line 1309
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const-string v0, "BypassCamera is NOT SUPPORTED"

    .line 1313
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method
