.class Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeCollection$CaptureTypeCode;
.super Ljava/lang/Object;
.source "CapturingModeCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CaptureTypeCode"
.end annotation


# static fields
.field static final PHOTO:I = 0x1

.field static final VIDEO:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static toCaptureType(I)Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 213
    sget-object p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;->Photo:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 216
    sget-object p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;->Video:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;

    return-object p0

    .line 219
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method static toCode(Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;)I
    .locals 1

    .line 200
    sget-object v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;->Photo:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 203
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;->Video:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    return p0

    .line 207
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
