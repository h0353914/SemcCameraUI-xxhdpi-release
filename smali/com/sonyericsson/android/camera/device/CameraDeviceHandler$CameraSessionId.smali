.class public Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraSessionId"
.end annotation


# static fields
.field private static sIdLock:Ljava/lang/Object;

.field private static sLastId:I


# instance fields
.field private final mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 330
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;->sIdLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;->makeTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;->mTag:Ljava/lang/String;

    return-void
.end method

.method private static makeTag()Ljava/lang/String;
    .locals 2

    .line 339
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;->sIdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 340
    :try_start_0
    sget v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;->sLastId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;->sLastId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 341
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 346
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;->mTag:Ljava/lang/String;

    return-object p0
.end method
