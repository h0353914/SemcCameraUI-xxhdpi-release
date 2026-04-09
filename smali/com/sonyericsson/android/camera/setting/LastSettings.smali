.class public Lcom/sonyericsson/android/camera/setting/LastSettings;
.super Ljava/lang/Object;
.source "LastSettings.java"


# static fields
.field private static final LAUNCH_AND_RECORDING:Ljava/lang/String; = "LAUNCH_AND_RECORDING"


# instance fields
.field private final mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const-string v1, "com.sonyericsson.android.camera.shared_preferences"

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    return-void
.end method

.method private getLastPreviewSizeKey(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Ljava/lang/String;
    .locals 1

    .line 141
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "last-preview-size-"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getRect(Ljava/lang/String;)Landroid/graphics/Rect;
    .locals 1

    if-eqz p1, :cond_0

    const-string p0, "x"

    .line 120
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 121
    array-length p1, p0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 122
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    const/4 v0, 0x0

    .line 123
    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    const/4 v0, 0x1

    .line 124
    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public clear()V
    .locals 7

    .line 149
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    monitor-enter v0

    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const-string v2, "key-last-fast-capture-setting"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->remove(Ljava/lang/String;Z)V

    .line 151
    iget-object v1, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const-string v2, "KEY_LAST_MODE"

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->remove(Ljava/lang/String;Z)V

    .line 152
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    array-length v2, v1

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 153
    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->UNKNOWN:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v5, v6, :cond_0

    goto :goto_1

    .line 156
    :cond_0
    iget-object v6, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    invoke-direct {p0, v5}, Lcom/sonyericsson/android/camera/setting/LastSettings;->getLastPreviewSizeKey(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5, v3}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->remove(Ljava/lang/String;Z)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 158
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->apply()V

    .line 159
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .locals 2

    .line 45
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const-string v0, "KEY_LAST_MODE"

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->UNKNOWN:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 46
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 47
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->UNKNOWN:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->convertFrom(Ljava/lang/String;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p0

    return-object p0
.end method

.method public getFastCapture()Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;
    .locals 2

    .line 74
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const-string v0, "key-last-fast-capture-setting"

    .line 75
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->getDefault()Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "LAUNCH_AND_RECORDING"

    .line 80
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->getDefault()Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    move-result-object p0

    return-object p0

    .line 85
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 87
    :catch_0
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->getDefault()Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewSize(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Landroid/graphics/Rect;
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/setting/LastSettings;->getLastPreviewSizeKey(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/setting/LastSettings;->getRect(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public save()V
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->apply()V

    return-void
.end method

.method public setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 2

    .line 57
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const-string v0, "KEY_LAST_MODE"

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->writeString(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setFastCapture(Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;)V
    .locals 2

    .line 97
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const-string v0, "key-last-fast-capture-setting"

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->name()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->writeString(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setPreviewSize(Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/setting/LastSettings;->getLastPreviewSizeKey(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 136
    invoke-virtual {v0, p0, p1, p2}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->writeString(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public writePauseTime()V
    .locals 4

    .line 64
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const-string v0, "KEY_TIME_APP_PAUSED"

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    .line 64
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->writeLong(Ljava/lang/String;JZ)V

    return-void
.end method
