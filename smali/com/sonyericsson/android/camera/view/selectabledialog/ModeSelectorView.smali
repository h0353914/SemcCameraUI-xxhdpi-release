.class public Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;
.super Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;
.source "ModeSelectorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;
    }
.end annotation


# static fields
.field private static final COLUMN_NUM:I = 0x3


# instance fields
.field private mOnItemClickListener:Landroid/view/View$OnClickListener;

.field private mOnNewFeatureBarClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmOnItemClickListener(Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->mOnItemClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnNewFeatureBarClickListener(Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->mOnNewFeatureBarClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected addContent(Ljava/lang/String;Landroid/widget/ArrayAdapter;)V
    .locals 0

    .line 47
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->mArranges:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 49
    new-instance p1, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;

    invoke-direct {p1, p0, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;-><init>(Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;Landroid/widget/ArrayAdapter;)V

    .line 50
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->mArranges:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->addContentView(Landroid/view/View;)V

    .line 53
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    const/4 p2, -0x1

    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 54
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 56
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->mArranges:Ljava/util/List;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;

    .line 57
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;->updateItems(Landroid/widget/ArrayAdapter;)V

    :goto_0
    return-void
.end method

.method protected getInitialDisplayHeight()I
    .locals 1

    .line 68
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f07012a

    .line 69
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->calculateInitialDisplayHeight(I)I

    move-result p0

    return p0

    .line 71
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightLandscape:I

    return p0
.end method

.method protected getScrollableContentLength()I
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->mArranges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->mArranges:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;->computeArrangeHeight()I

    move-result v0

    .line 83
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->getInitialDisplayHeight()I

    move-result p0

    if-le p0, v0, :cond_2

    move v0, p0

    :cond_2
    :goto_0
    return v0
.end method

.method protected onInitializeScroll()V
    .locals 0

    return-void
.end method

.method protected setOnItemClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->mOnItemClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method protected setOnNewFeatureBarClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->mOnNewFeatureBarClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public updateDefaultScrollPosition()V
    .locals 2

    .line 96
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->getScrollStatus()Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->CLOSING:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    if-ne v0, v1, :cond_0

    return-void

    .line 100
    :cond_0
    invoke-super {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->updateDefaultScrollPosition()V

    return-void
.end method

.method public updateRotatableLayout(Landroid/view/ViewGroup;II)V
    .locals 5

    .line 105
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->mSomcScroller:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;

    .line 106
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 107
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget v0, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightPortrait:I

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget v0, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightLandscape:I

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 119
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 121
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_1

    .line 124
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    .line 125
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getNavigationBarMargin(Landroid/content/Context;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 128
    :goto_1
    iget v0, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 130
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget v1, v1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightPortrait:I

    goto :goto_2

    .line 131
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget v1, v1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightLandscape:I

    :goto_2
    sub-int v1, v0, v1

    .line 132
    iget v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->mBottomMarginHint:I

    add-int/2addr p3, v1

    sub-int/2addr v0, p3

    .line 133
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    const/4 v0, 0x0

    .line 132
    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 135
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->isPortrait()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 136
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget v2, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->leftMarginPortrait:I

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget v3, v3, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->rightMarginPortrait:I

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget v4, v4, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->bottomMarginPortrait:I

    invoke-virtual {p2, v2, v0, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 142
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->mSomcScroller:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget v0, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightPortrait:I

    .line 143
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->getInitialDisplayHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int/2addr v0, v1

    add-int/2addr v0, p3

    .line 142
    invoke-virtual {p2, v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->setViewMargin(I)V

    goto :goto_3

    .line 146
    :cond_3
    iget-object p3, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget p3, p3, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->leftMarginLandscape:I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget v1, v1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->bottomMarginLandscape:I

    invoke-virtual {p2, p3, v0, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 154
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->mSomcScroller:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;

    iget-object p3, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget p3, p3, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightLandscape:I

    .line 155
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->getInitialDisplayHeight()I

    move-result v0

    sub-int/2addr p3, v0

    .line 154
    invoke-virtual {p2, p3}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->setViewMargin(I)V

    .line 158
    :goto_3
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float p2, p2

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->setPivotX(F)V

    .line 159
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float p2, p2

    .line 160
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v0, v0

    div-float/2addr v0, p3

    sub-float/2addr p2, v0

    .line 159
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->setPivotY(F)V

    .line 161
    iget p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->mOrientation:I

    invoke-static {p2}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->setRotation(F)V

    .line 162
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 163
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    .line 162
    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 164
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget-object p2, p2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->horizontalGavity:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$HorizontalGravity;

    iget p2, p2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$HorizontalGravity;->value:I

    or-int/lit8 p2, p2, 0x50

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 166
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->requestLayout()V

    return-void
.end method
