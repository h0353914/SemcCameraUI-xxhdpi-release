.class Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingHandler;
.super Landroid/os/Handler;
.source "ObjectTrackingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObjectTrackingHandler"
.end annotation


# static fields
.field private static final MSG_TIMEOUT_INVISIBLE:I = 0x2

.field private static final MSG_TIMEOUT_LOST:I = 0x1

.field private static final TIMEOUT_INVISIBLE_MILLIS:I = 0x1f4

.field private static final TIMEOUT_LOST_MILLIS:I = 0xbb8


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingHandler;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$1;)V
    .locals 0

    .line 165
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingHandler;-><init>(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 184
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingHandler;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->access$700(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->isObjectTrackingRunning()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 189
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingHandler;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->access$300(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCaptureState()Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;->STATE_PHOTO_AF_DONE:Lcom/sonyericsson/android/camera/controller/StateMachine$CaptureState;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    move v0, v3

    .line 196
    :cond_1
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz v0, :cond_3

    .line 208
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingHandler;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->access$400(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_OBJECT_TRACKING_TIMEOUT:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v0, v3, [Ljava/lang/Object;

    invoke-interface {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    goto :goto_0

    .line 198
    :pswitch_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingHandler;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->stop()V

    if-eqz v0, :cond_2

    .line 200
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingHandler;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->access$400(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_FOCUS_POSITION_RELEASED_EXCEPT_FACE:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 203
    :cond_2
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingHandler;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;->access$300(Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_CLEAR_FOCUS:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startTimeoutCount()V
    .locals 3

    const/4 v0, 0x1

    const-wide/16 v1, 0xbb8

    .line 173
    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingHandler;->sendEmptyMessageDelayed(IJ)Z

    const/4 v0, 0x2

    const-wide/16 v1, 0x1f4

    .line 174
    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public stopTimeoutCount()V
    .locals 1

    const/4 v0, 0x1

    .line 178
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingHandler;->removeMessages(I)V

    const/4 v0, 0x2

    .line 179
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/controller/ObjectTrackingManager$ObjectTrackingHandler;->removeMessages(I)V

    return-void
.end method
