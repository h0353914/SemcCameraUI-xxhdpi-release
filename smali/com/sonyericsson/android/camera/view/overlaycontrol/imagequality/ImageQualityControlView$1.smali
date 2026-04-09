.class Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView$1;
.super Ljava/lang/Object;
.source "ImageQualityControlView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->setAdapter(Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView$1;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 160
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 161
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView$1;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;->access$000(Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;)Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView$OnImageQualityControlDialogTabSelectListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView$OnImageQualityControlDialogTabSelectListener;->onSelect(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V

    return-void
.end method
