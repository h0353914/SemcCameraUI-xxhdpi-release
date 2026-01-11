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
.method static bridge synthetic -$$Nest$sfgetsIsSupported()Z
    .locals 1

    sget-boolean v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$isBypassCameraSupportStateHolder;->sIsSupported:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1496
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$isBypassCameraSupportStateHolder;->isSupported()Z

    move-result v0

    sput-boolean v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$isBypassCameraSupportStateHolder;->sIsSupported:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isSupported()Z
    .locals 2

    const/4 v0, 0x0

    .line 1500
    :try_start_0
    const-string v1, "com.sonymobile.imageprocessor.bypasscamera2.BypassCamera"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1504
    :catch_0
    const-string v1, "BypassCamera is NOT SUPPORTED"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    return v0
.end method
