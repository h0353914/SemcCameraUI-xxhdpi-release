.class Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;
.super Landroid/widget/FrameLayout;
.source "SettingDialogStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Background"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;Landroid/content/Context;)V
    .locals 0

    .line 501
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    .line 502
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 507
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onTouchEvent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 508
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 507
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->-$$Nest$mgetCurrentDialog(Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;)Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogInterface;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 513
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 523
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->-$$Nest$fgetmIsCanceledOnTouchOutside(Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;)Z

    move-result v1

    if-nez v1, :cond_2

    return v3

    .line 526
    :cond_2
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 527
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->-$$Nest$fgetmBackground(Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 528
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 529
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v2, v4

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 530
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    add-int/2addr v1, p1

    .line 528
    invoke-interface {v0, v2, v1}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogInterface;->hitTest(II)Z

    move-result p1

    if-nez p1, :cond_3

    .line 531
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closeCurrentDialog()Z

    :cond_3
    return v3

    .line 515
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->-$$Nest$fgetmExclusiveViewListener(Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;)Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$ExclusiveViewListener;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->-$$Nest$fgetmExclusiveViewListener(Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;)Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$ExclusiveViewListener;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->-$$Nest$fgetmBackground(Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;)Landroid/view/ViewGroup;

    move-result-object p0

    .line 516
    invoke-interface {v0, p0, p1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$ExclusiveViewListener;->isExclusiveView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_5

    return v1

    :cond_5
    return v3

    :cond_6
    :goto_0
    return v1
.end method
