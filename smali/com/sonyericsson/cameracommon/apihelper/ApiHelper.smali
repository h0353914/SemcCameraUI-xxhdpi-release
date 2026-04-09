.class public Lcom/sonyericsson/cameracommon/apihelper/ApiHelper;
.super Ljava/lang/Object;
.source "ApiHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ApiHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIntFieldIfExists(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;I)I"
        }
    .end annotation

    .line 34
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 35
    invoke-virtual {p0, p2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p3
.end method

.method private static hasClass(Ljava/lang/String;)Z
    .locals 0

    .line 62
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private static hasField(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 52
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private static hasField(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 43
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 44
    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/apihelper/ApiHelper;->hasField(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private static hasMethod(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 82
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 83
    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p0, p1, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method private static varargs hasMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 72
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 73
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private static varargs hasMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    .line 93
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 94
    array-length v1, p2

    new-array v1, v1, [Ljava/lang/Class;

    move v2, v0

    .line 95
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_0

    .line 96
    aget-object v3, p2, v2

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p0, p1, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method public static hasSpacialApis()Z
    .locals 6

    const-string v0, "android.os.storage.StorageManager"

    .line 119
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/apihelper/ApiHelper;->hasClass(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "android.os.storage.StorageVolume"

    .line 120
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/apihelper/ApiHelper;->hasClass(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.os.storage.StorageManager$StorageType"

    .line 121
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/apihelper/ApiHelper;->hasClass(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.os.storage.StorageManager"

    const-string v2, "getVolumeList"

    .line 122
    invoke-static {v0, v2}, Lcom/sonyericsson/cameracommon/apihelper/ApiHelper;->hasMethod(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.os.storage.StorageManager"

    const-string v2, "getVolumePath"

    const-string v3, "android.os.storage.StorageManager$StorageType"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 123
    invoke-static {v0, v2, v3}, Lcom/sonyericsson/cameracommon/apihelper/ApiHelper;->hasMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.os.storage.StorageManager"

    const-string v2, "getVolumeType"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    .line 125
    invoke-static {v0, v2, v4}, Lcom/sonyericsson/cameracommon/apihelper/ApiHelper;->hasMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.os.storage.StorageManager"

    const-string v2, "getVolumeState"

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    .line 127
    invoke-static {v0, v2, v4}, Lcom/sonyericsson/cameracommon/apihelper/ApiHelper;->hasMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.internal.R$id"

    const-string v2, "message"

    .line 129
    invoke-static {v0, v2}, Lcom/sonyericsson/cameracommon/apihelper/ApiHelper;->hasField(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.sonyericsson.provider.SemcMediaStore"

    .line 130
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/apihelper/ApiHelper;->hasClass(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.sonyericsson.provider.SemcMediaStore$ExtendedFiles$ExtendedFileColumns"

    .line 131
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/apihelper/ApiHelper;->hasClass(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_0
    return v1
.end method
