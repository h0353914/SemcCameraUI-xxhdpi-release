.class public Lcom/sonyericsson/cameracommon/focusview/Rectangle;
.super Landroid/widget/RelativeLayout;
.source "Rectangle.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Rectangles"


# instance fields
.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mRectangleOnTouchListener:Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getGestureDetector()Landroid/view/GestureDetector;
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->mGestureDetector:Landroid/view/GestureDetector;

    .line 193
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->mGestureDetector:Landroid/view/GestureDetector;

    return-object p0
.end method


# virtual methods
.method public changeChildBackgroundResource(I)V
    .locals 2

    const v0, 0x7f090110

    .line 145
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 146
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 147
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    monitor-enter p0

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->mRectangleOnTouchListener:Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->mRectangleOnTouchListener:Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;

    invoke-interface {v0, p0, p1}, Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;->onRectTouchLongPress(Landroid/view/View;Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 165
    monitor-exit p0

    throw p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    monitor-enter p0

    .line 97
    :try_start_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTouchEvent: action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", (x, y): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 97
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 99
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 100
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->getGestureDetector()Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 102
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->mRectangleOnTouchListener:Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;

    if-eqz v0, :cond_1

    move v1, v2

    .line 105
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 115
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->mRectangleOnTouchListener:Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;

    if-eqz v0, :cond_4

    .line 116
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_3

    .line 117
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->getWidth()I

    move-result v3

    sub-int/2addr v3, v2

    int-to-float v2, v3

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    goto :goto_0

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->mRectangleOnTouchListener:Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;

    invoke-interface {v0, p0, p1}, Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;->onRectTouchUp(Landroid/view/View;Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 118
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->mRectangleOnTouchListener:Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;

    invoke-interface {v0, p0, p1}, Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;->onRectTouchCancel(Landroid/view/View;Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 108
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->mRectangleOnTouchListener:Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;

    if-eqz v0, :cond_4

    .line 109
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->mRectangleOnTouchListener:Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;

    invoke-interface {v0, p0, p1}, Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;->onRectTouchDown(Landroid/view/View;Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :cond_4
    :goto_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    .line 96
    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized setRectangleOnTouchListener(Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;)V
    .locals 0

    monitor-enter p0

    .line 136
    :try_start_0
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->mRectangleOnTouchListener:Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 135
    monitor-exit p0

    throw p1
.end method
