.class public abstract Lcom/qualcomm/qti/snpe/TF8UserBufferTensor;
.super Lcom/qualcomm/qti/snpe/UserBufferTensor;
.source "TF8UserBufferTensor.java"


# static fields
.field public static final TF8_MAX_VAL:I = 0xff

.field public static final TF8_MIN_VAL:I


# direct methods
.method protected constructor <init>(I[I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/qti/snpe/UserBufferTensor;-><init>(I[I)V

    return-void
.end method


# virtual methods
.method public getEncoding()Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;
    .locals 0

    .line 30
    sget-object p0, Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;->TF8:Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;

    return-object p0
.end method

.method public getMax()F
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/qualcomm/qti/snpe/TF8UserBufferTensor;->getQuantizedStepSize()F

    move-result v0

    invoke-virtual {p0}, Lcom/qualcomm/qti/snpe/TF8UserBufferTensor;->getStepExactly0()I

    move-result p0

    rsub-int p0, p0, 0xff

    int-to-float p0, p0

    mul-float/2addr v0, p0

    return v0
.end method

.method public getMin()F
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/qualcomm/qti/snpe/TF8UserBufferTensor;->getQuantizedStepSize()F

    move-result v0

    invoke-virtual {p0}, Lcom/qualcomm/qti/snpe/TF8UserBufferTensor;->getStepExactly0()I

    move-result p0

    rsub-int/lit8 p0, p0, 0x0

    int-to-float p0, p0

    mul-float/2addr v0, p0

    return v0
.end method

.method public abstract getQuantizedStepSize()F
.end method

.method public abstract getStepExactly0()I
.end method
