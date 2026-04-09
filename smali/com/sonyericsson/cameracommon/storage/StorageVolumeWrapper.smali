.class public Lcom/sonyericsson/cameracommon/storage/StorageVolumeWrapper;
.super Ljava/lang/Object;
.source "StorageVolumeWrapper.java"


# instance fields
.field private mStorageVolume:Landroid/os/storage/StorageVolume;


# direct methods
.method public constructor <init>(Landroid/os/storage/StorageVolume;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/StorageVolumeWrapper;->mStorageVolume:Landroid/os/storage/StorageVolume;

    return-void
.end method


# virtual methods
.method public getMaxFileSize()J
    .locals 4

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageVolumeWrapper;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getMaxFileSize"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 35
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageVolumeWrapper;->mStorageVolume:Landroid/os/storage/StorageVolume;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 4

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageVolumeWrapper;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getUuid"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 52
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageVolumeWrapper;->mStorageVolume:Landroid/os/storage/StorageVolume;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 54
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
