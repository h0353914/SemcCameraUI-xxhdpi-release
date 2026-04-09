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
.field private final mBackgroundRect:Landroid/graphics/Rect;

.field private final mItemRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;Landroid/content/Context;)V
    .locals 0

    .line 750
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    .line 751
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 747
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->mBackgroundRect:Landroid/graphics/Rect;

    .line 748
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->mItemRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4

    .line 756
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 758
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_0

    const-string p1, "onMeasure() E"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 759
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->access$000(Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;)Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 760
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->access$100(Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;)Ljava/util/HashMap;

    move-result-object p1

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->access$000(Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;)Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 761
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 762
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->access$200(Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 763
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    if-ne v0, v1, :cond_1

    .line 765
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->mBackgroundRect:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 766
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->mBackgroundRect:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 767
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->mBackgroundRect:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 768
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->mBackgroundRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 770
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->mBackgroundRect:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 771
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->mBackgroundRect:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 772
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->mBackgroundRect:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 773
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->mBackgroundRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    .line 776
    :goto_0
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    new-array p2, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  backgroundRect: ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->mBackgroundRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->mBackgroundRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->mBackgroundRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->mBackgroundRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v0

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 782
    :cond_2
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 783
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->access$300(Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;)Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    move-result-object v2

    invoke-virtual {v2, p2, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->getGlobalVisibleItemRect(Landroid/graphics/Rect;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 784
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object p1

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    if-ne p1, v2, :cond_3

    .line 786
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->mItemRect:Landroid/graphics/Rect;

    iget v2, p2, Landroid/graphics/Rect;->top:I

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 787
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->mItemRect:Landroid/graphics/Rect;

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 788
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->mItemRect:Landroid/graphics/Rect;

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 789
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->mItemRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 791
    :cond_3
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->mItemRect:Landroid/graphics/Rect;

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 792
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->mItemRect:Landroid/graphics/Rect;

    iget v2, p2, Landroid/graphics/Rect;->top:I

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 793
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->mItemRect:Landroid/graphics/Rect;

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 794
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->mItemRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 797
    :goto_1
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_4

    new-array p1, v1, [Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  itemRect: ("

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->mItemRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->mItemRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->mItemRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->mItemRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v0

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 804
    :cond_4
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->access$400(Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_5

    .line 805
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->mBackgroundRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->mItemRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p2

    goto :goto_2

    .line 807
    :cond_5
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->mBackgroundRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->mItemRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p2

    .line 810
    :goto_2
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->access$000(Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;)Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->setBottomMarginHint(I)V

    .line 811
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_6

    new-array p0, v1, [Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  margin-button:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 816
    :cond_6
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_7

    const-string p0, "onMeasure() X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 821
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTouchEvent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 821
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 824
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->access$500(Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;)Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogInterface;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 827
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 837
    :pswitch_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->access$800(Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    .line 842
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->access$300(Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;)Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->access$300(Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;)Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->isOperationAcceptable()Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    .line 846
    :cond_2
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 847
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->access$700(Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 848
    iget v3, v1, Landroid/graphics/Rect;->right:I

    .line 849
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v3, v4

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 850
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    add-int/2addr v1, p1

    .line 848
    invoke-interface {v0, v3, v1}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogInterface;->hitTest(II)Z

    move-result p1

    if-nez p1, :cond_3

    .line 851
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closeCurrentDialog()Z

    :cond_3
    return v2

    .line 829
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->access$600(Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;)Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$ExclusiveViewListener;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    .line 830
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->access$600(Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;)Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$ExclusiveViewListener;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->access$700(Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;)Landroid/view/ViewGroup;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$ExclusiveViewListener;->isExclusiveView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    return v2

    :cond_5
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
