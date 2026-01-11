.class public Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;
.super Ljava/lang/Object;
.source "UserSettingsLoaderImpl.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/setting/UserSettingsLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;
    }
.end annotation


# static fields
.field private static final FINGERPRINT_KEY:Ljava/lang/String; = "android.os.Build.FINGERPRINT"

.field private static final MAX_WAIT_TIME:I = 0xfa0

.field private static final THREAD_NAME:Ljava/lang/String; = "SettingLoadTask"


# instance fields
.field private final mCommonParameters:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

.field private final mContext:Landroid/content/Context;

.field private final mEntryLock:Ljava/lang/Object;

.field private mIsCompleted:Z

.field private final mListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/sonyericsson/android/camera/setting/UserSettingsLoader$OnLoadCompletedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadTaskFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private final mMigrateParametersEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;",
            "Lcom/sonyericsson/android/camera/parameter/Parameters;",
            ">;"
        }
    .end annotation
.end field

.field private final mParametersEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;",
            "Lcom/sonyericsson/android/camera/parameter/Parameters;",
            ">;"
        }
    .end annotation
.end field

.field private final mSetupExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mSharedPrefsAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

.field private final mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

.field private final mTempParametersEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;",
            "Lcom/sonyericsson/android/camera/parameter/Parameters;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEntryLock(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mEntryLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsCompleted(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mIsCompleted:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmListeners(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mListeners:Ljava/util/LinkedList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmParametersEntries(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mParametersEntries:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSharedPrefsAccessor(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mSharedPrefsAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStorage(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)Lcom/sonyericsson/cameracommon/storage/Storage;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsCompleted(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mIsCompleted:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplyDefaultParameters(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/Storage;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->applyDefaultParameters(Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/Storage;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mloadInternal(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->loadInternal(Ljava/util/Map;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmigrateData(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->migrateData(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/Storage;)V
    .locals 1

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mParametersEntries:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mTempParametersEntries:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mMigrateParametersEntries:Ljava/util/Map;

    .line 56
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mListeners:Ljava/util/LinkedList;

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mEntryLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mIsCompleted:Z

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mLoadTaskFuture:Ljava/util/concurrent/Future;

    .line 138
    iput-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mContext:Landroid/content/Context;

    .line 139
    iput-object p2, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    .line 140
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    invoke-direct {v0, p1}, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mCommonParameters:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    .line 141
    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->clear(Lcom/sonyericsson/cameracommon/storage/Storage;)V

    .line 142
    new-instance p2, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const-string v0, "com.sonyericsson.android.camera.shared_preferences"

    invoke-direct {p2, p1, v0}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mSharedPrefsAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    .line 144
    const-string p1, "SettingLoadTask"

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mSetupExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private applyDefaultParameters(Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/Storage;)V
    .locals 6

    .line 327
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/Configurations;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/configuration/Configurations;-><init>()V

    .line 328
    new-instance v1, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const-string v2, "com.sonyericsson.android.camera.shared_preferences"

    invoke-direct {v1, p1, v2}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 332
    new-instance v2, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    invoke-direct {v2, p1}, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;-><init>(Landroid/content/Context;)V

    .line 333
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getValidOptions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 334
    iget-object v5, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mContext:Landroid/content/Context;

    invoke-static {v5, v3, v4, v2}, Lcom/sonyericsson/android/camera/parameter/Parameters;->create(Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;ZLcom/sonyericsson/android/camera/parameter/ModeIndependentParams;)Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v3

    .line 336
    invoke-virtual {v3, v0, v1, p2}, Lcom/sonyericsson/android/camera/parameter/Parameters;->prepareHolder(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;Lcom/sonyericsson/cameracommon/storage/Storage;)V

    .line 337
    invoke-virtual {v3, v1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->writeSharedPrefs(Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;)V

    goto :goto_0

    .line 341
    :cond_0
    sget-object p0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 342
    const-string p1, "android.os.Build.FINGERPRINT"

    invoke-virtual {v1, p1, p0, v4}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->writeString(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 344
    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->writeParameters(Z)V

    .line 345
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->apply()V

    return-void
.end method

.method private loadInternal(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;",
            "Lcom/sonyericsson/android/camera/parameter/Parameters;",
            ">;)V"
        }
    .end annotation

    .line 265
    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 266
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 269
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getValidOptions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 270
    iget-object v3, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mCommonParameters:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    invoke-static {v3, v2, v4, v5}, Lcom/sonyericsson/android/camera/parameter/Parameters;->create(Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;ZLcom/sonyericsson/android/camera/parameter/ModeIndependentParams;)Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v3

    .line 271
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/Configurations;

    invoke-direct {v4}, Lcom/sonyericsson/android/camera/configuration/Configurations;-><init>()V

    iget-object v5, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mSharedPrefsAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-virtual {v3, v4, v5, v6}, Lcom/sonyericsson/android/camera/parameter/Parameters;->prepareHolder(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;Lcom/sonyericsson/cameracommon/storage/Storage;)V

    .line 272
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 276
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 277
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->values()[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 278
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mSharedPrefsAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->readParameters(Ljava/util/List;)V

    .line 281
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/parameter/Parameters;

    .line 282
    iget-object v3, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mSharedPrefsAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/parameter/Parameters;->readSharedPrefs(Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;)V

    .line 283
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/parameter/Parameters;->commit()V

    .line 284
    iget-object v3, v2, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->notifyEntryReady()V

    goto :goto_1

    .line 288
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private migrateData(Ljava/lang/String;)V
    .locals 3

    .line 349
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-static {v0, v1, p0}, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->migrate(Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)V

    .line 351
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->getSharedPreferencesAccessor()Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    move-result-object v0

    const-string v1, "android.os.Build.FINGERPRINT"

    const/4 v2, 0x1

    .line 352
    invoke-virtual {v0, v1, p1, v2}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->writeString(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 354
    monitor-enter p0

    .line 355
    :try_start_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mMigrateParametersEntries:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 356
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mCommonParameters:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->clear(Lcom/sonyericsson/cameracommon/storage/Storage;)V

    .line 357
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mSharedPrefsAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->reset()V

    return-void

    :catchall_0
    move-exception p1

    .line 357
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private notifyEntryReady()V
    .locals 2

    .line 362
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$1;-><init>(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 369
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private saveInternal(Ljava/util/Map;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;",
            "Lcom/sonyericsson/android/camera/parameter/Parameters;",
            ">;",
            "Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;",
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;",
            "Lcom/sonyericsson/android/camera/parameter/Parameters;",
            ">;)V"
        }
    .end annotation

    .line 293
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 294
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 295
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/parameter/Parameters;

    .line 296
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/parameter/Parameters;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/Parameters;->mHolders:Ljava/util/Map;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/parameter/Parameters;->mHolders:Ljava/util/Map;

    invoke-static {v2, v1}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->copy(Ljava/util/Map;Ljava/util/Map;)V

    .line 298
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p2, :cond_0

    .line 299
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mCommonParameters:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/parameter/Parameters;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/Parameters;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->setValues(Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;)V

    goto :goto_0

    .line 303
    :cond_2
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 304
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sonyericsson/android/camera/parameter/Parameters;

    iget-object p3, p3, Lcom/sonyericsson/android/camera/parameter/Parameters;->mIndependentParams:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mCommonParameters:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    invoke-virtual {p3, v0}, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->setValues(Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;)V

    .line 305
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/parameter/Parameters;

    iget-object p3, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mSharedPrefsAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    invoke-virtual {p2, p3}, Lcom/sonyericsson/android/camera/parameter/Parameters;->writeSharedPrefs(Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;)V

    goto :goto_1

    .line 308
    :cond_3
    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mSharedPrefsAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->writeParameters(Z)V

    .line 310
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFrontCameraSupported()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mSharedPrefsAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    .line 311
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p3, "FRONT_FAST"

    invoke-interface {p1, p3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 313
    sget-object p1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 314
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSceneRecognitionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 315
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    goto :goto_2

    .line 317
    :cond_4
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 319
    :goto_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mSharedPrefsAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    .line 320
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object p1

    .line 319
    invoke-virtual {v0, p3, p1, p2}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->writeString(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 323
    :cond_5
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mSharedPrefsAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->apply()V

    return-void
.end method


# virtual methods
.method public clearMasterData()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mSharedPrefsAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->clear(Z)V

    .line 185
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mContext:Landroid/content/Context;

    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->getSharedPrefs(Landroid/content/Context;Z)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public clearTemporaryData()V
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mTempParametersEntries:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getSharedPreferencesAccessor()Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mSharedPrefsAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    return-object p0
.end method

.method public getUserSettingParameters(Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/android/camera/configuration/Configurations;ZLcom/sonyericsson/android/camera/parameter/ModeIndependentParams;Z)Lcom/sonyericsson/android/camera/parameter/Parameters;
    .locals 9

    move-object v0, p0

    move-object v2, p2

    .line 197
    const-string v1, "invoked"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 198
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 199
    :goto_0
    iget-object v1, v0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mParametersEntries:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 200
    iget-object v1, v0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mEntryLock:Ljava/lang/Object;

    monitor-enter v1

    .line 202
    :try_start_0
    iget-object v5, v0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mEntryLock:Ljava/lang/Object;

    const-wide/16 v6, 0x5

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    const/4 v5, 0x1

    .line 204
    :try_start_1
    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "Interrupted to wait"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v5}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 206
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-wide/16 v7, 0xfa0

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    .line 210
    iget-object v5, v0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mParametersEntries:Ljava/util/Map;

    invoke-direct {p0, v5}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->loadInternal(Ljava/util/Map;)V

    .line 211
    monitor-exit v1

    goto :goto_3

    .line 213
    :cond_0
    monitor-exit v1

    goto :goto_0

    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 217
    :cond_1
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "getUserSettingParameters(): wait loading for "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "ms"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 220
    iget-object v1, v0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mParametersEntries:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/parameter/Parameters;

    if-eqz p5, :cond_3

    .line 222
    iget-object v3, v0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mTempParametersEntries:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 223
    iget-object v3, v0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mTempParametersEntries:Ljava/util/Map;

    move-object v4, p3

    move-object v5, p4

    invoke-virtual {v1, p4, p3}, Lcom/sonyericsson/android/camera/parameter/Parameters;->copy(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/cameracommon/storage/Storage;)Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v1

    invoke-interface {v3, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_2
    move-object v4, p3

    move-object v5, p4

    .line 225
    :goto_4
    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mTempParametersEntries:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p3

    move v5, p5

    move-object v6, p6

    move/from16 v7, p7

    .line 226
    invoke-virtual/range {v0 .. v7}, Lcom/sonyericsson/android/camera/parameter/Parameters;->copy(Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/cameracommon/storage/Storage;ZLcom/sonyericsson/android/camera/parameter/ModeIndependentParams;Z)Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v0

    return-object v0

    :cond_3
    move-object v4, p3

    move-object v5, p4

    move-object v0, v1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move v5, p5

    move-object v6, p6

    move/from16 v7, p7

    .line 231
    invoke-virtual/range {v0 .. v7}, Lcom/sonyericsson/android/camera/parameter/Parameters;->copy(Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/cameracommon/storage/Storage;ZLcom/sonyericsson/android/camera/parameter/ModeIndependentParams;Z)Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized load()V
    .locals 3

    monitor-enter p0

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mLoadTaskFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 150
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "duplicated load call"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    monitor-exit p0

    return-void

    .line 153
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mSetupExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;-><init>(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask-IA;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mLoadTaskFuture:Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method loadMigrateParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;",
            "Lcom/sonyericsson/android/camera/parameter/Parameters;",
            ">;"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mMigrateParametersEntries:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->loadInternal(Ljava/util/Map;)V

    .line 257
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mMigrateParametersEntries:Ljava/util/Map;

    return-object p0
.end method

.method public declared-synchronized registerLoadCompletedListener(Lcom/sonyericsson/android/camera/setting/UserSettingsLoader$OnLoadCompletedListener;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 244
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mIsCompleted:Z

    if-eqz v0, :cond_0

    .line 245
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/setting/UserSettingsLoader$OnLoadCompletedListener;->onLoadCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 248
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized release()V
    .locals 2

    monitor-enter p0

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 175
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mMigrateParametersEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 176
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mParametersEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 177
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mCommonParameters:Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->clear(Lcom/sonyericsson/cameracommon/storage/Storage;)V

    .line 178
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mTempParametersEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 179
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mIsCompleted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized save(Ljava/util/Map;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;",
            "Lcom/sonyericsson/android/camera/parameter/Parameters;",
            ">;",
            "Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;",
            "Z)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p3, :cond_1

    .line 160
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 162
    iget-object p3, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mTempParametersEntries:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 163
    iget-object p3, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mTempParametersEntries:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sonyericsson/android/camera/parameter/Parameters;

    .line 164
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/parameter/Parameters;

    iget-object p2, p2, Lcom/sonyericsson/android/camera/parameter/Parameters;->mHolders:Ljava/util/Map;

    iget-object p3, p3, Lcom/sonyericsson/android/camera/parameter/Parameters;->mHolders:Ljava/util/Map;

    invoke-static {p2, p3}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->copy(Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0

    .line 168
    :cond_1
    iget-object p3, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mParametersEntries:Ljava/util/Map;

    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->saveInternal(Ljava/util/Map;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method saveMigrateParameters(Ljava/util/Map;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;",
            "Lcom/sonyericsson/android/camera/parameter/Parameters;",
            ">;",
            "Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;",
            ")V"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mMigrateParametersEntries:Ljava/util/Map;

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->saveInternal(Ljava/util/Map;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Ljava/util/Map;)V

    return-void
.end method

.method public declared-synchronized unregisterLoadCompletedListener(Lcom/sonyericsson/android/camera/setting/UserSettingsLoader$OnLoadCompletedListener;)V
    .locals 1

    monitor-enter p0

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
