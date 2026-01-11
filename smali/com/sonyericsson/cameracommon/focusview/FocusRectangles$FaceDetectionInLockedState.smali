.class Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionInLockedState;
.super Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;
.source "FocusRectangles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FaceDetectionInLockedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V
    .locals 1

    .line 1088
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionInLockedState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState-IA;)V

    return-void
.end method


# virtual methods
.method public handleOnFaceDetected(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;)V
    .locals 2

    .line 1092
    iget-object v0, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->extFaceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1093
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionInLockedState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fputmLatestSelectedFaceUuid(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Ljava/lang/String;)V

    .line 1096
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionInLockedState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmLatestSelectedFaceUuid(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 1100
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionInLockedState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    const/4 v0, 0x0

    .line 1101
    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$mgetSelectedFaceUuId(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;)Ljava/lang/String;

    move-result-object v1

    .line 1100
    invoke-static {p0, p1, v0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$mupdateFaceRectanglesData(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;ZLjava/lang/String;)V

    return-void
.end method
