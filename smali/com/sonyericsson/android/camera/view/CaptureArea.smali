.class public Lcom/sonyericsson/android/camera/view/CaptureArea;
.super Landroid/widget/ImageView;
.source "CaptureArea.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaTouchEventListener;,
        Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CaptureArea"


# instance fields
.field private mIsForceTouchCanceled:Z

.field private mIsLongPressed:Z

.field private mIsTouched:Z

.field private mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

.field private mTouchListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaTouchEventListener;

.field private mUserInteractionEngine:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;


# direct methods
.method static bridge synthetic -$$Nest$fgetmListener(Lcom/sonyericsson/android/camera/view/CaptureArea;)Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserInteractionEngine(Lcom/sonyericsson/android/camera/view/CaptureArea;)Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mUserInteractionEngine:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsTouched(Lcom/sonyericsson/android/camera/view/CaptureArea;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsTouched:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 32
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsTouched:Z

    .line 33
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsLongPressed:Z

    .line 35
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsForceTouchCanceled:Z

    const/4 p2, 0x0

    .line 38
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mUserInteractionEngine:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    .line 41
    new-instance p2, Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaTouchEventListener;

    invoke-direct {p2, p0}, Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaTouchEventListener;-><init>(Lcom/sonyericsson/android/camera/view/CaptureArea;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mTouchListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaTouchEventListener;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07023c

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 55
    new-instance v0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-direct {v0, p1, p0, p2}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mUserInteractionEngine:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    .line 56
    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->setInteractionListener(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;)V

    .line 58
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mTouchListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaTouchEventListener;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/CaptureArea;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private convertPointCoordinatesFromThisViewToScreen(Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 3

    const/4 v0, 0x2

    .line 101
    new-array v0, v0, [I

    .line 102
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/CaptureArea;->getLocationOnScreen([I)V

    .line 104
    new-instance p0, Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    const/4 v2, 0x0

    aget v2, v0, v2

    add-int/2addr v1, v2

    iget p1, p1, Landroid/graphics/Point;->y:I

    const/4 v2, 0x1

    aget v0, v0, v2

    add-int/2addr p1, v0

    invoke-direct {p0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object p0
.end method


# virtual methods
.method public clearTouched()V
    .locals 1

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsForceTouchCanceled:Z

    return-void
.end method

.method public isTouched()Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsTouched:Z

    return p0
.end method

.method public onDoubleCanceled()V
    .locals 1

    .line 294
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "onDoubleCanceled: "

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 296
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsTouched:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 302
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsTouched:Z

    .line 303
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsForceTouchCanceled:Z

    .line 305
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    if-eqz p0, :cond_2

    .line 306
    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaCanceled()V

    :cond_2
    return-void
.end method

.method public onDoubleMoved(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0

    return-void
.end method

.method public onDoubleRotated(FF)V
    .locals 0

    return-void
.end method

.method public onDoubleScaled(FFF)V
    .locals 0

    .line 270
    iget-boolean p3, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsTouched:Z

    if-nez p3, :cond_0

    return-void

    :cond_0
    sub-float/2addr p1, p2

    .line 277
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    if-eqz p0, :cond_1

    .line 278
    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaScaled(F)V

    :cond_1
    return-void
.end method

.method public onDoubleTouched(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0

    .line 254
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsTouched:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsForceTouchCanceled:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 258
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    if-eqz p0, :cond_1

    .line 259
    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaIsReadyToScale()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 0

    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    const/4 v0, 0x1

    .line 337
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsLongPressed:Z

    .line 339
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    if-eqz v0, :cond_0

    .line 340
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 342
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/CaptureArea;->convertPointCoordinatesFromThisViewToScreen(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaLongPressed(Landroid/graphics/Point;)V

    :cond_0
    return-void
.end method

.method public onOverTripleCanceled()V
    .locals 1

    .line 312
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "onOverTripleCanceled: "

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 314
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsTouched:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 320
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsTouched:Z

    .line 321
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsForceTouchCanceled:Z

    .line 323
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    if-eqz p0, :cond_2

    .line 324
    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaCanceled()V

    :cond_2
    return-void
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleCanceled()V
    .locals 1

    .line 237
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsTouched:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 243
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsTouched:Z

    .line 244
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsForceTouchCanceled:Z

    .line 246
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    if-eqz p0, :cond_1

    .line 247
    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaCanceled()V

    :cond_1
    return-void
.end method

.method public onSingleMoved(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0

    .line 143
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsTouched:Z

    if-nez p1, :cond_0

    return-void

    .line 148
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    if-eqz p1, :cond_2

    .line 171
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CaptureArea;->isTouched()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 172
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsForceTouchCanceled:Z

    .line 176
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaCanceled()V

    return-void

    .line 180
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaMoved()V

    :cond_2
    return-void
.end method

.method public onSingleReleased(Landroid/graphics/Point;)V
    .locals 2

    .line 211
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsForceTouchCanceled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 212
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsTouched:Z

    .line 213
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsLongPressed:Z

    .line 214
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsForceTouchCanceled:Z

    .line 215
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    if-eqz p0, :cond_0

    .line 216
    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaCanceled()V

    :cond_0
    return-void

    .line 221
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsTouched:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsLongPressed:Z

    if-nez v0, :cond_2

    return-void

    .line 227
    :cond_2
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsTouched:Z

    .line 228
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsLongPressed:Z

    .line 229
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    if-eqz v0, :cond_3

    .line 231
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/CaptureArea;->convertPointCoordinatesFromThisViewToScreen(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p0

    .line 230
    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaReleased(Landroid/graphics/Point;)V

    :cond_3
    return-void
.end method

.method public onSingleReleasedInDouble(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0

    return-void
.end method

.method public onSingleStopped(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0

    .line 187
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsTouched:Z

    if-nez p1, :cond_0

    return-void

    .line 192
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    if-eqz p0, :cond_1

    .line 193
    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaStopped()V

    :cond_1
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)V
    .locals 2

    .line 353
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsTouched:Z

    if-nez v0, :cond_0

    return-void

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    if-eqz v0, :cond_1

    .line 358
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 360
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    .line 361
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/CaptureArea;->convertPointCoordinatesFromThisViewToScreen(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p0

    .line 360
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaSingleTapUp(Landroid/graphics/Point;)V

    :cond_1
    return-void
.end method

.method public onSingleTouched(Landroid/graphics/Point;)V
    .locals 0

    const/4 p1, 0x1

    .line 132
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsTouched:Z

    const/4 p1, 0x0

    .line 133
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsForceTouchCanceled:Z

    .line 135
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    if-eqz p0, :cond_0

    .line 136
    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaTouched()V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mUserInteractionEngine:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->setInteractionListener(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;)V

    .line 63
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mUserInteractionEngine:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->release()V

    .line 64
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mUserInteractionEngine:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    .line 66
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/CaptureArea;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setCaptureAreaStateListener(Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    return-void
.end method
