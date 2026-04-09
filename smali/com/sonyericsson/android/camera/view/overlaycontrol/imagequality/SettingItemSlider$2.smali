.class Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$2;
.super Ljava/lang/Object;
.source "SettingItemSlider.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;ZZLcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/OnSlideListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$2;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 82
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 90
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 91
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$2;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->update(F)V

    goto :goto_0

    .line 96
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$2;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->update(F)V

    .line 98
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$2;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->access$200(Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;)Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/OnSlideListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/OnSlideListener;->onSlideStopped()V

    .line 100
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    .line 84
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 85
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$2;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->access$200(Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;)Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/OnSlideListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/OnSlideListener;->onSlideStarted()V

    .line 86
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$2;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->update(F)V

    return v0

    :cond_1
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
