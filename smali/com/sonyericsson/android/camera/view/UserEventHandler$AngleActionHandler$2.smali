.class Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$2;
.super Ljava/lang/Object;
.source "UserEventHandler.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker$OnEventTickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->prepareKeyZooming(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

.field final synthetic val$isZoomIn:Z


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2326
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$2;->this$1:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$2;->val$isZoomIn:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTicked(Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;)V
    .locals 0

    .line 2330
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$2;->this$1:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$2;->val$isZoomIn:Z

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->-$$Nest$mperformKeyZooming(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;Z)Z

    .line 2331
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p0

    sget-object p1, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->VOLUME_KEY:Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    .line 2332
    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2331
    invoke-virtual {p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setZoomTrigger(Ljava/lang/String;)V

    return-void
.end method
