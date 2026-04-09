.class Lcom/sonyericsson/android/camera/controller/GestureShutter$3;
.super Ljava/lang/Object;
.source "GestureShutter.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientationChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/GestureShutter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/GestureShutter;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$3;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutOrientationChanged(Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;)V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$3;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$100(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$3;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$102(Lcom/sonyericsson/android/camera/controller/GestureShutter;Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;)Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    .line 187
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$3;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$200(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 188
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$3;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$200(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$3;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$100(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface;->setLayoutOrientation(Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;)V

    :cond_0
    return-void
.end method
