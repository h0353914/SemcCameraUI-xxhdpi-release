.class public Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelView;
.super Lcom/sonyericsson/android/camera/view/modeselector/view/AbsPanelView;
.source "CapturingModePanelView.java"


# instance fields
.field private mSelectorIconHeight:I

.field private mSelectorIconView:Landroid/widget/ImageView;

.field private mSelectorIconWidth:I

.field protected mSelectorLabelView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getAppIconHeight()I
    .locals 0

    .line 57
    iget p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelView;->mSelectorIconHeight:I

    return p0
.end method

.method public getAppIconView()Landroid/widget/ImageView;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelView;->mSelectorIconView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getAppIconWidth()I
    .locals 0

    .line 52
    iget p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelView;->mSelectorIconWidth:I

    return p0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 27
    invoke-super {p0}, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsPanelView;->onFinishInflate()V

    const v0, 0x7f09013e

    .line 29
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelView;->mSelectorIconView:Landroid/widget/ImageView;

    .line 30
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelView;->mSelectorIconView:Landroid/widget/ImageView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 31
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelView;->mSelectorIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelView;->mSelectorIconWidth:I

    .line 32
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelView;->mSelectorIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelView;->mSelectorIconHeight:I

    const v0, 0x7f09013f

    .line 34
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelView;->mSelectorLabelView:Landroid/widget/TextView;

    .line 35
    sget-object v0, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelView;->REGULAR_ROBOTO:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    .line 36
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelView;->mSelectorLabelView:Landroid/widget/TextView;

    sget-object v0, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelView;->REGULAR_ROBOTO:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method public setItem(Lcom/sonyericsson/android/camera/view/modeselector/view/AbsPanelView$PanelAttributes;)V
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelView;->mSelectorLabelView:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsPanelView$PanelAttributes;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setUiOrientation(I)V
    .locals 0

    return-void
.end method
