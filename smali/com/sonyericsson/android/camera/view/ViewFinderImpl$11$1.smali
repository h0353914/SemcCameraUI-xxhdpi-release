.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$11$1;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl$11;->switchCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$11;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$11;)V
    .locals 0

    .line 2864
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$11$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2867
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$11$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$11;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$11;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$monToggleCameraSwitch(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    .line 2868
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$11$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$11;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$11;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$11$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$11;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$11;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 2869
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$misFront(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Z

    move-result p0

    .line 2868
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$msetFrontAngleSwitchButtonClickable(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Z)V

    return-void
.end method
