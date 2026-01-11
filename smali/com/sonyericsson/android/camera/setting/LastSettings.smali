.class public Lcom/sonyericsson/android/camera/setting/LastSettings;
.super Ljava/lang/Object;
.source "LastSettings.java"


# static fields
.field private static final LAUNCH_AND_RECORDING:Ljava/lang/String; = "LAUNCH_AND_RECORDING"


# instance fields
.field private final mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

.field private final mZoomAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const-string v1, "com.sonyericsson.android.camera.shared_preferences"

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    .line 50
    new-instance v0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const-string/jumbo v1, "zoom_value"

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mZoomAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    return-void
.end method

.method private getLastPreviewSizeKey(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Ljava/lang/String;
    .locals 1

    .line 156
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "last-preview-size-"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getRect(Ljava/lang/String;)Landroid/graphics/Rect;
    .locals 1

    if-eqz p1, :cond_0

    .line 135
    const-string/jumbo p0, "x"

    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 136
    array-length p1, p0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 137
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    const/4 v0, 0x0

    .line 138
    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    const/4 v0, 0x1

    .line 139
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

    .line 231
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    monitor-enter v0

    .line 232
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const-string v2, "key-last-fast-capture-setting"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->remove(Ljava/lang/String;Z)V

    .line 233
    iget-object v1, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const-string v2, "KEY_LAST_MODE"

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->remove(Ljava/lang/String;Z)V

    .line 234
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    array-length v2, v1

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 235
    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->UNKNOWN:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v5, v6, :cond_0

    goto :goto_1

    .line 238
    :cond_0
    iget-object v6, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    invoke-direct {p0, v5}, Lcom/sonyericsson/android/camera/setting/LastSettings;->getLastPreviewSizeKey(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5, v3}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->remove(Ljava/lang/String;Z)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 240
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->apply()V

    .line 241
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public clearZoomInfo()V
    .locals 3

    .line 249
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mZoomAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    monitor-enter v0

    .line 250
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mZoomAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->clear(Z)V

    .line 251
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->apply()V

    .line 252
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getBokehSetting(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;
    .locals 4

    .line 160
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "last-bokeh-setting-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;->DEFAULT:Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;

    .line 161
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 160
    invoke-virtual {v0, v1, v3}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->remove(Ljava/lang/String;Z)V

    .line 163
    invoke-static {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;->valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;

    move-result-object p0

    return-object p0
.end method

.method public getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .locals 2

    .line 60
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->UNKNOWN:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 61
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object v0

    .line 60
    const-string v1, "KEY_LAST_MODE"

    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 62
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->UNKNOWN:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->convertFrom(Ljava/lang/String;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p0

    return-object p0
.end method

.method public getFastCapture()Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;
    .locals 2

    .line 89
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    .line 90
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->getDefault()Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key-last-fast-capture-setting"

    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 100
    :try_start_0
    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 102
    :catch_0
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->getDefault()Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    move-result-object p0

    return-object p0
.end method

.method public getLatestPhotoSize()Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    .locals 2

    .line 219
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mZoomAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const-string v0, "last-photo-size"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 220
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1
.end method

.method public getLatestVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    .locals 2

    .line 207
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mZoomAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const-string v0, "last-video-size"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 208
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1
.end method

.method public getLatestZoomRatio(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)F
    .locals 2

    .line 175
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mZoomAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "last-zoom-ratio-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 177
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getLatestZoomStep(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)I
    .locals 4

    .line 192
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0xa8

    .line 197
    :goto_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mZoomAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "last-zoom-step-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->readInt(Ljava/lang/String;I)I

    move-result p1

    .line 198
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mZoomAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const-string v0, "last-zoom-step"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->remove(Ljava/lang/String;Z)V

    return p1
.end method

.method public getPreviewSize(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Landroid/graphics/Rect;
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/setting/LastSettings;->getLastPreviewSizeKey(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 122
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/setting/LastSettings;->getRect(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public save()V
    .locals 0

    .line 227
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->apply()V

    return-void
.end method

.method public saveZoomInfo()V
    .locals 0

    .line 245
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mZoomAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->apply()V

    return-void
.end method

.method public setBokehSetting(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;)V
    .locals 2

    .line 167
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "last-bokeh-setting-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;->getValue()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->writeString(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 2

    .line 72
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "KEY_LAST_MODE"

    invoke-virtual {p0, v1, p1, v0}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->writeString(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setFastCapture(Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;)V
    .locals 2

    .line 112
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->name()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "key-last-fast-capture-setting"

    invoke-virtual {p0, v1, p1, v0}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->writeString(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setLatestPhotoSize(Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)V
    .locals 2

    .line 215
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mZoomAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getValue()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "last-photo-size"

    invoke-virtual {p0, v1, p1, v0}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->writeString(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setLatestVideoSize(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V
    .locals 2

    .line 203
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mZoomAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getValue()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "last-video-size"

    invoke-virtual {p0, v1, p1, v0}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->writeString(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setLatestZoomRatio(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;F)V
    .locals 2

    .line 171
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mZoomAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "last-zoom-ratio-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->writeString(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setLatestZoomStep(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;I)V
    .locals 2

    .line 187
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mZoomAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "last-zoom-step-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->writeInt(Ljava/lang/String;IZ)V

    return-void
.end method

.method public setLatestZoomValue(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;F)V
    .locals 2

    .line 183
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mZoomAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "last-zoom-value-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->writeString(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setPreviewSize(Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/setting/LastSettings;->getLastPreviewSizeKey(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string/jumbo v1, "x"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 151
    invoke-virtual {v0, p0, p1, p2}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->writeString(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public writePauseTime()V
    .locals 4

    .line 79
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/LastSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 79
    const-string v3, "KEY_TIME_APP_PAUSED"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->writeLong(Ljava/lang/String;JZ)V

    return-void
.end method
