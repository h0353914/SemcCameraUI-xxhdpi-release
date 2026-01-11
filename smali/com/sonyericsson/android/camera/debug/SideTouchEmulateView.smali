.class final Lcom/sonyericsson/android/camera/debug/SideTouchEmulateView;
.super Landroid/widget/FrameLayout;
.source "SideTouchEmulateViewFactory.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/debug/SideTouchEmulateView$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/sonyericsson/android/camera/debug/SideTouchEmulateView;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "area",
        "Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;",
        "(Landroid/content/Context;Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;)V",
        "getArea",
        "()Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;",
        "onTouchEvent",
        "",
        "event",
        "Landroid/view/MotionEvent;",
        "SemcCameraUI_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final area:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "area"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/debug/SideTouchEmulateView;->area:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    return-void
.end method


# virtual methods
.method public final getArea()Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/sonyericsson/android/camera/debug/SideTouchEmulateView;->area:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    return-object p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SideTouchView x:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " y:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 71
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/sonyericsson/android/camera/debug/SideTouchEmulateView;->area:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    sget-object v2, Lcom/sonyericsson/android/camera/debug/SideTouchEmulateView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 75
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/InputDevice$MotionRange;->getMin()F

    move-result p1

    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/InputDevice$MotionRange;->getMax()F

    move-result p1

    .line 76
    :goto_0
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 72
    invoke-virtual {v0, p1, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    const/high16 p1, 0x20000000

    .line 77
    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 80
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/debug/SideTouchEmulateView;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    .line 81
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return p0
.end method
