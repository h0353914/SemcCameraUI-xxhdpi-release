.class public Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy;
.super Ljava/lang/Object;
.source "StorageManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;
    }
.end annotation


# static fields
.field private static mMethodGetVolumes:Ljava/lang/reflect/Method;

.field private static mStorageTypeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static mStorageTypeInverseMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;",
            ">;"
        }
    .end annotation
.end field

.field private static mStorageTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 32
    const-class v0, Landroid/os/storage/StorageManager;

    :try_start_0
    const-string v1, "getVolumes"

    const/4 v2, 0x0

    .line 36
    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy;->mMethodGetVolumes:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "android.os.storage.StorageManager$StorageType"

    .line 43
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy;->mStorageTypeClass:Ljava/lang/Class;

    .line 46
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy;->mStorageTypeClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 47
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy;->mStorageTypeClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    array-length v1, v0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 48
    invoke-static {}, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;->values()[Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;

    move-result-object v5

    array-length v6, v5

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    .line 49
    invoke-virtual {v8}, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 50
    sget-object v5, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy;->mStorageTypeMap:Ljava/util/HashMap;

    if-nez v5, :cond_0

    .line 51
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy;->mStorageTypeMap:Ljava/util/HashMap;

    .line 52
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy;->mStorageTypeInverseMap:Ljava/util/HashMap;

    .line 54
    :cond_0
    sget-object v5, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy;->mStorageTypeMap:Ljava/util/HashMap;

    invoke-virtual {v5, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v5, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy;->mStorageTypeInverseMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 61
    :cond_3
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy;->mStorageTypeMap:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy;->mStorageTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy;->mStorageTypeMap:Ljava/util/HashMap;

    .line 62
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-static {}, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;->values()[Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy$StorageType;

    move-result-object v1

    array-length v1, v1

    if-eq v0, v1, :cond_5

    .line 63
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Support StorageType is not expected"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_5
    return-void

    :catch_1
    move-exception v0

    .line 38
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>(Landroid/os/storage/StorageManager;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy;->mStorageManager:Landroid/os/storage/StorageManager;

    return-void
.end method

.method public static createProxy(Landroid/os/storage/StorageManager;)Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy;
    .locals 1

    .line 71
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy;-><init>(Landroid/os/storage/StorageManager;)V

    return-object v0
.end method


# virtual methods
.method public getVolumes()Ljava/util/List;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation

    .line 89
    :try_start_0
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy;->mMethodGetVolumes:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageManagerProxy;->mStorageManager:Landroid/os/storage/StorageManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 91
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
