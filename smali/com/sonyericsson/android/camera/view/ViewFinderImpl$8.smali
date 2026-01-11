.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$8;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V
    .locals 0

    .line 2625
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$8;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 2628
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_0

    .line 2629
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Wide front button is clicked, isCameraSwitching: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$8;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 2630
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isCameraSwitching()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 2629
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2632
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$8;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmTouchEventDispatcher(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;->ANGLE_CHANGE_BUTTON:Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;->sendClick(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;Landroid/graphics/Point;)V

    return-void
.end method
