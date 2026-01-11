.class public Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;
.super Lcom/sonyericsson/android/camera/view/baselayout/indicators/BaseIndicator;
.source "IconIndicator.java"


# instance fields
.field private mImageResourceId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/BaseIndicator;-><init>(Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 12
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->mImageResourceId:I

    return-void
.end method


# virtual methods
.method protected onUpdated(Landroid/view/View;ZI)V
    .locals 0

    .line 29
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/BaseIndicator;->onUpdated(Landroid/view/View;ZI)V

    .line 31
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->mImageResourceId:I

    const/4 p2, -0x1

    if-eq p0, p2, :cond_0

    .line 32
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->mImageResourceId:I

    return-void
.end method
