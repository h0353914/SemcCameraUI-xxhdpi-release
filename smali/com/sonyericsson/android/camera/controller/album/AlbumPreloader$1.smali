.class Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$1;
.super Ljava/lang/Object;
.source "AlbumPreloader.java"

# interfaces
.implements Lcom/sonyericsson/album/fastview/FastViewManager$OnPrewarmedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$1;->this$0:Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrewarmed()V
    .locals 1

    .line 144
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "Prewarm album"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$1;->this$0:Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;->-$$Nest$fgetmIsReleased(Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    const-string v0, "Activity is already stopped."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 148
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader$1;->this$0:Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;->-$$Nest$fgetmFastViewManager(Lcom/sonyericsson/android/camera/controller/album/AlbumPreloader;)Lcom/sonyericsson/album/fastview/FastViewManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/album/fastview/FastViewManager;->cooldown()V

    :cond_2
    return-void
.end method
