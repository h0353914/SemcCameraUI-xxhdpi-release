.class public Lcom/sonyericsson/android/camera/view/baselayout/HighSensitivityFusionIndicator;
.super Ljava/lang/Object;
.source "HighSensitivityFusionIndicator.java"


# instance fields
.field private mListener:Landroid/view/View$OnClickListener;

.field private final mRootView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/HighSensitivityFusionIndicator;->mRootView:Landroid/view/ViewGroup;

    .line 36
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/HighSensitivityFusionIndicator;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0901b6

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 37
    new-instance v1, Lcom/sonyericsson/android/camera/view/baselayout/HighSensitivityFusionIndicator$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/HighSensitivityFusionIndicator$1;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/HighSensitivityFusionIndicator;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f0f0061

    .line 50
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 49
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/view/baselayout/HighSensitivityFusionIndicator;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/HighSensitivityFusionIndicator;->mListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method


# virtual methods
.method public getAnimationTarget()Landroid/view/View;
    .locals 1

    .line 125
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/HighSensitivityFusionIndicator;->mRootView:Landroid/view/ViewGroup;

    const v0, 0x7f0901b6

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public hide()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/HighSensitivityFusionIndicator;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 90
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/HighSensitivityFusionIndicator;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 62
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/HighSensitivityFusionIndicator;->mRootView:Landroid/view/ViewGroup;

    const v0, 0x7f0901b6

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    .line 63
    invoke-virtual {p0}, Landroid/widget/ImageView;->isActivated()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 64
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setActivated(Z)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 68
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/HighSensitivityFusionIndicator;->mRootView:Landroid/view/ViewGroup;

    const v0, 0x7f0901b6

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const p1, 0x7f080178

    .line 70
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f08017b

    .line 72
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public setListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/HighSensitivityFusionIndicator;->mListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setSensorOrientation(I)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/HighSensitivityFusionIndicator;->mRootView:Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setRotation(F)V

    .line 110
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/HighSensitivityFusionIndicator;->mRootView:Landroid/view/ViewGroup;

    const p1, 0x7f0901b6

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    .line 111
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x30

    .line 112
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 113
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public show()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/HighSensitivityFusionIndicator;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/HighSensitivityFusionIndicator;->mRootView:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method
