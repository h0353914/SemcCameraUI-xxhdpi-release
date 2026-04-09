.class Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$1;
.super Landroid/database/ContentObserver;
.source "CapturingModeListLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;-><init>(Landroid/content/Context;[Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$OnCapturingModeListChangedListener;Ljava/util/concurrent/ExecutorService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;Landroid/os/Handler;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$1;->this$0:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 114
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_0

    const-string p1, "CAPTURINGMODE_CONTENT_URI has been changed."

    .line 115
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 117
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader$1;->this$0:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeListLoader;->startLoadTask()V

    return-void
.end method
