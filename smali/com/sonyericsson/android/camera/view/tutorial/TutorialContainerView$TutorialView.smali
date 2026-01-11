.class public final Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;
.super Landroid/widget/RelativeLayout;
.source "TutorialContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TutorialView"
.end annotation


# static fields
.field private static final ANGLE_PORTRAIT_DEGREE:I = -0x5a


# instance fields
.field private mContent:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

.field private mContentView:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;

.field private mOnClickCloseButtonListener:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private alignView(Landroid/view/View;III)V
    .locals 0

    const/16 p0, -0x5a

    if-ne p4, p0, :cond_0

    int-to-float p0, p2

    .line 293
    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 295
    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    :goto_0
    return-void
.end method

.method private attachContentView(I)Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;
    .locals 2

    .line 214
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 215
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->getChildCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 217
    const-class v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->removeAllViews()V

    const/4 p0, 0x0

    return-object p0

    .line 222
    :cond_0
    check-cast p1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;

    return-object p1
.end method

.method private onLayoutToLandscape()V
    .locals 9

    .line 229
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->mContent:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    iget v0, v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;->mLayoutId:I

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->attachContentView(I)Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->mContentView:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;

    if-nez v0, :cond_0

    return-void

    .line 235
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    .line 236
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 237
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 240
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getNavigationBarMargin(Landroid/content/Context;)I

    move-result v0

    sub-int v4, v1, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p0

    .line 242
    invoke-direct/range {v2 .. v8}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->setCustomParameters(Landroid/view/View;IIIII)V

    .line 244
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->mContentView:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->mContent:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;->setContent(Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;)V

    .line 245
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->mContentView:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->mOnClickCloseButtonListener:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;->setOnClickCloseButtonListener(Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;)V

    return-void
.end method

.method private onLayoutToPortrait()V
    .locals 8

    .line 252
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->mContent:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    iget v0, v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;->mLayoutId:I

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->attachContentView(I)Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->mContentView:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;

    if-nez v0, :cond_0

    return-void

    .line 258
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 260
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 263
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getNavigationBarMargin(Landroid/content/Context;)I

    move-result v1

    sub-int v4, v0, v1

    const/4 v6, 0x0

    const/16 v7, -0x5a

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p0

    .line 265
    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->setCustomParameters(Landroid/view/View;IIIII)V

    .line 267
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->mContentView:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->mContent:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;->setContent(Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;)V

    .line 268
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->mContentView:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->mOnClickCloseButtonListener:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;->setOnClickCloseButtonListener(Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;)V

    return-void
.end method

.method private setCustomParameters(Landroid/view/View;IIIII)V
    .locals 1

    .line 276
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 277
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 278
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 280
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    int-to-float p2, p4

    .line 281
    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    int-to-float p2, p5

    .line 282
    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotY(F)V

    int-to-float p2, p6

    .line 283
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    .line 285
    iget p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0, p1, p2, p3, p6}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->alignView(Landroid/view/View;III)V

    return-void
.end method


# virtual methods
.method protected getContent()Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->mContent:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    return-object p0
.end method

.method public getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->mContentView:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 99
    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/graphics/Rect;->set(IIII)V

    return p0

    .line 104
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result p0

    return p0
.end method

.method protected isPortrait()Z
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->mContent:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;->isPortrait()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected release()V
    .locals 1

    .line 202
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->removeAllViews()V

    const/4 v0, 0x0

    .line 203
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->mContentView:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;

    .line 204
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->mContent:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    return-void
.end method

.method protected setContent(Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;)Z
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->mContent:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;->equalsWith(Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 145
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->mContent:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    if-eqz p1, :cond_3

    .line 148
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;->isPortrait()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 149
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->onLayoutToPortrait()V

    goto :goto_0

    .line 151
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->onLayoutToLandscape()V

    .line 154
    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->mContentView:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;

    if-nez p0, :cond_2

    return v1

    .line 158
    :cond_2
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;->setVisibility(I)V

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method protected setOnClickCloseButtonListener(Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->mContent:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    if-nez v0, :cond_0

    return-void

    .line 120
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->mOnClickCloseButtonListener:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;

    .line 122
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->mContentView:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;

    if-eqz p0, :cond_1

    .line 123
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;->setOnClickCloseButtonListener(Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;)V

    :cond_1
    return-void
.end method

.method protected setUiOrientation(I)V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->mContent:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    if-nez v0, :cond_0

    return-void

    .line 187
    :cond_0
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;->changeOrientation(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 189
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->removeAllViews()V

    .line 190
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->mContent:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;->isPortrait()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 191
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->onLayoutToPortrait()V

    goto :goto_0

    .line 193
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;->onLayoutToLandscape()V

    :cond_2
    :goto_0
    return-void
.end method
