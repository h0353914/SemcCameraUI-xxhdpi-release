.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchCoverTouchListenerImpl;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PredictiveLaunchCoverTouchListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V
    .locals 0

    .line 10095
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchCoverTouchListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/view/ViewFinderImpl$1;)V
    .locals 0

    .line 10095
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchCoverTouchListenerImpl;-><init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    return-void
.end method


# virtual methods
.method public onCircleTouched()V
    .locals 2

    .line 10099
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchCoverTouchListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$2000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;->PREDICTIVE_LAUNCH_COVER:Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventDispatcher;->sendTouchUp(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;Landroid/graphics/Point;)V

    return-void
.end method
