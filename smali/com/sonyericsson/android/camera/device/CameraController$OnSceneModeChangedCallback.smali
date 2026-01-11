.class Lcom/sonyericsson/android/camera/device/CameraController$OnSceneModeChangedCallback;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnSceneModeChangedCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;)V
    .locals 0

    .line 6591
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnSceneModeChangedCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$OnSceneModeChangedCallback-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$OnSceneModeChangedCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;)V

    return-void
.end method


# virtual methods
.method public onSceneModeChanged(Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionResult;)V
    .locals 1

    .line 6595
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnSceneModeChangedCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$misSceneRecognitionRunning(Lcom/sonyericsson/android/camera/device/CameraController;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6596
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "Scene recognition is stopped."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 6601
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->clearRecognizedScene()V

    .line 6603
    :cond_2
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnSceneModeChangedCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCallback(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;->onSceneModeChanged(Lcom/sonyericsson/android/camera/device/CameraParameters$SceneRecognitionResult;)V

    return-void
.end method
