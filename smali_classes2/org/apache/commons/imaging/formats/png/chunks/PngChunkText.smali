.class public Lorg/apache/commons/imaging/formats/png/chunks/PngChunkText;
.super Lorg/apache/commons/imaging/formats/png/chunks/PngTextChunk;
.source "PngChunkText.java"


# instance fields
.field public final keyword:Ljava/lang/String;

.field public final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(III[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/imaging/formats/png/chunks/PngTextChunk;-><init>(III[B)V

    .line 33
    invoke-static {p4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->findNull([B)I

    move-result p1

    if-ltz p1, :cond_1

    .line 39
    new-instance p2, Ljava/lang/String;

    const/4 p3, 0x0

    const-string v0, "ISO-8859-1"

    invoke-direct {p2, p4, p3, p1, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object p2, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkText;->keyword:Ljava/lang/String;

    .line 41
    array-length p3, p4

    add-int/lit8 p1, p1, 0x1

    sub-int/2addr p3, p1

    .line 42
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p4, p1, p3, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v1, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkText;->text:Ljava/lang/String;

    .line 44
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkText;->getDebug()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 45
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Keyword: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 46
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Text: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 35
    :cond_1
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "PNG tEXt chunk keyword is not terminated."

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getContents()Lorg/apache/commons/imaging/formats/png/PngText;
    .locals 2

    .line 68
    new-instance v0, Lorg/apache/commons/imaging/formats/png/PngText$Text;

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkText;->keyword:Ljava/lang/String;

    iget-object p0, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkText;->text:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/imaging/formats/png/PngText$Text;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkText;->keyword:Ljava/lang/String;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    .line 63
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkText;->text:Ljava/lang/String;

    return-object p0
.end method
