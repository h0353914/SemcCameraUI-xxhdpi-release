.class public Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;
.super Ljava/lang/Object;
.source "AlbumPreloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PreloadedCacheHolder;,
        Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PrewarmAlbumTask;,
        Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PrepareBitmapTask;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AlbumPreloader"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFastViewManager:Lcom/sonyericsson/album/fastview/FastViewManager;

.field private mIsAvailable:Z

.field private mIsReleased:Z

.field private final mPreloadedCache:Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PreloadedCacheHolder;

.field private mPreloadingLock:Ljava/lang/Object;

.field private final mRequestTasks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PrepareBitmapTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmFastViewManager(Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;)Lcom/sonyericsson/album/fastview/FastViewManager;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;->mFastViewManager:Lcom/sonyericsson/album/fastview/FastViewManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsReleased(Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;->mIsReleased:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreloadedCache(Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;)Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PreloadedCacheHolder;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;->mPreloadedCache:Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PreloadedCacheHolder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreloadingLock(Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;->mPreloadingLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRequestTasks(Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;->mRequestTasks:Ljava/util/Map;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;->mRequestTasks:Ljava/util/Map;

    .line 43
    new-instance v0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PreloadedCacheHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PreloadedCacheHolder;-><init>(Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PreloadedCacheHolder-IA;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;->mPreloadedCache:Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PreloadedCacheHolder;

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;->mIsReleased:Z

    .line 133
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;->mPreloadingLock:Ljava/lang/Object;

    .line 135
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;->mIsAvailable:Z

    .line 138
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;->mContext:Landroid/content/Context;

    .line 140
    :try_start_0
    new-instance p1, Lcom/sonyericsson/album/fastview/FastViewManager;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/sonyericsson/album/fastview/FastViewManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;->mFastViewManager:Lcom/sonyericsson/album/fastview/FastViewManager;

    .line 141
    new-instance v0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$1;-><init>(Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/album/fastview/FastViewManager;->setOnPrewarmedListener(Lcom/sonyericsson/album/fastview/FastViewManager$OnPrewarmedListener;)V

    const/4 p1, 0x1

    .line 153
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;->mIsAvailable:Z
    :try_end_0
    .catch Lcom/sonyericsson/album/fastview/FastViewUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 156
    :catch_0
    const-string p0, "Failed to open FastViewManager"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 5

    const-string v0, "Get bitmap : "

    .line 202
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;->mIsAvailable:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    if-nez p1, :cond_1

    return-object v2

    .line 208
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;->mPreloadingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 209
    :try_start_0
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 211
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;->mPreloadedCache:Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PreloadedCacheHolder;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PreloadedCacheHolder;->isSameUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 212
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;->mPreloadedCache:Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PreloadedCacheHolder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PreloadedCacheHolder;->get()Landroid/graphics/Bitmap;

    move-result-object p0

    monitor-exit v1

    return-object p0

    .line 216
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;->mRequestTasks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 217
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;->mRequestTasks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PrepareBitmapTask;

    .line 218
    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PrepareBitmapTask;->cancel(Z)Z

    .line 222
    :cond_4
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;->mFastViewManager:Lcom/sonyericsson/album/fastview/FastViewManager;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/album/fastview/FastViewManager;->getBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    .line 223
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public prepareBitmap(Landroid/net/Uri;)V
    .locals 3

    .line 177
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;->mIsAvailable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;->mPreloadingLock:Ljava/lang/Object;

    monitor-enter v0

    .line 186
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;->mRequestTasks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 187
    new-instance v1, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PrepareBitmapTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PrepareBitmapTask;-><init>(Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PrepareBitmapTask-IA;)V

    .line 188
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;->mRequestTasks:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PrepareBitmapTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 191
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public prewarmAlbum()V
    .locals 2

    .line 164
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;->mIsAvailable:Z

    if-nez v0, :cond_0

    return-void

    .line 167
    :cond_0
    new-instance v0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PrewarmAlbumTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PrewarmAlbumTask;-><init>(Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PrewarmAlbumTask-IA;)V

    const/4 p0, 0x0

    .line 168
    new-array p0, p0, [Ljava/lang/Object;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PrewarmAlbumTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public release()V
    .locals 4

    .line 230
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;->mIsAvailable:Z

    if-nez v0, :cond_0

    return-void

    .line 234
    :cond_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    const-string v0, "release()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;->mPreloadingLock:Ljava/lang/Object;

    monitor-enter v0

    .line 236
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;->mRequestTasks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 237
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;->mRequestTasks:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PrepareBitmapTask;

    const/4 v3, 0x0

    .line 238
    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PrepareBitmapTask;->cancel(Z)Z

    goto :goto_0

    .line 240
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;->mRequestTasks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 242
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;->mPreloadedCache:Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PreloadedCacheHolder;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PreloadedCacheHolder;->clear()V

    .line 243
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;->mFastViewManager:Lcom/sonyericsson/album/fastview/FastViewManager;

    if-eqz v0, :cond_3

    .line 246
    invoke-virtual {v0}, Lcom/sonyericsson/album/fastview/FastViewManager;->cooldown()V

    :cond_3
    const/4 v0, 0x1

    .line 248
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;->mIsReleased:Z

    return-void

    :catchall_0
    move-exception p0

    .line 243
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
