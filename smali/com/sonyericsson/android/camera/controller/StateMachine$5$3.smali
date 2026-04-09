.class Lcom/sonyericsson/android/camera/controller/StateMachine$5$3;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine$5;->onRecordFinished(Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$5;

.field final synthetic val$localResult:Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine$5;Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;)V
    .locals 0

    .line 7898
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$5$3;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$5;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$5$3;->val$localResult:Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 7902
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoke onRecordFinished"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 7903
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$8;->$SwitchMap$com$sonyericsson$android$camera$recorder$RecorderController$Result:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$5$3;->val$localResult:Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 7938
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$5$3;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$5;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$5;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v2, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_RECORDING_ERROR:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 7939
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$5$3;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$5;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$5;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->releaseVideo()V

    goto/16 :goto_0

    .line 7906
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$5$3;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$5;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$5;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$12700(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7907
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$5$3;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$5;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$5;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$12700(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->enableClick()V

    .line 7911
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$5$3;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$5;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$5;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->finalizeRecording()V

    .line 7913
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$5$3;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$5;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$5;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->onVideoRecordingDone()V

    .line 7916
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$5$3;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$5;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$5;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$5$3;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$5;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine$5;->access$14700(Lcom/sonyericsson/android/camera/controller/StateMachine$5;)Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$14800(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$VideoSavingRequestBuilder;)V

    .line 7918
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$5$3;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$5;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$5;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v0, v1, :cond_2

    .line 7919
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$5$3;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$5;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/StateMachine$5;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 7920
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$5$3;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$5;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$5;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 7921
    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$11600(Lcom/sonyericsson/android/camera/controller/StateMachine;)I

    move-result p0

    .line 7919
    invoke-virtual {v0, v1, p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendSlowMotionEvent(Ljava/lang/String;I)V

    goto :goto_0

    .line 7933
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$5$3;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$5;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$5;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStopping;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$5$3;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$5;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/controller/StateMachine$5;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$5$3;->val$localResult:Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

    invoke-direct {v2, v3, v4}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStopping;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;)V

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3400(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 7934
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$5$3;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$5;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$5;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$11400(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    goto :goto_0

    .line 7927
    :pswitch_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$5$3;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$5;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$5;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStopping;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$5$3;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$5;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/controller/StateMachine$5;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$5$3;->val$localResult:Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;

    invoke-direct {v2, v3, v4}, Lcom/sonyericsson/android/camera/controller/StateMachine$StateVideoStopping;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;)V

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$3400(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    .line 7928
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$5$3;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$5;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$5;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$11400(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
