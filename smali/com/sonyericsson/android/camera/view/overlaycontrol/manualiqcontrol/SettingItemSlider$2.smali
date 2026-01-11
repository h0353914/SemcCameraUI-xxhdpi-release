.class Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$2;
.super Ljava/lang/Object;
.source "SettingItemSlider.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;ZZLcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/OnSlideListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$2;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 85
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 94
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$2;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->update(F)V

    goto :goto_0

    .line 99
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$2;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->update(F)V

    .line 102
    :cond_2
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$2;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->-$$Nest$fgetmOnSlideListener(Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;)Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/OnSlideListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/OnSlideListener;->onSlideStopped()V

    .line 103
    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    :cond_3
    :goto_0
    return v2

    .line 87
    :cond_4
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 88
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$2;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->-$$Nest$fgetmOnSlideListener(Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;)Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/OnSlideListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/OnSlideListener;->onSlideStarted()V

    .line 89
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider$2;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/SettingItemSlider;->update(F)V

    return v1
.end method
