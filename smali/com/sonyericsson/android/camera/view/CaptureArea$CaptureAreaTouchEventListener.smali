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

    .line 78
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/android/camera/view/CaptureArea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    monitor-enter p0

    .line 83
    :try_start_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/android/camera/view/CaptureArea;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/CaptureArea;->access$000(Lcom/sonyericsson/android/camera/view/CaptureArea;)Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 86
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_0

    const-string p1, "touch event is out of target area"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 89
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/android/camera/view/CaptureArea;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera/view/CaptureArea;->access$102(Lcom/sonyericsson/android/camera/view/CaptureArea;Z)Z

    .line 91
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/android/camera/view/CaptureArea;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/CaptureArea;->access$200(Lcom/sonyericsson/android/camera/view/CaptureArea;)Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 92
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaTouchEventListener;->this$0:Lcom/sonyericsson/android/camera/view/CaptureArea;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/CaptureArea;->access$200(Lcom/sonyericsson/android/camera/view/CaptureArea;)Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaCanceled()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const/4 p1, 0x1

    .line 96
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 82
    monitor-exit p0

    throw p1
.end method
