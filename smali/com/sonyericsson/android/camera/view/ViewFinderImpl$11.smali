.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$11;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 2824
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$11;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isFacingShortcutClickable()Z
    .locals 1

    .line 2842
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$11;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmIsSettingChangeAcceptable(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$11;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isTutorialOpened()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$11;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 2843
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isUserOperable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private switchCamera()V
    .locals 2

    .line 2850
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$11;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$misRestartPreviewSessionState(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2851
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "ViewFinderImpl"

    const-string/jumbo v0, "switchCamera return because of isRestartPreviewSessionState"

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 2855
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$11;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$msetFrontAngleSwitchButtonClickable(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Z)V

    .line 2857
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$11;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->hideAutoReview()V

    .line 2859
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$11;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->setIsCameraSwitching(Z)V

    .line 2860
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$11;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->hideSurface()V

    .line 2862
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$11;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmFocusRectangles(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearAllFocus()V

    .line 2864
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$11$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$11$1;-><init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$11;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 2828
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$11;->isFacingShortcutClickable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2833
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2834
    sget-object p1, Lcom/sonyericsson/android/camera/util/PerfLog;->FACING_BUTTON_TAP:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/util/PerfLog;->transit()V

    .line 2835
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$11;->switchCamera()V

    return-void
.end method
