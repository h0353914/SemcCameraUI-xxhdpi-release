.class public Lorg/apache/commons/imaging/formats/tiff/TiffImageData$ByteSourceData;
.super Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Data;
.source "TiffImageData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/tiff/TiffImageData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByteSourceData"
.end annotation


# instance fields
.field byteSourceFile:Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;


# direct methods
.method public constructor <init>(JILorg/apache/commons/imaging/common/bytesource/ByteSourceFile;)V
    .locals 1

    const/4 v0, 0x0

    .line 161
    new-array v0, v0, [B

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Data;-><init>(JI[B)V

    .line 162
    iput-object p4, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$ByteSourceData;->byteSourceFile:Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 3

    .line 173
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$ByteSourceData;->byteSourceFile:Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;

    iget-wide v1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$ByteSourceData;->offset:J

    iget p0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$ByteSourceData;->length:I

    invoke-virtual {v0, v1, v2, p0}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;->getBlock(JI)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    .line 175
    new-array p0, p0, [B

    return-object p0
.end method

.method public getElementDescription(Z)Ljava/lang/String;
    .locals 1

    .line 167
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Tiff image data: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$ByteSourceData;->getDataLength()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " bytes"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
