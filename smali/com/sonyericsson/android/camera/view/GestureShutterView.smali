.class public Lcom/sonyericsson/android/camera/view/GestureShutterView;
.super Landroid/view/View;
.source "GestureShutterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationState;,
        Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;,
        Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationStatusListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_PROGRESS_END:F = 1.0f

.field private static final ANIMATION_PROGRESS_START:F = 0.0f

.field private static final ARC_ANGLE_OFFSET:F = 45.0f

.field private static final ARC_NUM:I = 0x4

.field private static final CONFIRMING_DURATION_MILLIS:I = 0x64

.field private static final PROCEED_DURATION_MILLIS:I = 0xc8

.field private static final STARTING_ALPHA:F = 0.5f

.field private static final STROKE_COLOR:I = -0x1

.field private static final STROKE_WIDTH_DP:I = 0x4


# instance fields
.field private mAnimationDuration:I

.field private mAnimationListener:Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationStatusListener;

.field private final mCircleFrame:Landroid/graphics/RectF;

.field private mLastTimeStamp:J

.field private final mPaint:Landroid/graphics/Paint;

.field private mState:Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationState;

.field private mTimeProgress:F

.field private mType:Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 89
    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/android/camera/view/GestureShutterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/android/camera/view/GestureShutterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 97
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 p2, -0x1

    .line 57
    iput-wide p2, p0, Lcom/sonyericsson/android/camera/view/GestureShutterView;->mLastTimeStamp:J

    const/4 p2, 0x0

    .line 58
    iput p2, p0, Lcom/sonyericsson/android/camera/view/GestureShutterView;->mTimeProgress:F

    const/16 p2, 0xc8

    .line 59
    iput p2, p0, Lcom/sonyericsson/android/camera/view/GestureShutterView;->mAnimationDuration:I

    .line 61
    sget-object p2, Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationState;->IDLE:Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationState;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/GestureShutterView;->mState:Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationState;

    .line 62
    sget-object p2, Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;->NONE:Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/GestureShutterView;->mType:Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;

    .line 64
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/GestureShutterView;->mCircleFrame:Landroid/graphics/RectF;

    const/4 p2, 0x0

    .line 66
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/GestureShutterView;->mAnimationListener:Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationStatusListener;

    .line 98
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/GestureShutterView;->mPaint:Landroid/graphics/Paint;

    .line 99
    sget-object p0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 100
    sget-object p0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/4 p0, -0x1

    .line 101
    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    const/high16 p1, 0x40800000    # 4.0f

    mul-float/2addr p0, p1

    .line 103
    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private static calcConfirmingAlpha()I
    .locals 1

    const/16 v0, 0xff

    return v0
.end method


