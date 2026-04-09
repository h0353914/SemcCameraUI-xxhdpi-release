.class public Lcom/sonyericsson/android/camera/view/CaptureArea;
.super Landroid/widget/ImageView;
.source "CaptureArea.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;,
        Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaTouchEventListener;
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
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 33
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsTouched:Z

    .line 34
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsLongPressed:Z

    .line 36
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsForceTouchCanceled:Z

    const/4 p2, 0x0

    .line 39
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mUserInteractionEngine:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    .line 42
    new-instance p2, Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaTouchEventListener;

    invoke-direct {p2, p0}, Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaTouchEventListener;-><init>(Lcom/sonyericsson/android/camera/view/CaptureArea;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mTouchListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaTouchEventListener;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0701ee

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 56
    new-instance v0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-direct {v0, p1, p0, p2}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mUserInteractionEngine:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    .line 57
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mUserInteractionEngine:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->setInteractionListener(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;)V

    .line 59
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mTouchListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaTouchEventListener;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/CaptureArea;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/view/CaptureArea;)Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mUserInteractionEngine:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    return-object p0
.end method

.method static synthetic access$102(Lcom/sonyericsson/android/camera/view/CaptureArea;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsTouched:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/view/CaptureArea;)Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    return-object p0
.end method

.method private convertPointCoordinatesFromThisViewToScreen(Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 3

    const/4 v0, 0x2

    .line 102
    new-array v0, v0, [I

    .line 103
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/CaptureArea;->getLocationOnScreen([I)V

    .line 105
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

    .line 75
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsForceTouchCanceled:Z

    return-void
.end method

.method public isTouched()Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsTouched:Z

    return p0
.end method

.method public onDoubleCanceled()V
    .locals 1

    .line 295
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "onDoubleCanceled: "

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 297
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsTouched:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 303
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsTouched:Z

    .line 304
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsForceTouchCanceled:Z

    .line 306
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    if-eqz v0, :cond_2

    .line 307
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

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

    .line 271
    iget-boolean p3, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsTouched:Z

    if-nez p3, :cond_0

    return-void

    :cond_0
    sub-float/2addr p1, p2

    .line 278
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    if-eqz p2, :cond_1

    .line 279
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaScaled(F)V

    :cond_1
    return-void
.end method

.method public onDoubleTouched(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0

    .line 255
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsTouched:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsForceTouchCanceled:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    if-eqz p1, :cond_1

    .line 260
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaIsReadyToScale()V

    :cond_1
    return-void

    :cond_2
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

    .line 338
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsLongPressed:Z

    .line 340
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    if-eqz v0, :cond_0

    .line 341
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 343
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/CaptureArea;->convertPointCoordinatesFromThisViewToScreen(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaLongPressed(Landroid/graphics/Point;)V

    :cond_0
    return-void
.end method

.method public onOverTripleCanceled()V
    .locals 1

    .line 313
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "onOverTripleCanceled: "

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 315
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsTouched:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 321
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsTouched:Z

    .line 322
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsForceTouchCanceled:Z

    .line 324
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    if-eqz v0, :cond_2

    .line 325
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

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

    .line 238
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsTouched:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 244
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsTouched:Z

    .line 245
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsForceTouchCanceled:Z

    .line 247
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    if-eqz v0, :cond_1

    .line 248
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaCanceled()V

    :cond_1
    return-void
.end method

.method public onSingleMoved(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0

    .line 144
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsTouched:Z

    if-nez p1, :cond_0

    return-void

    .line 149
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    if-eqz p1, :cond_2

    .line 172
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/CaptureArea;->isTouched()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 173
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsForceTouchCanceled:Z

    .line 177
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaCanceled()V

    return-void

    .line 181
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaMoved()V

    :cond_2
    return-void
.end method

.method public onSingleReleased(Landroid/graphics/Point;)V
    .locals 2

    .line 212
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsForceTouchCanceled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 213
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsTouched:Z

    .line 214
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsLongPressed:Z

    .line 215
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsForceTouchCanceled:Z

    .line 216
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    if-eqz p1, :cond_0

    .line 217
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaCanceled()V

    :cond_0
    return-void

    .line 222
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsTouched:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsLongPressed:Z

    if-nez v0, :cond_2

    return-void

    .line 228
    :cond_2
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsTouched:Z

    .line 229
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsLongPressed:Z

    .line 230
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    if-eqz v0, :cond_3

    .line 231
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    .line 232
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/CaptureArea;->convertPointCoordinatesFromThisViewToScreen(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p0

    .line 231
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

    .line 188
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsTouched:Z

    if-nez p1, :cond_0

    return-void

    .line 193
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    if-eqz p1, :cond_1

    .line 194
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaStopped()V

    :cond_1
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)V
    .locals 2

    .line 354
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsTouched:Z

    if-nez v0, :cond_0

    return-void

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    if-eqz v0, :cond_1

    .line 359
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 361
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    .line 362
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/CaptureArea;->convertPointCoordinatesFromThisViewToScreen(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p0

    .line 361
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaSingleTapUp(Landroid/graphics/Point;)V

    :cond_1
    return-void
.end method

.method public onSingleTouched(Landroid/graphics/Point;)V
    .locals 0

    const/4 p1, 0x1

    .line 133
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsTouched:Z

    const/4 p1, 0x0

    .line 134
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mIsForceTouchCanceled:Z

    .line 136
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    if-eqz p1, :cond_0

    .line 137
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;->onCaptureAreaTouched()V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mUserInteractionEngine:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->setInteractionListener(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;)V

    .line 64
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mUserInteractionEngine:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->release()V

    .line 65
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mUserInteractionEngine:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    .line 67
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/CaptureArea;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setCaptureAreaStateListener(Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/CaptureArea;->mListener:Lcom/sonyericsson/android/camera/view/CaptureArea$CaptureAreaStateListener;

    return-void
.end method
