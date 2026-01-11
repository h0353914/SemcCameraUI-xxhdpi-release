.class Lcom/sonyericsson/android/camera/controller/GestureShutter$StateReleasing;
.super Lcom/sonyericsson/android/camera/controller/GestureShutter$State;
.source "GestureShutter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/GestureShutter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateReleasing"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/GestureShutter;)V
    .locals 1

    .line 461
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateReleasing;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    const/4 v0, 0x0

    .line 462
    invoke-direct {p0, p1, v0, v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter$State;-><init>(Lcom/sonyericsson/android/camera/controller/GestureShutter;ZZ)V

    return-void
.end method


# virtual methods
.method entry()V
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateReleasing;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->-$$Nest$fgetmControllerHost(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/controller/GestureShutter$ControllerHost;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$StateReleasing;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->-$$Nest$fgetmOrientationListener(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientationChangedListener;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/controller/GestureShutter$ControllerHost;->removeOrientationListener(Lcom/sonyericsson/android/camera/CameraActivity$LayoutOrientationChangedListener;)V

    return-void
.end method
