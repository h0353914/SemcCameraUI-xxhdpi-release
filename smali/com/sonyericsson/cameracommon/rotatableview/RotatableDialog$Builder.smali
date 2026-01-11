.class public Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
.super Landroid/app/AlertDialog$Builder;
.source "RotatableDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mIsCancelable:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;

.field private mIsCancelableOnTouchOutside:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;

.field protected mScrollableView:Landroid/view/View;

.field private mSensorOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 55
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->mScrollableView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public createRotatableDialog()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 5

    .line 122
    invoke-super {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 123
    new-instance v1, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-direct {v1, v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;-><init>(Landroid/app/AlertDialog;)V

    .line 124
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->mScrollableView:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setViewAsScrollable(Landroid/view/View;)V

    .line 127
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->mIsCancelable:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;

    sget-object v2, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;->USE_DEFAULT:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v2, :cond_1

    .line 128
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->mIsCancelable:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;

    sget-object v2, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;->TRUE:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;

    if-ne v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setCancelable(Z)V

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->mIsCancelableOnTouchOutside:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;

    sget-object v2, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;->USE_DEFAULT:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;

    if-eq v0, v2, :cond_3

    .line 131
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->mIsCancelableOnTouchOutside:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;

    sget-object v2, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;->TRUE:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    .line 132
    :goto_1
    invoke-virtual {v1, v3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setCanceledOnTouchOutside(Z)V

    .line 136
    :cond_3
    iget p0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->mSensorOrientation:I

    invoke-virtual {v1, p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOrientation(I)V

    return-object v1
.end method

.method public setAlertIcon()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    .locals 1

    const v0, 0x1080027

    .line 89
    invoke-super {p0, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    return-object p0
.end method

.method public setCancelable(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->mIsCancelable:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;

    .line 113
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->mIsCancelableOnTouchOutside:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Cancelable;

    return-object p0
.end method

.method public setOrientation(I)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    .locals 0

    .line 100
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->mSensorOrientation:I

    return-object p0
.end method

.method public setViewAsScrollable(Landroid/view/View;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog$Builder;->mScrollableView:Landroid/view/View;

    return-object p0
.end method
