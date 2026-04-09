.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$3;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V
    .locals 0

    .line 1263
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$3;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1272
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$3;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$2300(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonymobile/cameracommon/evf/Evf;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1273
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$3;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->notifyOnEvfPrepared()V

    goto :goto_0

    :cond_0
    const-string p0, "All reference of ViewFinderImpl has aleady been released."

    .line 1275
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    :goto_0
    return-void
.end method
