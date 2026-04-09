.class public Lorg/apache/commons/imaging/formats/png/chunks/PngChunkText;
.super Lorg/apache/commons/imaging/formats/png/chunks/PngTextChunk;
.source "PngChunkText.java"


# instance fields
.field public final keyword:Ljava/lang/String;

.field public final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(III[B)V
    .locals 1
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

    if-gez p1, :cond_0

    .line 35
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "PNG tEXt chunk keyword is not terminated."

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 39
    :cond_0
    new-instance p2, Ljava/lang/String;

    const/4 p3, 0x0

    const-string v0, "ISO-8859-1"

    invoke-direct {p2, p4, p3, p1, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object p2, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkText;->keyword:Ljava/lang/String;

    .line 41
    array-length p2, p4

    add-int/lit8 p1, p1, 0x1

    sub-int/2addr p2, p1

    .line 42
    new-instance p3, Ljava/lang/String;

    const-string v0, "ISO-8859-1"

    invoke-direct {p3, p4, p1, p2, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object p3, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkText;->text:Ljava/lang/String;

    .line 44
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkText;->getDebug()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 45
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Keyword: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkText;->keyword:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 46
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Text: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/commons/imaging/formats/png/chunks/PngChunkText;->text:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    return-void
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
