.class Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;
.super Landroid/widget/LinearLayout;
.source "SemiAutoSeekBarView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$OnSemiAutoSeekBarChangeListener;,
        Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;
    }
.end annotation


# static fields
.field private static final FADE_ANIMATION_DURATION:J = 0x64L

.field private static final NON_TRACKING_POSITION:I = -0x1


# instance fields
.field private mArea:Landroid/view/View;

.field private mCurrentProgress:I

.field private mFadeAnimation:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;

.field private mIsAscending:Z

.field private mKnob:Landroid/view/View;

.field private mLastPositionY:F

.field private mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$OnSemiAutoSeekBarChangeListener;

.field private mMaximum:I

.field private mMinimum:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 43
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMinimum:I

    .line 31
    iput p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMaximum:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 32
    iput v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mLastPositionY:F

    .line 33
    iput p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mCurrentProgress:I

    const/4 p1, 0x1

    .line 38
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mIsAscending:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMinimum:I

    .line 31
    iput p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMaximum:I

    const/high16 p2, -0x40800000    # -1.0f

    .line 32
    iput p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mLastPositionY:F

    .line 33
    iput p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mCurrentProgress:I

    const/4 p1, 0x1

    .line 38
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mIsAscending:Z

    return-void
.end method

.method private convertPositionToProgress(F)I
    .locals 4

    .line 247
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->getStrokeRange()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v1, v1, v0

    if-gez v1, :cond_2

    .line 250
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mIsAscending:Z

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_0

    .line 251
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->getPadding()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p1, v1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mKnob:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr p1, v1

    goto :goto_0

    .line 253
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->getPadding()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mKnob:Landroid/view/View;

    .line 254
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    sub-float p1, v1, p1

    :goto_0
    div-float/2addr p1, v0

    float-to-double v0, p1

    .line 257
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    iget v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMinimum:I

    add-int/2addr p1, v0

    .line 258
    iget v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMaximum:I

    if-ge v0, p1, :cond_1

    .line 259
    iget p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMaximum:I

    goto :goto_1

    .line 260
    :cond_1
    iget v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMinimum:I

    if-ge p1, v0, :cond_3

    .line 261
    iget p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMinimum:I

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :cond_3
    :goto_1
    return p1
.end method

.method private convertProgressToPosition(I)F
    .locals 5

    .line 268
    iget v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMaximum:I

    if-ge v0, p1, :cond_0

    .line 269
    iget p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMaximum:I

    goto :goto_0

    .line 270
    :cond_0
    iget v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMinimum:I

    if-ge p1, v0, :cond_1

    .line 271
    iget p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMinimum:I

    .line 275
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->getStrokeRange()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v1, v1, v0

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x40000000    # 2.0f

    if-gtz v1, :cond_3

    .line 277
    iget v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMaximum:I

    iget v4, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMinimum:I

    sub-int/2addr v1, v4

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 278
    iget v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMinimum:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    div-float/2addr v0, v3

    sub-float/2addr p1, v0

    goto :goto_1

    .line 280
    :cond_2
    iget v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMinimum:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    goto :goto_1

    :cond_3
    move p1, v2

    .line 284
    :goto_1
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mIsAscending:Z

    if-nez v0, :cond_4

    .line 285
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->getPadding()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 286
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mKnob:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v3

    sub-float/2addr p1, p0

    goto :goto_2

    :cond_4
    mul-float/2addr p1, v2

    .line 289
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 290
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->getPadding()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 291
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mKnob:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v3

    sub-float/2addr p1, p0

    :goto_2
    return p1
.end method

