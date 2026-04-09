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

    .line 62
    iput-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$1;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;-><init>(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 65
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    monitor-enter v0

    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->access$000(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    monitor-exit v0

    return-void

    .line 69
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 70
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->LOAD_USER_SETTING_ALL:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 75
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 76
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->getSharedPreferencesAccessor()Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    move-result-object v1

    const-string v2, "android.os.Build.FINGERPRINT"

    const-string v3, ""

    .line 77
    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 79
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const-string v0, "Initialize UserSettings data by default values due to no fingerprint."

    .line 80
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->access$100(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->access$200(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->access$300(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/Storage;)V

    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 83
    new-array v2, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Migrate UserSettings. stored-fingerprint:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " current-fingerprint:"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->access$100(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->access$200(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object v2

    iget-object v4, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    invoke-static {v1, v2, v4}, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->migrate(Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)V

    .line 88
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->getSharedPreferencesAccessor()Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    move-result-object v1

    const-string v2, "android.os.Build.FINGERPRINT"

    .line 89
    invoke-virtual {v1, v2, v0, v3}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->writeString(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 91
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    monitor-enter v0

    .line 92
    :try_start_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->access$400(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 93
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->access$500(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->access$200(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/parameter/ModeIndependentParams;->clear(Lcom/sonyericsson/cameracommon/storage/Storage;)V

    .line 94
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->access$600(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->reset()V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 94
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 98
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->access$700(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->access$800(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;Ljava/util/Map;)V

    .line 99
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->LOAD_USER_SETTING_ALL:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    .line 103
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    monitor-enter v1

    .line 104
    :try_start_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    invoke-static {v0, v3}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->access$002(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;Z)Z

    .line 105
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$LoadTask;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->access$900(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)Ljava/util/LinkedList;

    move-result-object p0

    .line 106
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 107
    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/setting/UserSettingsLoader$OnLoadCompletedListener;

    .line 108
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/UserSettingsLoader$OnLoadCompletedListener;->onLoadCompleted()V

    goto :goto_1

    :cond_3
    return-void

    :catchall_1
    move-exception p0

    .line 106
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    .line 69
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0
.end method
