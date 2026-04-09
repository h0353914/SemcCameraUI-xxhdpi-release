.class public Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;
.super Ljava/lang/Object;
.source "Indicator.java"


# instance fields
.field protected mOn:Z

.field protected final mView:Landroid/widget/ImageView;

.field protected mVisible:Z


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->mView:Landroid/widget/ImageView;

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->mOn:Z

    .line 17
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->mVisible:Z

    .line 18
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->update()V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->mVisible:Z

    .line 32
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->update()V

    return-void
.end method

.method public set(Z)V
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->mOn:Z

    .line 37
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->update()V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->mView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setSensorOrientation(I)V
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->mView:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setRotation(F)V

    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->mVisible:Z

    .line 27
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->update()V

    return-void
.end method

.method protected update()V
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->mOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->mVisible:Z

    if-eqz v0, :cond_0

    .line 46
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->mView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 48
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->mView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method
