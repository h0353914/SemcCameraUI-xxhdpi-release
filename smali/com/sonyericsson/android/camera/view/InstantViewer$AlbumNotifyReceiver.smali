.class Lcom/sonyericsson/android/camera/view/InstantViewer$AlbumNotifyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InstantViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/InstantViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumNotifyReceiver"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AlbumNotifyReceiver"


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/InstantViewer;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/InstantViewer;)V
    .locals 0

    .line 576
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/InstantViewer$AlbumNotifyReceiver;->this$0:Lcom/sonyericsson/android/camera/view/InstantViewer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/InstantViewer;Lcom/sonyericsson/android/camera/view/InstantViewer$AlbumNotifyReceiver-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/InstantViewer$AlbumNotifyReceiver;-><init>(Lcom/sonyericsson/android/camera/view/InstantViewer;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 582
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 583
    const-string p2, "com.sonyericsson.album.intent.action.FAST_VIEW_MODE_LAUNCHED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 584
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_0

    const-string p1, "onReceive()"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 585
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/InstantViewer$AlbumNotifyReceiver;->this$0:Lcom/sonyericsson/android/camera/view/InstantViewer;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/InstantViewer;->hide()V

    :cond_1
    return-void
.end method
