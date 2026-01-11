.class Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag$MpEntry;
.super Ljava/lang/Object;
.source "MpoTag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MpEntry"
.end annotation


# static fields
.field static final SIZE:I = 0x10


# instance fields
.field private mDependantImage1:S

.field private mDependantImage2:S

.field private mImageAttrib:I

.field private mImageOffset:I

.field private mImageSize:I


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    .line 84
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag$MpEntry;-><init>(IIISS)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .line 88
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag$MpEntry;-><init>(IIISS)V

    return-void
.end method

.method public constructor <init>(IIISS)V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput p1, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag$MpEntry;->mImageAttrib:I

    .line 94
    iput p2, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag$MpEntry;->mImageSize:I

    .line 95
    iput p3, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag$MpEntry;->mImageOffset:I

    .line 96
    iput-short p4, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag$MpEntry;->mDependantImage1:S

    .line 97
    iput-short p5, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag$MpEntry;->mDependantImage2:S

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag$MpEntry;->mImageAttrib:I

    .line 102
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag$MpEntry;->mImageSize:I

    .line 103
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag$MpEntry;->mImageOffset:I

    .line 104
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag$MpEntry;->mDependantImage1:S

    .line 105
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    iput-short p1, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag$MpEntry;->mDependantImage2:S

    return-void
.end method


# virtual methods
.method public getBytes(Ljava/nio/ByteBuffer;)Z
    .locals 1

    .line 150
    :try_start_0
    iget v0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag$MpEntry;->mImageAttrib:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 151
    iget v0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag$MpEntry;->mImageSize:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 152
    iget v0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag$MpEntry;->mImageOffset:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 153
    iget-short v0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag$MpEntry;->mDependantImage1:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 154
    iget-short p0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag$MpEntry;->mDependantImage2:S

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    .line 156
    :catch_0
    const-string p0, "MpoTag"

    const-string p1, "Buffer size too small"

    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public getDependantImage1()S
    .locals 0

    .line 121
    iget-short p0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag$MpEntry;->mDependantImage1:S

    return p0
.end method

.method public getDependantImage2()S
    .locals 0

    .line 125
    iget-short p0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag$MpEntry;->mDependantImage2:S

    return p0
.end method

.method public getImageAttrib()I
    .locals 0

    .line 109
    iget p0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag$MpEntry;->mImageAttrib:I

    return p0
.end method

.method public getImageOffset()I
    .locals 0

    .line 117
    iget p0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag$MpEntry;->mImageOffset:I

    return p0
.end method

.method public getImageSize()I
    .locals 0

    .line 113
    iget p0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag$MpEntry;->mImageSize:I

    return p0
.end method

.method public setDependantImage1(S)V
    .locals 0

    .line 141
    iput-short p1, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag$MpEntry;->mDependantImage1:S

    return-void
.end method

.method public setDependantImage2(S)V
    .locals 0

    .line 145
    iput-short p1, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag$MpEntry;->mDependantImage2:S

    return-void
.end method

.method public setImageAttrib(I)V
    .locals 0

    .line 129
    iput p1, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag$MpEntry;->mImageAttrib:I

    return-void
.end method

.method public setImageOffset(I)V
    .locals 0

    .line 137
    iput p1, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag$MpEntry;->mImageOffset:I

    return-void
.end method

.method public setImageSize(I)V
    .locals 0

    .line 133
    iput p1, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag$MpEntry;->mImageSize:I

    return-void
.end method
