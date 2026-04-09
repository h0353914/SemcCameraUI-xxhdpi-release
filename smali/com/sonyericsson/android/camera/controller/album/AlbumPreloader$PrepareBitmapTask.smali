.class final Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PrepareBitmapTask;
.super Landroid/os/AsyncTask;
.source "AlbumPreloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PrepareBitmapTask"
.end annotation


# static fields
.field private static final THREAD_NAME:Ljava/lang/String; = "PrepareBitmap"


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PrepareBitmapTask;->this$0:Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$1;)V
    .locals 0

    .line 269
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PrepareBitmapTask;-><init>(Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;)V

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 275
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "PrepareBitmap"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 277
    aget-object p1, p1, v0

    check-cast p1, Landroid/net/Uri;

    .line 281
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PrepareBitmapTask;->this$0:Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;->access$200(Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;)Lcom/sonyericsson/album/fastview/FastViewManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonyericsson/album/fastview/FastViewManager;->getBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 284
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PrepareBitmapTask;->this$0:Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;->access$500(Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 285
    :try_start_0
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 286
    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Prepare bitmap : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PrepareBitmapTask;->this$0:Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;->access$600(Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;)Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PreloadedCacheHolder;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PreloadedCacheHolder;->update(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 291
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PrepareBitmapTask;->this$0:Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;->access$700(Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PrepareBitmapTask;->this$0:Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;->access$200(Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;)Lcom/sonyericsson/album/fastview/FastViewManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 296
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PrepareBitmapTask;->this$0:Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;->access$200(Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;)Lcom/sonyericsson/album/fastview/FastViewManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/album/fastview/FastViewManager;->prepare(Landroid/net/Uri;)V

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    .line 292
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
