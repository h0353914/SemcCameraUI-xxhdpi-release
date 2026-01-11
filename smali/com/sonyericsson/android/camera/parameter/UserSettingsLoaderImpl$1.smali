.class Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$1;
.super Ljava/lang/Object;
.source "UserSettingsLoaderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->notifyEntryReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$1;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$1;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->-$$Nest$fgetmEntryLock(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 366
    :try_start_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl$1;->this$0:Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->-$$Nest$fgetmEntryLock(Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 367
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
