.class Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;
.super Ljava/lang/Object;
.source "UserSettingsLoaderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;-><init>(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    monitor-enter v0

    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->-$$Nest$fgetmIsCompleted(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    monitor-exit v0

    return-void

    .line 76
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 77
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->LOAD_USER_SETTING_ALL:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 78
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 79
    const-string v0, "load user setting all start"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 85
    :cond_1
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 87
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->getSharedPreferencesAccessor()Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    move-result-object v1

    const-string v2, "android.os.Build.FINGERPRINT"

    const-string v3, ""

    .line 88
    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 91
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->-$$Nest$fgetmSharedPrefsAccessor(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->-$$Nest$fgetmContext(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    .line 92
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getFileName(I)Ljava/lang/String;

    move-result-object v3

    .line 91
    invoke-static {v1, v3, v2}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 99
    const-string v2, "android.os.Build.FINGERPRINT"

    const-string v3, ""

    .line 100
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 102
    const-string v0, "Initialize UserSettings data by default values due to no fingerprint."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->-$$Nest$fgetmContext(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->-$$Nest$fgetmStorage(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->-$$Nest$mapplyDefaultParameters(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/Storage;)V

    goto :goto_0

    .line 105
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Migrate UserSettings. stored-fingerprint-from-supportvalue:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " current-fingerprint:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->-$$Nest$mmigrateData(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Migrate UserSettings. stored-fingerprint-from-preferences:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " current-fingerprint:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->-$$Nest$mmigrateData(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;Ljava/lang/String;)V

    .line 119
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->-$$Nest$fgetmParametersEntries(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->-$$Nest$mloadInternal(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;Ljava/util/Map;)V

    .line 120
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->LOAD_USER_SETTING_ALL:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    .line 121
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_5

    .line 122
    const-string v0, "load user setting all end"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 127
    :cond_5
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    monitor-enter v1

    .line 128
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->-$$Nest$fputmIsCompleted(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;Z)V

    .line 129
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->-$$Nest$fgetmListeners(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)Ljava/util/LinkedList;

    move-result-object p0

    .line 130
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/setting/UserSettingsLoader$OnLoadCompletedListener;

    .line 132
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/UserSettingsLoader$OnLoadCompletedListener;->onLoadCompleted()V

    goto :goto_1

    :cond_6
    return-void

    :catchall_0
    move-exception p0

    .line 130
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 76
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method
