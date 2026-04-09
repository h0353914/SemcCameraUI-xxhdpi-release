.class Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl$1;
.super Ljava/lang/Object;
.source "ImageQualityControl.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/OnSlideListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl$1;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSlideStarted()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl$1;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->access$002(Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;Z)Z

    .line 74
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl$1;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->notifyValueUpdateStart()V

    return-void
.end method

.method public onSlideStopped()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl$1;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->access$002(Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;Z)Z

    .line 80
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl$1;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->notifyValueUpdateEnd()V

    return-void
.end method
