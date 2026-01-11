.class public Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
.super Ljava/lang/Object;
.source "RotatableDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;,
        Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "RotatableDialog"


# instance fields
.field private final mAnimationsForLand:I

.field private final mAnimationsForPort:I

.field private mDefaultPaddingRect:Landroid/graphics/Rect;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDialogWidthForLand:I

.field private mDialogWidthForPort:I

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mHalfDiffBetweenDisplayWidthAndHeight:I

.field private mOrientation:I

.field private mScrollableView:Landroid/view/View;

.field private mTempRect:Landroid/graphics/Rect;

.field private mWindow:Landroid/view/Window;


# direct methods
.method protected constructor <init>(Landroid/app/AlertDialog;)V
    .locals 1

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 177
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDefaultPaddingRect:Landroid/graphics/Rect;

    const/4 v0, 0x2

    .line 181
    iput v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mOrientation:I

    .line 182
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    .line 183
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mWindow:Landroid/view/Window;

    const/16 v0, 0x80

    .line 184
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const p1, 0x7f1001ad

    .line 187
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mAnimationsForLand:I

    const p1, 0x7f1001ae

    .line 189
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mAnimationsForPort:I

    return-void
.end method

.method private attachScrollableView()V
    .locals 7

    .line 282
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mScrollableView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mWindow:Landroid/view/Window;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 292
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 296
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 297
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 298
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    .line 299
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    .line 295
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 302
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mScrollableView:Landroid/view/View;

    .line 303
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 304
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 302
    invoke-virtual {v1, p0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 312
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 315
    instance-of v2, p0, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    .line 317
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 318
    check-cast p0, Landroid/view/View;

    goto :goto_0

    .line 321
    :cond_1
    check-cast p0, Landroid/widget/ScrollView;

    move-object v6, v0

    move-object v0, p0

    move-object p0, v6

    .line 327
    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    const/4 p0, -0x1

    .line 328
    invoke-virtual {v0, v1, p0, p0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;II)V

    :cond_2
    return-void
.end method

.method private calculateOutValue(III)I
    .locals 0

    if-ge p1, p2, :cond_0

    sub-int/2addr p1, p2

    goto :goto_0

    :cond_0
    if-ge p3, p1, :cond_1

    sub-int/2addr p1, p3

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private initialize()V
    .locals 6

    .line 227
    const-string v0, ""

    const-string v1, "%"

    const-string v2, "Fail to get width of dialog for each orientation."

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 228
    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 229
    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 232
    iget v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mOrientation:I

    invoke-direct {p0, v3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setWindowAnimations(I)V

    .line 234
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/cameracommon/utility/ViewUtility;->getDisplayRectSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v3

    .line 236
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 237
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDisplayWidth:I

    .line 238
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iput v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDisplayHeight:I

    goto :goto_0

    .line 242
    :cond_0
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDisplayWidth:I

    .line 243
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iput v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDisplayHeight:I

    .line 246
    :goto_0
    iget v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDisplayWidth:I

    iget v4, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDisplayHeight:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mHalfDiffBetweenDisplayWidthAndHeight:I

    .line 250
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050003

    .line 252
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x1050004

    .line 253
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 255
    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 256
    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 258
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v1, v3

    .line 259
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    div-float/2addr v0, v3

    .line 261
    iget v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDisplayWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v1, v3

    iput v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialogWidthForLand:I

    .line 262
    iget v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDisplayHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialogWidthForPort:I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 268
    invoke-static {v2, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 266
    invoke-static {v2, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v0

    .line 264
    invoke-static {v2, v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 272
    :goto_1
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->attachScrollableView()V

    return-void
.end method

.method private release()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 197
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 v1, 0x0

    .line 198
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 201
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    .line 202
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mWindow:Landroid/view/Window;

    .line 203
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mScrollableView:Landroid/view/View;

    return-void
.end method

.method private setWindowAnimations(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 212
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mWindow:Landroid/view/Window;

    iget p0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mAnimationsForPort:I

    invoke-virtual {p1, p0}, Landroid/view/Window;->setWindowAnimations(I)V

    goto :goto_0

    .line 214
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mWindow:Landroid/view/Window;

    iget p0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mAnimationsForLand:I

    invoke-virtual {p1, p0}, Landroid/view/Window;->setWindowAnimations(I)V

    :goto_0
    return-void
.end method

.method private updateLayout(I)V
    .locals 9

    .line 337
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 341
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setWindowAnimations(I)V

    .line 343
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 345
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x0

    .line 347
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 349
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 351
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDefaultPaddingRect:Landroid/graphics/Rect;

    if-nez v5, :cond_1

    .line 352
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDefaultPaddingRect:Landroid/graphics/Rect;

    .line 353
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 354
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDefaultPaddingRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 355
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDefaultPaddingRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 356
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDefaultPaddingRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    :cond_1
    const/4 v5, -0x2

    .line 361
    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v5, 0x11

    .line 362
    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 365
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v5

    .line 368
    sget-object v6, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v5, v6, :cond_4

    .line 370
    iget v5, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDisplayWidth:I

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne p1, v7, :cond_2

    .line 372
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDefaultPaddingRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDefaultPaddingRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDefaultPaddingRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDefaultPaddingRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, p1, v2, v5, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 375
    invoke-virtual {v3, v8}, Landroid/view/View;->setRotation(F)V

    .line 376
    invoke-virtual {v3, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 377
    iget p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialogWidthForPort:I

    iput p1, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 378
    iget p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDisplayHeight:I

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_2

    :cond_2
    const/high16 p1, 0x42b40000    # 90.0f

    .line 381
    invoke-virtual {v3, p1}, Landroid/view/View;->setRotation(F)V

    .line 382
    iget p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mHalfDiffBetweenDisplayWidthAndHeight:I

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {v3, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 383
    iget p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialogWidthForLand:I

    iget v5, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDisplayHeight:I

    if-le p1, v5, :cond_3

    .line 384
    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_0

    .line 386
    :cond_3
    iput p1, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 392
    :goto_0
    iget p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mHalfDiffBetweenDisplayWidthAndHeight:I

    .line 393
    invoke-virtual {v0, v2, p1, v2, p1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 396
    iget p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDisplayWidth:I

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_2

    .line 400
    :cond_4
    iget v5, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDisplayWidth:I

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne p1, v7, :cond_5

    .line 402
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDefaultPaddingRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDefaultPaddingRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDefaultPaddingRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDefaultPaddingRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, p1, v2, v5, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V

    const/high16 p1, 0x43870000    # 270.0f

    .line 405
    invoke-virtual {v3, p1}, Landroid/view/View;->setRotation(F)V

    .line 406
    iget p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mHalfDiffBetweenDisplayWidthAndHeight:I

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {v3, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 407
    iget p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialogWidthForPort:I

    iput p1, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 411
    iget p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDisplayWidth:I

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_2

    .line 413
    :cond_5
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 415
    invoke-virtual {v3, v8}, Landroid/view/View;->setRotation(F)V

    .line 416
    invoke-virtual {v3, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 417
    iget p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialogWidthForLand:I

    iget v2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDisplayHeight:I

    if-le p1, v2, :cond_6

    .line 418
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_1

    .line 420
    :cond_6
    iput p1, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 423
    :goto_1
    iget p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDisplayHeight:I

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 427
    :goto_2
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 428
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 574
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 575
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cancel Dialog: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 576
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->cancel()V

    :cond_1
    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 567
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 568
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Dismiss Dialog: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 569
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    return-void
.end method

.method public hide()V
    .locals 2

    .line 560
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 561
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Hide Dialog: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 562
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->hide()V

    :cond_1
    return-void
.end method

.method public isShowing()Z
    .locals 0

    .line 617
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz p0, :cond_0

    .line 618
    invoke-virtual {p0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isShown(Landroid/content/DialogInterface;)Z
    .locals 0

    .line 640
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 484
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 486
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 487
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 491
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->calculateOutValue(III)I

    move-result v1

    .line 492
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v2, v3, v4}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->calculateOutValue(III)I

    move-result v2

    if-nez v1, :cond_0

    if-eqz v2, :cond_4

    :cond_0
    if-lez v1, :cond_1

    .line 497
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    add-int/2addr v1, v3

    :cond_1
    if-lez v2, :cond_2

    .line 498
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    add-int/2addr v2, p1

    .line 500
    :cond_2
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    int-to-float p2, v1

    int-to-float v1, v2

    .line 501
    invoke-virtual {p1, p2, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 506
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 507
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 509
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    :cond_4
    return v0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    .line 453
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const v0, 0x1020002

    .line 454
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 455
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 456
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 458
    iget p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mOrientation:I

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->updateLayout(I)V

    .line 463
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/high16 p1, 0x20000

    invoke-virtual {p0, p1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 468
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->release()V

    return-void
.end method

.method public setCancelable(Z)V
    .locals 0

    .line 581
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz p0, :cond_0

    .line 582
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    :cond_0
    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 0

    .line 587
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz p0, :cond_0

    .line 588
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    :cond_0
    return-void
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .line 599
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz p0, :cond_0

    .line 600
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_0
    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .line 605
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz p0, :cond_0

    .line 606
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_0
    return-void
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
    .locals 0

    .line 593
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz p0, :cond_0

    .line 594
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 525
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mOrientation:I

    .line 526
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->updateLayout(I)V

    return-void
.end method

.method public setPositiveButtonEnabled(Z)V
    .locals 1

    .line 624
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz p0, :cond_0

    const/4 v0, -0x1

    .line 625
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 627
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setViewAsScrollable(Landroid/view/View;)V
    .locals 0

    .line 539
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mScrollableView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 543
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .line 549
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 550
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Show Dialog: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 555
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->initialize()V

    :cond_1
    return-void
.end method
