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

    .line 3148
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 3149
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 3155
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v1, p1}, Lcom/sonyericsson/android/camera/CameraActivity;->access$4202(Lcom/sonyericsson/android/camera/CameraActivity;I)I

    .line 3158
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->access$4300(Lcom/sonyericsson/android/camera/CameraActivity;)I

    move-result v1

    if-ne p1, v1, :cond_1

    return-void

    .line 3161
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v1, p1}, Lcom/sonyericsson/android/camera/CameraActivity;->access$4302(Lcom/sonyericsson/android/camera/CameraActivity;I)I

    .line 3163
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->access$4300(Lcom/sonyericsson/android/camera/CameraActivity;)I

    move-result p1

    if-eq p1, v0, :cond_2

    .line 3164
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->access$4300(Lcom/sonyericsson/android/camera/CameraActivity;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->access$4402(Lcom/sonyericsson/android/camera/CameraActivity;I)I

    .line 3167
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getLayoutOrientation()Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/CameraActivity;->access$4500(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientation;)V

    return-void
.end method
