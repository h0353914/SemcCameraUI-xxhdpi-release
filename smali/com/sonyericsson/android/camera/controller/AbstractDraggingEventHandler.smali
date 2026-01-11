.class public abstract Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;
.super Ljava/lang/Object;
.source "AbstractDraggingEventHandler.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$OnViewFinderGestureDetectorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AbstractDraggingEventHandler"


# instance fields
.field private final mCameraSwitchDragFinishDistance:I

.field private mDirection:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

.field private mDragStartMargin:I

.field private mIsDragging:Z

.field private final mModeChangeDragFinishDistance:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mIsDragging:Z

    .line 36
    sget-object v0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->NONE:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mDirection:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    .line 37
    iput p2, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mModeChangeDragFinishDistance:I

    .line 38
    iput p3, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mCameraSwitchDragFinishDistance:I

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070094

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mDragStartMargin:I

    return-void
.end method

.method private acceptNewDirection(Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;)Z
    .locals 4

    .line 199
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mDirection:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->UP:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mDirection:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->DOWN:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-ne v0, v1, :cond_0

    goto :goto_2

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mDirection:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->RIGHT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-eq v0, v1, :cond_2

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mDirection:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    sget-object v0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->LEFT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    return v3

    .line 202
    :cond_2
    :goto_0
    sget-object p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->RIGHT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-eq p1, p0, :cond_4

    sget-object p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->LEFT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-ne p1, p0, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :cond_4
    :goto_1
    return v2

    .line 200
    :cond_5
    :goto_2
    sget-object p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->UP:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-eq p1, p0, :cond_7

    sget-object p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->DOWN:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-ne p1, p0, :cond_6

    goto :goto_3

    :cond_6
    move v2, v3

    :cond_7
    :goto_3
    return v2
.end method

.method private computeDirection(Landroid/graphics/Point;Landroid/graphics/Point;)Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;
    .locals 4

    .line 153
    sget-object p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->NONE:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    .line 154
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    double-to-int v0, v0

    .line 156
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dragRotation = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/16 v1, 0x2d

    if-ge v0, v1, :cond_1

    const/16 v1, -0x2d

    if-gt v0, v1, :cond_3

    :cond_1
    const/16 v1, 0x87

    if-le v0, v1, :cond_2

    const/16 v1, 0xb4

    if-le v0, v1, :cond_3

    :cond_2
    const/16 v1, -0x87

    if-ge v0, v1, :cond_8

    const/16 v1, -0xb4

    if-lt v0, v1, :cond_8

    .line 160
    :cond_3
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VERTICAL dragrotation = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 162
    :cond_4
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    if-ne v0, v1, :cond_6

    .line 164
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p2, Landroid/graphics/Point;->y:I

    if-le v0, v1, :cond_5

    .line 165
    sget-object p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->LEFT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    goto :goto_0

    .line 166
    :cond_5
    iget p1, p1, Landroid/graphics/Point;->y:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    if-ge p1, p2, :cond_d

    .line 167
    sget-object p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->RIGHT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    goto :goto_0

    .line 170
    :cond_6
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p2, Landroid/graphics/Point;->y:I

    if-le v0, v1, :cond_7

    .line 171
    sget-object p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->DOWN:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    goto :goto_0

    .line 172
    :cond_7
    iget p1, p1, Landroid/graphics/Point;->y:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    if-ge p1, p2, :cond_d

    .line 173
    sget-object p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->UP:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    goto :goto_0

    .line 177
    :cond_8
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HORIZONTAL dragrotation = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 179
    :cond_9
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    if-ne v0, v1, :cond_b

    .line 181
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p2, Landroid/graphics/Point;->x:I

    if-le v0, v1, :cond_a

    .line 182
    sget-object p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->UP:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    goto :goto_0

    .line 183
    :cond_a
    iget p1, p1, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->x:I

    if-ge p1, p2, :cond_d

    .line 184
    sget-object p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->DOWN:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    goto :goto_0

    .line 187
    :cond_b
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p2, Landroid/graphics/Point;->x:I

    if-le v0, v1, :cond_c

    .line 188
    sget-object p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->LEFT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    goto :goto_0

    .line 189
    :cond_c
    iget p1, p1, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->x:I

    if-ge p1, p2, :cond_d

    .line 190
    sget-object p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->RIGHT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    :cond_d
    :goto_0
    return-object p0
.end method

.method private computeDistance(Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;Landroid/graphics/Point;Landroid/graphics/Point;)I
    .locals 1

    .line 133
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    if-ne p0, v0, :cond_3

    .line 135
    sget-object p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->UP:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-eq p1, p0, :cond_2

    sget-object p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->DOWN:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-ne p1, p0, :cond_0

    goto :goto_1

    .line 138
    :cond_0
    sget-object p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->LEFT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->RIGHT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-ne p1, p0, :cond_5

    .line 139
    :cond_1
    iget p0, p2, Landroid/graphics/Point;->y:I

    iget p1, p3, Landroid/graphics/Point;->y:I

    :goto_0
    sub-int/2addr p0, p1

    return p0

    .line 136
    :cond_2
    :goto_1
    iget p0, p3, Landroid/graphics/Point;->x:I

    iget p1, p2, Landroid/graphics/Point;->x:I

    goto :goto_0

    .line 142
    :cond_3
    sget-object p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->UP:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-eq p1, p0, :cond_7

    sget-object p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->DOWN:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-ne p1, p0, :cond_4

    goto :goto_3

    .line 145
    :cond_4
    sget-object p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->LEFT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-eq p1, p0, :cond_6

    sget-object p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->RIGHT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-ne p1, p0, :cond_5

    goto :goto_2

    :cond_5
    const/4 p0, 0x0

    return p0

    .line 146
    :cond_6
    :goto_2
    iget p0, p2, Landroid/graphics/Point;->x:I

    iget p1, p3, Landroid/graphics/Point;->x:I

    goto :goto_0

    .line 143
    :cond_7
    :goto_3
    iget p0, p2, Landroid/graphics/Point;->y:I

    iget p1, p3, Landroid/graphics/Point;->y:I

    goto :goto_0
