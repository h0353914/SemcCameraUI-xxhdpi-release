.class public Lorg/apache/commons/imaging/formats/psd/ImageContents;
.super Ljava/lang/Object;
.source "ImageContents.java"


# instance fields
.field public final ColorModeDataLength:I

.field public final Compression:I

.field public final ImageResourcesLength:I

.field public final LayerAndMaskDataLength:I

.field public final header:Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;


# direct methods
.method public constructor <init>(Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;IIII)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/psd/ImageContents;->header:Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;

    .line 36
    iput p2, p0, Lorg/apache/commons/imaging/formats/psd/ImageContents;->ColorModeDataLength:I

    .line 37
    iput p3, p0, Lorg/apache/commons/imaging/formats/psd/ImageContents;->ImageResourcesLength:I

    .line 38
    iput p4, p0, Lorg/apache/commons/imaging/formats/psd/ImageContents;->LayerAndMaskDataLength:I

    .line 39
    iput p5, p0, Lorg/apache/commons/imaging/formats/psd/ImageContents;->Compression:I

    return-void
.end method


# virtual methods
.method public dump()V
    .locals 4

    .line 43
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 44
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/psd/ImageContents;->dump(Ljava/io/PrintWriter;)V

    .line 45
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 5

    .line 49
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 50
    const-string v1, "ImageContents"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Compression: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/apache/commons/imaging/formats/psd/ImageContents;->Compression:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lorg/apache/commons/imaging/formats/psd/ImageContents;->Compression:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "ColorModeDataLength: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lorg/apache/commons/imaging/formats/psd/ImageContents;->ColorModeDataLength:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lorg/apache/commons/imaging/formats/psd/ImageContents;->ColorModeDataLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "ImageResourcesLength: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lorg/apache/commons/imaging/formats/psd/ImageContents;->ImageResourcesLength:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lorg/apache/commons/imaging/formats/psd/ImageContents;->ImageResourcesLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "LayerAndMaskDataLength: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lorg/apache/commons/imaging/formats/psd/ImageContents;->LayerAndMaskDataLength:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p0, p0, Lorg/apache/commons/imaging/formats/psd/ImageContents;->LayerAndMaskDataLength:I

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method
