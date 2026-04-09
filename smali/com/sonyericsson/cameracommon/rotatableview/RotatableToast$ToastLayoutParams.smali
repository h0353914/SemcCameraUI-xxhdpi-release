.class public Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;
.super Ljava/lang/Object;
.source "RotatableToast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToastLayoutParams"
.end annotation


# instance fields
.field public final bottomContainer:Landroid/graphics/Rect;

.field public final topContainer:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;->topContainer:Landroid/graphics/Rect;

    .line 55
    iget-object p3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;->topContainer:Landroid/graphics/Rect;

    neg-int p1, p1

    div-int/lit8 p1, p1, 0x2

    neg-int p2, p2

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p3, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 56
    iput-object p4, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;->bottomContainer:Landroid/graphics/Rect;

    .line 57
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;->bottomContainer:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method
