.class public abstract Lcom/qualcomm/qti/snpe/SNPE;
.super Ljava/lang/Object;
.source "SNPE.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "snpe-android"

.field private static sInitialized:Z

.field private static sRuntimeVersion:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/app/Application;)V
    .locals 0

    .line 38
    invoke-static {p0}, Lcom/qualcomm/qti/snpe/SNPE;->init(Landroid/app/Application;)V

    return-void
.end method

.method public static getRuntimeVersion(Landroid/app/Application;)Ljava/lang/String;
    .locals 0

    .line 63
    invoke-static {p0}, Lcom/qualcomm/qti/snpe/SNPE;->init(Landroid/app/Application;)V

    .line 64
    sget-object p0, Lcom/qualcomm/qti/snpe/SNPE;->sRuntimeVersion:Ljava/lang/String;

    if-nez p0, :cond_0

    .line 65
    invoke-static {}, Lcom/qualcomm/qti/snpe/SNPE;->nativeGetRuntimeVersion()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/qualcomm/qti/snpe/SNPE;->sRuntimeVersion:Ljava/lang/String;

    .line 67
    :cond_0
    sget-object p0, Lcom/qualcomm/qti/snpe/SNPE;->sRuntimeVersion:Ljava/lang/String;

    return-object p0
.end method

.method private static declared-synchronized init(Landroid/app/Application;)V
    .locals 2

    const-class v0, Lcom/qualcomm/qti/snpe/SNPE;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-boolean v1, Lcom/qualcomm/qti/snpe/SNPE;->sInitialized:Z

    if-nez v1, :cond_0

    .line 53
    const-string/jumbo v1, "snpe-android"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-static {p0}, Lcom/qualcomm/qti/snpe/SNPE;->nativeInit(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 55
    sput-boolean p0, Lcom/qualcomm/qti/snpe/SNPE;->sInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static native nativeGetRuntimeVersion()Ljava/lang/String;
.end method

.method private static native nativeInit(Ljava/lang/String;)V
.end method
