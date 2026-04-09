.class public Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem$Value;
.super Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;
.source "TiffOutputItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Value"
.end annotation


# instance fields
.field private final bytes:[B

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem$Value;->name:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem$Value;->bytes:[B

    return-void
.end method


# virtual methods
.method public getItemDescription()Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem$Value;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getItemLength()I
    .locals 0

    .line 55
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem$Value;->bytes:[B

    array-length p0, p0

    return p0
.end method

.method public updateValue([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem$Value;->bytes:[B

    array-length v0, v0

    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 65
    new-instance v0, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updated data size mismatch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem$Value;->bytes:[B

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " vs. "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem$Value;->bytes:[B

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public writeItem(Lorg/apache/commons/imaging/common/BinaryOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 74
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem$Value;->bytes:[B

    invoke-virtual {p1, p0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write([B)V

    return-void
.end method
