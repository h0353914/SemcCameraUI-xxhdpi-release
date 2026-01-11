.class Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;
.super Ljava/lang/Object;
.source "UserEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/UserEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchEventProcedureManager"
.end annotation


# instance fields
.field private final mProcedures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;",
            "Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V
    .locals 13

    .line 1127
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;->mProcedures:Ljava/util/Map;

    .line 1128
    new-instance v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureButtonProcedure;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureButtonProcedure;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureButtonProcedure-IA;)V

    const/16 v2, 0xa

    new-array v2, v2, [Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;

    sget-object v3, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;->CAPTURE_SMALL:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v3, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;->CAPTURE_LARGE:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    sget-object v3, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;->TOUCH_CAPTURE_WITH_SELFTIMER:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;

    const/4 v7, 0x3

    aput-object v3, v2, v7

    sget-object v3, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;->CAPTURE_WITH_SELFTIMER_SHORT:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;

    const/4 v8, 0x4

    aput-object v3, v2, v8

    sget-object v3, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;->CAPTURE_WITH_SELFTIMER_LONG:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;

    const/4 v9, 0x5

    aput-object v3, v2, v9

    sget-object v3, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;->CAPTURE_WITH_SELFTIMER_LARGE:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;

    const/4 v10, 0x6

    aput-object v3, v2, v10

    sget-object v3, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;->TOUCH_CAPTURE_WITH_SELFTIMER_SHORT:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;

    const/4 v11, 0x7

    aput-object v3, v2, v11

    const/16 v3, 0x8

    sget-object v12, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;->TOUCH_CAPTURE_WITH_SELFTIMER_LONG:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;

    aput-object v12, v2, v3

    const/16 v3, 0x9

    sget-object v12, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;->SIDE_TOUCH_SNAPSHOT_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;

    aput-object v12, v2, v3

    invoke-direct {p0, v0, v2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;->register(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;[Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)V

    .line 1140
    new-instance v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$StopSlowMotionRecordingButtonProcedure;

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$StopSlowMotionRecordingButtonProcedure;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$StopSlowMotionRecordingButtonProcedure-IA;)V

    new-array v2, v5, [Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;

    sget-object v3, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;->STOP_RECORDING_SMALL:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;

    aput-object v3, v2, v4

    invoke-direct {p0, v0, v2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;->register(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;[Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)V

    .line 1143
    new-instance v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$SelfTimerCancelButtonProcedure;

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$SelfTimerCancelButtonProcedure;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$SelfTimerCancelButtonProcedure-IA;)V

    new-array v2, v6, [Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;

    sget-object v3, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;->CANCEL_SELFTIMER_LARGE:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;

    aput-object v3, v2, v4

    sget-object v3, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;->CANCEL_SELFTIMER_SIDE:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;

    aput-object v3, v2, v5

    invoke-direct {p0, v0, v2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;->register(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;[Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)V

    .line 1147
    new-instance v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$VideoRecordingButtonProcedure;

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VideoRecordingButtonProcedure;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$VideoRecordingButtonProcedure-IA;)V

    new-array v2, v11, [Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;

    sget-object v3, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;->TOUCH_RECORDING_START:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;

    aput-object v3, v2, v4

    sget-object v3, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;->START_RECORDING_LARGE:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;

    aput-object v3, v2, v5

    sget-object v3, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;->STOP_RECORDING_LARGE:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;

    aput-object v3, v2, v6

    sget-object v3, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;->STOP_RECORDING_IN_PAUSE_LARGE:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;

    aput-object v3, v2, v7

    sget-object v3, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;->SIDE_TOUCH_START_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;

    aput-object v3, v2, v8

    sget-object v3, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;->SIDE_TOUCH_STOP_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;

    aput-object v3, v2, v9

    sget-object v3, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;->SIDE_TOUCH_STOP_RECORDING_IN_PAUSE:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;

    aput-object v3, v2, v10

    invoke-direct {p0, v0, v2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;->register(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;[Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)V

    .line 1156
    new-instance v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$SuperSlowTriggerButtonProcedure;

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$SuperSlowTriggerButtonProcedure;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$SuperSlowTriggerButtonProcedure-IA;)V

    new-array v2, v5, [Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;

    sget-object v3, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;->TRIGGER_SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;

    aput-object v3, v2, v4

    invoke-direct {p0, v0, v2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;->register(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;[Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)V

    .line 1159
    new-instance v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$VideoRecordingCamcordButtonProcedure;

    invoke-direct {v0, p1, v4}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VideoRecordingCamcordButtonProcedure;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Z)V

    new-array v2, v6, [Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;

    sget-object v3, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;->RESUME_RECORDING_SMALL:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;

    aput-object v3, v2, v4

    sget-object v3, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;->SIDE_TOUCH_RESUME_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;

    aput-object v3, v2, v5

    invoke-direct {p0, v0, v2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;->register(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;[Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)V

    .line 1163
    new-instance v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$VideoRecordingCamcordButtonProcedure;

    invoke-direct {v0, p1, v5}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VideoRecordingCamcordButtonProcedure;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Z)V

    new-array v2, v6, [Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;

    sget-object v3, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;->PAUSE_RECORDING_SMALL:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;

    aput-object v3, v2, v4

    sget-object v3, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;->SIDE_TOUCH_PAUSE_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;

    aput-object v3, v2, v5

    invoke-direct {p0, v0, v2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;->register(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;[Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)V

    .line 1167
    new-instance v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$CaptureAreaTouchEventProcedureSelector-IA;)V

    new-array v2, v5, [Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;

    sget-object v3, Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;->CAPTURE_AREA:Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;

    aput-object v3, v2, v4

    invoke-direct {p0, v0, v2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;->register(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;[Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)V

    .line 1169
    new-instance v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleChangeButtonProcedure;

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleChangeButtonProcedure;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleChangeButtonProcedure-IA;)V

    new-array v2, v5, [Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;

    sget-object v3, Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;->ANGLE_CHANGE_BUTTON:Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;

    aput-object v3, v2, v4

    invoke-direct {p0, v0, v2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;->register(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;[Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)V

    .line 1171
    new-instance v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$PredictiveLaunchCoverProcedure;

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$PredictiveLaunchCoverProcedure;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$PredictiveLaunchCoverProcedure-IA;)V

    new-array p1, v5, [Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;

    sget-object v1, Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;->PREDICTIVE_LAUNCH_COVER:Lcom/sonyericsson/android/camera/view/UserEventHandler$UiComponent;

    aput-object v1, p1, v4

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;->register(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;[Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)V

    return-void
.end method

.method private varargs register(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;[Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)V
    .locals 4

    .line 1189
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 1190
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;->mProcedures:Ljava/util/Map;

    invoke-interface {v3, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public find(Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventSource;)Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;
    .locals 2

    .line 1176
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedureManager;->mProcedures:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;

    .line 1177
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 1178
    const-string v0, "find("

    if-eqz p0, :cond_0

    .line 1179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ") TouchEventProcedure:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 1180
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 1179
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_0

    .line 1182
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ") TouchEventProcedure:not found"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object p0
.end method
