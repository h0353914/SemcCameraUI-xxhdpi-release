.class Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$6;
.super Ljava/lang/Object;
.source "ZoomDial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setVideoRecording(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V
    .locals 0

    .line 674
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$6;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 677
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$6;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->-$$Nest$fgetmCurrentStep(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->zoom(I)I

    return-void
.end method
