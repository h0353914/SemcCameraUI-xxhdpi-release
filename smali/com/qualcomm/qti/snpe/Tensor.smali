.class public abstract Lcom/qualcomm/qti/snpe/Tensor;
.super Ljava/lang/Object;
.source "Tensor.java"


# instance fields
.field private final mShape:[I


# direct methods
.method protected varargs constructor <init>([I)V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/qualcomm/qti/snpe/Tensor;->mShape:[I

    const/4 p0, 0x0

    .line 22
    array-length v1, p1

    invoke-static {p1, p0, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public getShape()[I
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/qualcomm/qti/snpe/Tensor;->mShape:[I

    return-object p0
.end method

.method public getSize()I
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/qualcomm/qti/snpe/Tensor;->mShape:[I

    invoke-static {p0}, Lcom/qualcomm/qti/snpe/internal/TensorUtil;->sizeOf([I)I

    move-result p0

    return p0
.end method

.method public abstract release()V
.end method