.end method

.method private computeProgress(Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;Landroid/graphics/Point;Landroid/graphics/Point;)F
    .locals 1

    .line 122
    sget-object v0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->UP:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->DOWN:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 126
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->computeDistance(Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget p0, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mCameraSwitchDragFinishDistance:I

    :goto_0
    int-to-float p0, p0

    div-float/2addr p1, p0

    return p1

    .line 123
    :cond_1
    :goto_1
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->computeDistance(Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget p0, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mModeChangeDragFinishDistance:I

    goto :goto_0
.end method

.method private dragging(Landroid/graphics/Point;Landroid/graphics/Point;)Z
    .locals 4

    .line 95
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mIsDragging:Z

    if-eqz v0, :cond_3

    .line 96
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mDirection:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    invoke-direct {p0, v0, p1, p2}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->computeProgress(Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;Landroid/graphics/Point;Landroid/graphics/Point;)F

    move-result v0

    .line 97
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mDirection:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    invoke-direct {p0, v1, p1, p2}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->computeDistance(Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result v1

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->computeDirection(Landroid/graphics/Point;Landroid/graphics/Point;)Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    move-result-object v2

    .line 100
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->acceptNewDirection(Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    iput-object v2, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mDirection:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_1

    .line 105
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mDirection:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    invoke-virtual {p0, p1, v1, v0}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->sendProgressEvent(Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;IF)V

    goto :goto_0

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mDirection:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->LEFT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-eq v0, v1, :cond_2

    .line 108
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;->UP:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->finishDragging(Landroid/graphics/Point;Landroid/graphics/Point;Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;)Z

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private finishDragging(Landroid/graphics/Point;Landroid/graphics/Point;Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;)Z
    .locals 2

    .line 80
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mIsDragging:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 81
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mIsDragging:Z

    .line 83
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mDirection:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    invoke-direct {p0, v0, p1, p2}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->computeProgress(Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;Landroid/graphics/Point;Landroid/graphics/Point;)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-gez p1, :cond_1

    .line 84
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;->FLING:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;

    if-ne p3, p1, :cond_0

    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mDirection:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    sget-object p2, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->RIGHT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mDirection:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->sendCancelEvent(Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;)V

    goto :goto_1

    .line 85
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mDirection:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->sendFinishEvent(Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;)V

    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method private startDragging(Landroid/graphics/Point;Landroid/graphics/Point;)Z
    .locals 2

    .line 71
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mDragStartMargin:I

    if-le v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mIsDragging:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->canDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->computeDirection(Landroid/graphics/Point;Landroid/graphics/Point;)Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mDirection:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    .line 73
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->sendStartEvent(Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mIsDragging:Z

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected abstract canDragging()Z
.end method

.method public onDown(Landroid/view/MotionEvent;)V
    .locals 0

    .line 214
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->sendTouchDownEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onDragging(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 4

    .line 219
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-direct {v0, v1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 220
    new-instance p2, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p2, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 222
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const-string v1, " direction:"

    const-string v2, " isDragging:"

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "onDragging() E start:"

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, " end:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mIsDragging:Z

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mDirection:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    .line 226
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 222
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 228
    :cond_0
    invoke-direct {p0, p2, v0}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->dragging(Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result p1

    .line 230
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onDragging() X handled:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p2, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mIsDragging:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mDirection:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    .line 233
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 230
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onFinishDragging(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;)V
    .locals 2

    .line 257
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 258
    new-instance p1, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-direct {p1, v1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 260
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "onFinishDragging() E start:"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " end:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " reason:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 263
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " isDragging:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mIsDragging:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " direction:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mDirection:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    .line 265
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    .line 260
    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 267
    :cond_0
    invoke-direct {p0, p1, v0, p3}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->finishDragging(Landroid/graphics/Point;Landroid/graphics/Point;Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;)Z

    move-result p0

    .line 269
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onFinishDragging() X handled:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onStartDragging(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 4

    .line 238
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-direct {v0, v1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 239
    new-instance p2, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p2, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 241
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const-string v1, " direction:"

    const-string v2, " isDragging:"

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "onStartDragging() E start:"

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, " end:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mIsDragging:Z

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mDirection:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    .line 245
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 241
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 247
    :cond_0
    invoke-direct {p0, p2, v0}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->startDragging(Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result p1

    .line 249
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onStartDragging() X handled:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p2, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mIsDragging:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;->mDirection:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    .line 252
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 249
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected abstract sendCancelEvent(Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;)V
.end method

.method protected abstract sendFinishEvent(Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;)V
.end method

.method protected abstract sendProgressEvent(Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;IF)V
.end method

.method protected abstract sendStartEvent(Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;)Z
.end method

.method protected abstract sendTouchDownEvent(Landroid/view/MotionEvent;)V
.end method
