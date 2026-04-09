.class Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl$ViewFactory$1;
.super Ljava/lang/Object;
.source "ImageQualityControl.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView$OnImageQualityControlDialogTabSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl$ViewFactory;->create()Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/ImageQualityControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl$ViewFactory;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl$ViewFactory;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl$ViewFactory$1;->this$1:Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl$ViewFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl$ViewFactory$1;->this$1:Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl$ViewFactory;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl$ViewFactory;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->access$000(Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl$ViewFactory$1;->this$1:Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl$ViewFactory;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl$ViewFactory;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->access$300(Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V

    :cond_0
    return-void
.end method
