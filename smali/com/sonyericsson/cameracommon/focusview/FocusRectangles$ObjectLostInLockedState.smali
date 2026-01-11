.class Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectLostInLockedState;
.super Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingInLockedState;
.source "FocusRectangles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ObjectLostInLockedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V
    .locals 0

    .line 1152
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectLostInLockedState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingInLockedState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    return-void
.end method


# virtual methods
.method public handleClearAllFocusExceptFace()V
    .locals 1

    .line 1161
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectLostInLockedState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingStoppedInLockedState;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingStoppedInLockedState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    invoke-static {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$mchangeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    return-void
.end method

.method public handleOnAutoFocusDone(Z)V
    .locals 0

    return-void
.end method

.method public handleOnTrackedObjectStateUpdated(Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;)V
    .locals 0

    return-void
.end method

.method public handleStartAfLock()V
    .locals 0

    return-void
.end method

.method public handleStopAfLock()V
    .locals 2

    .line 1176
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectLostInLockedState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    new-instance v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectLostState;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectLostInLockedState;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-direct {v1, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectLostState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$mchangeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    return-void
.end method
