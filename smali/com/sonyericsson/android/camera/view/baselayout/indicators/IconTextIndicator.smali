.class public Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;
.super Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;
.source "IconTextIndicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TEXT_VISIBLE_DURATION:J = 0x7d0L


# instance fields
.field private mOrientation:I

.field private final mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;-><init>(Landroid/widget/ImageView;)V

    .line 26
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->mText:Landroid/widget/TextView;

    .line 27
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->update()V

    return-void
.end method

.method private isLandscape()Z
    .locals 1

    .line 57
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->mOrientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->mText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->mText:Landroid/widget/TextView;

    .line 63
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->mText:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setSensorOrientation(I)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->setSensorOrientation(I)V

    .line 36
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->mOrientation:I

    .line 37
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->update()V

    return-void
.end method

.method public setTextResource(I)V
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->mText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method protected update()V
    .locals 3

    .line 42
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->update()V

    .line 44
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->mText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 47
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->mOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->mVisible:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->mText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 49
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->mText:Landroid/widget/TextView;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 51
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->mText:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
