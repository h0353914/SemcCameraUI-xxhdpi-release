.class final Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PrewarmAlbumTask;
.super Landroid/os/AsyncTask;
.source "AlbumPreloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PrewarmAlbumTask"
.end annotation


# static fields
.field private static final THREAD_NAME:Ljava/lang/String; = "PrewarmAlbum"


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PrewarmAlbumTask;->this$0:Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PrewarmAlbumTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PrewarmAlbumTask;-><init>(Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;)V

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 260
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    const-string v0, "PrewarmAlbum"

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 261
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$PrewarmAlbumTask;->this$0:Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;->-$$Nest$fgetmFastViewManager(Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;)Lcom/sonyericsson/album/fastview/FastViewManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/album/fastview/FastViewManager;->prewarm()V

    const/4 p0, 0x0

    return-object p0
.end method
