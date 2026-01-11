.class Lcom/sonyericsson/android/camera/CameraActivity$ExtendedOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExtendedOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/CameraActivity;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;Landroid/content/Context;)V
    .locals 0

    .line 3200
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    const/4 p1, 0x1

    .line 3201
    invoke-direct {p0, p2, p1}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 3207
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v1, p1}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$fputmSensorOrientationDegree(Lcom/sonyericsson/android/camera/CameraActivity;I)V

    .line 3210
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$fgetmLastOrientationDegree(Lcom/sonyericsson/android/camera/CameraActivity;)I

    move-result v1

    if-ne p1, v1, :cond_1

    return-void

    .line 3213
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v1, p1}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$fputmLastOrientationDegree(Lcom/sonyericsson/android/camera/CameraActivity;I)V

    .line 3215
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$fgetmLastOrientationDegree(Lcom/sonyericsson/android/camera/CameraActivity;)I

    move-result p1

    if-eq p1, v0, :cond_2

    .line 3216
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$fgetmLastOrientationDegree(Lcom/sonyericsson/android/camera/CameraActivity;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$fputmLastDeterminedOrientationDegree(Lcom/sonyericsson/android/camera/CameraActivity;I)V

    .line 3219
    :cond_2
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getLayoutOrientation()Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity;->-$$Nest$mnotifyLayoutOrientationChanged(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;)V

    return-void
.end method