# virtual methods
.method protected onConfirmingFinished()V
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/GestureShutterView;->mAnimationListener:Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationStatusListener;

    if-eqz p0, :cond_0

    .line 185
    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationStatusListener;->handleConfirmingFinished()V

    :cond_0
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    monitor-enter p0

    .line 194
    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 199
    iget-wide v2, p0, Lcom/sonyericsson/android/camera/view/GestureShutterView;->mLastTimeStamp:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 200
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/GestureShutterView;->mState:Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationState;

    iget v2, v2, Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationState;->sign:I

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/sonyericsson/android/camera/view/GestureShutterView;->mLastTimeStamp:J

    sub-long v4, v0, v4

    mul-long/2addr v2, v4

    long-to-float v2, v2

    iget v3, p0, Lcom/sonyericsson/android/camera/view/GestureShutterView;->mAnimationDuration:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 202
    iget v3, p0, Lcom/sonyericsson/android/camera/view/GestureShutterView;->mTimeProgress:F

    add-float/2addr v3, v2

    iput v3, p0, Lcom/sonyericsson/android/camera/view/GestureShutterView;->mTimeProgress:F

    .line 205
    :cond_0
    iput-wide v0, p0, Lcom/sonyericsson/android/camera/view/GestureShutterView;->mLastTimeStamp:J

    .line 207
    iget v0, p0, Lcom/sonyericsson/android/camera/view/GestureShutterView;->mTimeProgress:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_1

    move v0, v1

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v2

    if-lez v3, :cond_2

    move v0, v2

    .line 214
    :cond_2
    sget-object v3, Lcom/sonyericsson/android/camera/view/GestureShutterView$1;->$SwitchMap$com$sonyericsson$android$camera$view$GestureShutterView$AnimationType:[I

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/GestureShutterView;->mType:Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v0, 0x2

    if-eq v3, v0, :cond_3

    goto :goto_1

    .line 229
    :cond_3
    invoke-static {}, Lcom/sonyericsson/android/camera/view/GestureShutterView;->calcConfirmingAlpha()I

    move-result v0

    .line 230
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/GestureShutterView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 231
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/GestureShutterView;->mCircleFrame:Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/sonyericsson/android/camera/view/GestureShutterView;->mPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    const/high16 v7, 0x43b40000    # 360.0f

    const/4 v8, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_4
    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v4, v0, v3

    add-float/2addr v3, v4

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v3, v5

    float-to-int v3, v3

    .line 217
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/GestureShutterView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v3, 0x0

    :goto_0
    const/4 v5, 0x4

    if-ge v3, v5, :cond_5

    int-to-float v5, v3

    sub-float/2addr v5, v4

    const/high16 v6, 0x42b40000    # 90.0f

    mul-float/2addr v5, v6

    const/high16 v7, 0x42340000    # 45.0f

    add-float v10, v5, v7

    mul-float/2addr v6, v0

    const v5, 0x3c23d70a    # 0.01f

    add-float v11, v6, v5

    .line 224
    iget-object v9, p0, Lcom/sonyericsson/android/camera/view/GestureShutterView;->mCircleFrame:Landroid/graphics/RectF;

    iget-object v13, p0, Lcom/sonyericsson/android/camera/view/GestureShutterView;->mPaint:Landroid/graphics/Paint;

    const/4 v12, 0x0

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 237
    :cond_5
    :goto_1
    iget p1, p0, Lcom/sonyericsson/android/camera/view/GestureShutterView;->mTimeProgress:F

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_7

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/GestureShutterView;->mState:Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationState;

    sget-object v0, Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationState;->PROCEEDING:Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationState;

    if-ne p1, v0, :cond_7

    .line 239
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/GestureShutterView;->mType:Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;

    .line 240
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/GestureShutterView;->reset()V

    .line 241
    sget-object v0, Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;->GROWING_CIRCLE:Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;

    if-ne p1, v0, :cond_6

    .line 242
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/GestureShutterView;->onProceedFinished()V

    goto :goto_2

    .line 243
    :cond_6
    sget-object v0, Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;->CONFRIMING:Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;

    if-ne p1, v0, :cond_9

    .line 244
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/GestureShutterView;->onConfirmingFinished()V

    goto :goto_2

    .line 246
    :cond_7
    iget p1, p0, Lcom/sonyericsson/android/camera/view/GestureShutterView;->mTimeProgress:F

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_8

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/GestureShutterView;->mState:Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationState;

    sget-object v0, Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationState;->REWINDING:Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationState;

    if-ne p1, v0, :cond_8

    .line 248
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/GestureShutterView;->reset()V

    .line 249
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/GestureShutterView;->onRewindFinished()V

    goto :goto_2

    .line 250
    :cond_8
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/GestureShutterView;->mState:Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationState;

    sget-object v0, Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationState;->IDLE:Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationState;

    if-eq p1, v0, :cond_9

    .line 251
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/GestureShutterView;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    :cond_9
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected onProceedFinished()V
    .locals 0

    .line 179
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/GestureShutterView;->mAnimationListener:Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationStatusListener;

    if-eqz p0, :cond_0

    .line 180
    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationStatusListener;->handleProceedFinished()V

    :cond_0
    return-void
.end method

.method protected onRewindFinished()V
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/GestureShutterView;->mAnimationListener:Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationStatusListener;

    if-eqz p0, :cond_0

    .line 175
    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationStatusListener;->handleRewindFinished()V

    :cond_0
    return-void
.end method

.method public declared-synchronized reset()V
    .locals 2

    monitor-enter p0

    .line 156
    :try_start_0
    sget-object v0, Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationState;->IDLE:Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/GestureShutterView;->mState:Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationState;

    .line 157
    sget-object v0, Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;->NONE:Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/GestureShutterView;->mType:Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;

    const-wide/16 v0, -0x1

    .line 158
    iput-wide v0, p0, Lcom/sonyericsson/android/camera/view/GestureShutterView;->mLastTimeStamp:J

    const/4 v0, 0x0

    .line 159
    iput v0, p0, Lcom/sonyericsson/android/camera/view/GestureShutterView;->mTimeProgress:F

    .line 160
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/GestureShutterView;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setListener(Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationStatusListener;)V
    .locals 0

    monitor-enter p0

    .line 170
    :try_start_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/GestureShutterView;->mAnimationListener:Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationStatusListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startConfirming()V
    .locals 2

    monitor-enter p0

    .line 144
    :try_start_0
    sget-object v0, Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationState;->PROCEEDING:Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/GestureShutterView;->mState:Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationState;

    .line 145
    sget-object v0, Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;->CONFRIMING:Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/GestureShutterView;->mType:Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;

    const-wide/16 v0, -0x1

    .line 146
    iput-wide v0, p0, Lcom/sonyericsson/android/camera/view/GestureShutterView;->mLastTimeStamp:J

    const/16 v0, 0x64

    .line 147
    iput v0, p0, Lcom/sonyericsson/android/camera/view/GestureShutterView;->mAnimationDuration:I

    .line 148
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/GestureShutterView;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startProceed(Landroid/graphics/RectF;)V
    .locals 2

    monitor-enter p0

    .line 120
    :try_start_0
    sget-object v0, Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationState;->PROCEEDING:Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/GestureShutterView;->mState:Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationState;

    .line 121
    sget-object v0, Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;->GROWING_CIRCLE:Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/GestureShutterView;->mType:Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;

    const-wide/16 v0, -0x1

    .line 122
    iput-wide v0, p0, Lcom/sonyericsson/android/camera/view/GestureShutterView;->mLastTimeStamp:J

    const/16 v0, 0xc8

    .line 123
    iput v0, p0, Lcom/sonyericsson/android/camera/view/GestureShutterView;->mAnimationDuration:I

    .line 124
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/GestureShutterView;->updateFrame(Landroid/graphics/RectF;)V

    .line 125
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/GestureShutterView;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startRewind()V
    .locals 2

    monitor-enter p0

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/GestureShutterView;->mType:Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;

    sget-object v1, Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;->GROWING_CIRCLE:Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;

    if-ne v0, v1, :cond_0

    .line 133
    sget-object v0, Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationState;->REWINDING:Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/GestureShutterView;->mState:Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationState;

    const-wide/16 v0, -0x1

    .line 134
    iput-wide v0, p0, Lcom/sonyericsson/android/camera/view/GestureShutterView;->mLastTimeStamp:J

    const/16 v0, 0xc8

    .line 135
    iput v0, p0, Lcom/sonyericsson/android/camera/view/GestureShutterView;->mAnimationDuration:I

    .line 136
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/GestureShutterView;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateFrame(Landroid/graphics/RectF;)V
    .locals 1

    monitor-enter p0

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/GestureShutterView;->mCircleFrame:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