.method private doProgress(FZ)V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mKnob:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setY(F)V

    .line 230
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->convertPositionToProgress(F)I

    move-result p1

    if-eqz p2, :cond_0

    .line 231
    iget v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mCurrentProgress:I

    if-eq v0, p1, :cond_1

    .line 232
    :cond_0
    iput p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mCurrentProgress:I

    .line 233
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$OnSemiAutoSeekBarChangeListener;

    if-eqz p1, :cond_1

    .line 234
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mArea:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    if-lez p1, :cond_1

    .line 235
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$OnSemiAutoSeekBarChangeListener;

    iget v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mCurrentProgress:I

    invoke-interface {p1, p0, v0, p2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$OnSemiAutoSeekBarChangeListener;->onProgressChanged(Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;IZ)V

    :cond_1
    return-void
.end method

.method private doStartTracking()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mArea:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 195
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$OnSemiAutoSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$OnSemiAutoSeekBarChangeListener;

    iget v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mCurrentProgress:I

    invoke-interface {v0, p0, v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$OnSemiAutoSeekBarChangeListener;->onStartTrackingTouch(Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;I)V

    :cond_0
    return-void
.end method

.method private doStopTracking()V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mArea:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 204
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$OnSemiAutoSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$OnSemiAutoSeekBarChangeListener;

    iget v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mCurrentProgress:I

    invoke-interface {v0, p0, v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$OnSemiAutoSeekBarChangeListener;->onStopTrackingTouch(Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;I)V

    :cond_0
    return-void
.end method

.method private doTracking(F)V
    .locals 3

    .line 212
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mKnob:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    .line 213
    iget v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mLastPositionY:F

    sub-float/2addr p1, v1

    add-float/2addr v0, p1

    .line 215
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->getPadding()I

    move-result p1

    int-to-float p1, p1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mKnob:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr p1, v1

    cmpg-float v1, v0, p1

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    .line 220
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->getPadding()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mKnob:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    move p1, v0

    :cond_1
    const/4 v0, 0x1

    .line 224
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->doProgress(FZ)V

    return-void
.end method

.method private getPadding()I
    .locals 1

    .line 242
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070181

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private getStrokeRange()F
    .locals 3

    .line 297
    iget v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMaximum:I

    iget v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMinimum:I

    if-gt v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->getPadding()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMaximum:I

    iget p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMinimum:I

    sub-int/2addr v1, p0

    int-to-float p0, v1

    div-float/2addr v0, p0

    return v0
.end method

.method private setProgress(I)V
    .locals 1

    .line 167
    iget v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMaximum:I

    if-ge v0, p1, :cond_0

    .line 168
    iget p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMaximum:I

    iput p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mCurrentProgress:I

    goto :goto_0

    .line 169
    :cond_0
    iget v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMinimum:I

    if-ge p1, v0, :cond_1

    .line 170
    iget p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMinimum:I

    iput p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mCurrentProgress:I

    goto :goto_0

    .line 172
    :cond_1
    iput p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mCurrentProgress:I

    .line 175
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->isAttachedToWindow()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 179
    :cond_2
    iget p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mCurrentProgress:I

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->convertProgressToPosition(I)F

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float v0, v0, p1

    if-gez v0, :cond_3

    const/4 v0, 0x0

    .line 181
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->doProgress(FZ)V

    :cond_3
    return-void
.end method

.method private startFadeEffectAnimation(Z)V
    .locals 6

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    const-wide/16 v3, 0x64

    .line 317
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mFadeAnimation:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mFadeAnimation:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;->access$000(Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 318
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mFadeAnimation:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;->cancel()V

    .line 319
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mFadeAnimation:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;->access$100(Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;)F

    move-result v2

    if-eqz p1, :cond_2

    sub-float/2addr v1, v2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    const/high16 p1, 0x42c80000    # 100.0f

    mul-float/2addr p1, v2

    float-to-long v3, p1

    goto :goto_2

    :cond_3
    move v1, v2

    .line 324
    :goto_2
    new-instance p1, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;

    const/4 v2, 0x0

    invoke-direct {p1, v1, v0, v2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;-><init>(FFLcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$1;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mFadeAnimation:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;

    .line 326
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mFadeAnimation:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;

    invoke-virtual {p1, v3, v4}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;->setDuration(J)V

    .line 328
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mFadeAnimation:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    .line 135
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v1, v0, :cond_0

    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mFadeAnimation:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mFadeAnimation:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;->cancel()V

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mFadeAnimation:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;

    .line 143
    :cond_1
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->setVisibility(I)V

    return-void
.end method

.method public moveToCenterProgress()V
    .locals 2

    .line 304
    iget v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMinimum:I

    iget v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMaximum:I

    if-ge v0, v1, :cond_0

    .line 305
    iget v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMaximum:I

    iget v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMinimum:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 306
    iget v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mCurrentProgress:I

    if-eq v1, v0, :cond_0

    .line 307
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 52
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    const v0, 0x7f09014f

    .line 54
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mArea:Landroid/view/View;

    .line 55
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mArea:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f090150

    .line 57
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mKnob:Landroid/view/View;

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 62
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->getVisibility()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 66
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 67
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 73
    :pswitch_0
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mArea:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->isPressed()Z

    move-result p2

    if-nez p2, :cond_1

    return v0

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/CameraActivity;->restartAutoPowerOffTimer()V

    .line 77
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->doTracking(F)V

    .line 78
    iput p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mLastPositionY:F

    goto :goto_0

    .line 83
    :pswitch_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->doStopTracking()V

    const/high16 p1, -0x40800000    # -1.0f

    .line 84
    iput p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mLastPositionY:F

    goto :goto_0

    .line 69
    :pswitch_2
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->doStartTracking()V

    .line 70
    iput p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mLastPositionY:F

    :goto_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->doStopTracking()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 97
    iput v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mLastPositionY:F

    .line 99
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public setAscending(Z)V
    .locals 0

    .line 190
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mIsAscending:Z

    return-void
.end method

.method public setMaximum(I)V
    .locals 0

    .line 155
    iput p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMaximum:I

    return-void
.end method

.method public setMinimum(I)V
    .locals 0

    .line 159
    iput p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mMinimum:I

    return-void
.end method

.method public setOnSemiAutoSeekBarChangeListener(Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$OnSemiAutoSeekBarChangeListener;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mListener:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$OnSemiAutoSeekBarChangeListener;

    return-void
.end method

.method public setSeekBarResource(I)V
    .locals 1

    const v0, 0x7f09014f

    .line 186
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public setTextForAccessibility(I)V
    .locals 1

    .line 163
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setUiOrientation(I)V
    .locals 0

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 104
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->getVisibility()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 108
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mArea:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mArea:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 112
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->doStopTracking()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 113
    iput v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mLastPositionY:F

    .line 116
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public show(Z)V
    .locals 1

    .line 120
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 123
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->setVisibility(I)V

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 125
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->startFadeEffectAnimation(Z)V

    goto :goto_0

    .line 127
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mFadeAnimation:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;

    if-eqz p1, :cond_2

    .line 128
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mFadeAnimation:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;->cancel()V

    const/4 p1, 0x0

    .line 129
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView;->mFadeAnimation:Lcom/sonyericsson/android/camera/view/overlaycontrol/semiauto/SemiAutoSeekBarView$SemiAutoViewFadeAnimation;

    :cond_2
    :goto_0
    return-void
.end method
