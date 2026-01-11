.class Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaTouchEventListener;
.super Ljava/lang/Object;
.source "CaptureArea.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/CaptureArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CaptureAreaTouchEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/CaptureArea;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/CaptureArea;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/android/camera/view/CaptureArea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    monitor-enter p0

    .line 82
    :try_start_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/android/camera/view/CaptureArea;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/CaptureArea;->-$$Nest$fgetmUserInteractionEngine(Lcom/sonyericsson/android/camera/view/CaptureArea;)Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_1

    .line 85
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-array p1, p2, [Ljava/lang/String;

    const-string/jumbo v1, "touch event is out of target area"

    aput-object v1, p1, v0

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/android/camera/view/CaptureArea;

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/view/CaptureArea;->-$$Nest$fputmIsTouched(Lcom/sonyericsson/android/camera/view/CaptureArea;Z)V

    .line 90
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/android/camera/view/CaptureArea;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/CaptureArea;->-$$Nest$fgetmListener(Lcom/sonyericsson/android/camera/view/CaptureArea;)Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 91
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/android/camera/view/CaptureArea;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/CaptureArea;->-$$Nest$fgetmListener(Lcom/sonyericsson/android/camera/view/CaptureArea;)Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaCanceled()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :cond_1
    monitor-exit p0

    return p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
