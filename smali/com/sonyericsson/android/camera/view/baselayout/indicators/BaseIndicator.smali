.class public Lcom/sonyericsson/android/camera/view/baselayout/indicators/BaseIndicator;
.super Ljava/lang/Object;
.source "BaseIndicator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BaseIndicator"


# instance fields
.field private final mDebugName:Ljava/lang/String;

.field private mOn:Z

.field private mOrientation:I

.field private mView:Landroid/view/View;

.field private mViewStub:Landroid/view/ViewStub;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/BaseIndicator;->mDebugName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/BaseIndicator;->mViewStub:Landroid/view/ViewStub;

    .line 36
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/BaseIndicator;->mView:Landroid/view/View;

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/BaseIndicator;->mOn:Z

    .line 38
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/BaseIndicator;->mVisible:Z

    .line 39
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/BaseIndicator;->mOrientation:I

    return-void
.end method

.method private initViews()Z
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/BaseIndicator;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/BaseIndicator;->mViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/BaseIndicator;->mView:Landroid/view/View;

    .line 58
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/BaseIndicator;->mView:Landroid/view/View;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private update()V
    .locals 3

    .line 106
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/BaseIndicator;->mOn:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/BaseIndicator;->mVisible:Z

    if-eqz v0, :cond_1

    .line 107
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/BaseIndicator;->initViews()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/BaseIndicator;->mView:Landroid/view/View;

    const/4 v1, 0x1

    iget v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/BaseIndicator;->mOrientation:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/BaseIndicator;->onUpdated(Landroid/view/View;ZI)V

    goto :goto_0

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/BaseIndicator;->mView:Landroid/view/View;

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x0

    .line 116
    iget v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/BaseIndicator;->mOrientation:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/BaseIndicator;->onUpdated(Landroid/view/View;ZI)V

    :goto_0
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/BaseIndicator;->mVisible:Z

    .line 76
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/BaseIndicator;->update()V

    return-void
.end method

.method protected onUpdated(Landroid/view/View;ZI)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    .line 129
    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 130
    invoke-static {p3}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method public set(Z)V
    .locals 0

    .line 86
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/BaseIndicator;->mOn:Z

    .line 87
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/BaseIndicator;->update()V

    return-void
.end method

.method public setSensorOrientation(I)V
    .locals 0

    .line 97
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/BaseIndicator;->mOrientation:I

    .line 98
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/BaseIndicator;->update()V

    return-void
.end method

.method public setup(Landroid/view/ViewStub;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/BaseIndicator;->mViewStub:Landroid/view/ViewStub;

    .line 50
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/BaseIndicator;->update()V

    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/BaseIndicator;->mVisible:Z

    .line 67
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/BaseIndicator;->update()V

    return-void
.end method
