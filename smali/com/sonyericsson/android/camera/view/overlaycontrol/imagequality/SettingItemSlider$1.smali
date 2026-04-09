.class Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$1;
.super Landroid/widget/FrameLayout;
.source "SettingItemSlider.java"


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
.method constructor <init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;Landroid/content/Context;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$1;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onLayout(ZIIII)V
    .locals 0

    .line 65
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 66
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    .line 67
    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    iget-object p3, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$1;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;

    invoke-static {p3}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->access$100(Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x1

    const-string p3, "onLayout(): refresh"

    aput-object p3, p1, p2

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 69
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider$1;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/SettingItemSlider;->refresh()V

    return-void
.end method
