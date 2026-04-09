.class Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuitablePredictiveApplier"
.end annotation


# instance fields
.field private isSuppressed:Z

.field private mSuppressors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .locals 0

    .line 9027
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 9030
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->isSuppressed:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V
    .locals 0

    .line 9027
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;Ljava/lang/Object;)V
    .locals 0

    .line 9027
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->leaveSuppressor(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$6600(Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;)V
    .locals 0

    .line 9027
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->attemptCommitSettings()V

    return-void
.end method

.method static synthetic access$8800(Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;Ljava/lang/Object;)V
    .locals 0

    .line 9027
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->entrySuppressor(Ljava/lang/Object;)V

    return-void
.end method

.method private attemptCommitSettings()V
    .locals 3

    .line 9096
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->mSuppressors:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->mSuppressors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 9113
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->isSuppressed:Z

    if-nez v0, :cond_1

    .line 9115
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setPredictiveCaptureAndCommit(Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;)V

    :cond_1
    const/4 v0, 0x1

    .line 9117
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->isSuppressed:Z

    goto :goto_2

    .line 9097
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$400(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    .line 9098
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sonyericsson/cameracommon/storage/Storage;->getCurrentState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    move-result-object v0

    .line 9099
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;

    .line 9102
    sget-object v2, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->AVAILABLE:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 9103
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1800(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    if-eq v0, v2, :cond_3

    goto :goto_1

    .line 9106
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1800(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PREDICTIVE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 9107
    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;

    .line 9109
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$2600(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setPredictiveCaptureAndCommit(Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;)V

    const/4 v0, 0x0

    .line 9110
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->isSuppressed:Z

    :goto_2
    return-void
.end method

.method private entrySuppressor(Ljava/lang/Object;)V
    .locals 2

    .line 9048
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 9049
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$1800(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PREDICTIVE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;

    .line 9051
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;

    if-ne v0, v1, :cond_0

    return-void

    .line 9055
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->mSuppressors:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 9056
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->mSuppressors:Ljava/util/ArrayList;

    .line 9059
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->mSuppressors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 9060
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->mSuppressors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9061
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->attemptCommitSettings()V

    :cond_2
    return-void
.end method

.method private leaveSuppressor(Ljava/lang/Object;)V
    .locals 1

    .line 9080
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->mSuppressors:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 9083
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->mSuppressors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9085
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->attemptCommitSettings()V

    :cond_1
    return-void
.end method
