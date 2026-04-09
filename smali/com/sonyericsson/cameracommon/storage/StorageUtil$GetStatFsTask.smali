.class public Lcom/sonyericsson/cameracommon/storage/StorageUtil$GetStatFsTask;
.super Ljava/lang/Object;
.source "StorageUtil.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/storage/StorageUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetStatFsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Landroid/os/StatFs;",
        ">;"
    }
.end annotation


# instance fields
.field private final mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 269
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Target path is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 271
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/StorageUtil$GetStatFsTask;->mPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public call()Landroid/os/StatFs;
    .locals 1

    .line 278
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageUtil$GetStatFsTask;->mPath:Ljava/lang/String;

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Create StatFs failed."

    .line 280
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 264
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/StorageUtil$GetStatFsTask;->call()Landroid/os/StatFs;

    move-result-object p0

    return-object p0
.end method
