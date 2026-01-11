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
.method static bridge synthetic -$$Nest$mattemptCommitSettings(Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->attemptCommitSettings()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mentrySuppressor(Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->entrySuppressor(Ljava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mleaveSuppressor(Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->leaveSuppressor(Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .locals 0

    .line 11215
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 11218
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->isSuppressed:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method

.method private attemptCommitSettings()V
    .locals 3

    .line 11284
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->mSuppressors:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 11301
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->isSuppressed:Z

    if-nez v0, :cond_1

    .line 11303
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setPredictiveCaptureAndCommit(Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;)V

    :cond_1
    const/4 v0, 0x1

    .line 11305
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->isSuppressed:Z

    goto :goto_2

    .line 11285
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mgetCurrentStorage(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    .line 11286
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmStorage(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sonyericsson/cameracommon/storage/Storage;->getCurrentState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    move-result-object v0

    .line 11287
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;

    .line 11290
    sget-object v2, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->AVAILABLE:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 11291
    invoke-interface {v0, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    if-eq v0, v2, :cond_3

    goto :goto_1

    .line 11294
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PREDICTIVE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 11295
    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;

    .line 11297
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->setPredictiveCaptureAndCommit(Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;)V

    const/4 v0, 0x0

    .line 11298
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->isSuppressed:Z

    :goto_2
    return-void
.end method

.method private entrySuppressor(Ljava/lang/Object;)V
    .locals 2

    .line 11236
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmUserSettings(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PREDICTIVE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 11237
    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;

    .line 11239
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/PredictiveCapture;

    if-ne v0, v1, :cond_0

    return-void

    .line 11243
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->mSuppressors:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 11244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->mSuppressors:Ljava/util/ArrayList;

    .line 11247
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->mSuppressors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 11248
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->mSuppressors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11249
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->attemptCommitSettings()V

    :cond_2
    return-void
.end method

.method private leaveSuppressor(Ljava/lang/Object;)V
    .locals 1

    .line 11268
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->mSuppressors:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 11271
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 11273
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$SuitablePredictiveApplier;->attemptCommitSettings()V

    :cond_1
    return-void
.end method
