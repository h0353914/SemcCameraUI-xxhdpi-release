.class public Lorg/apache/commons/imaging/common/BinaryFileParser;
.super Ljava/lang/Object;
.source "BinaryFileParser.java"


# instance fields
.field private byteOrder:Ljava/nio/ByteOrder;

.field private debug:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lorg/apache/commons/imaging/common/BinaryFileParser;->byteOrder:Ljava/nio/ByteOrder;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteOrder;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 30
    iput-object p1, p0, Lorg/apache/commons/imaging/common/BinaryFileParser;->byteOrder:Ljava/nio/ByteOrder;

    return-void
.end method


# virtual methods
.method protected final debugNumber(Ljava/io/PrintWriter;Ljava/lang/String;II)V
    .locals 4

    .line 63
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, ": "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " ("

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p0, 0x0

    move p2, p3

    .line 65
    :goto_0
    const-string v0, "]"

    if-ge p0, p4, :cond_1

    if-lez p0, :cond_0

    .line 67
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    and-int/lit16 v1, p2, 0xff

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    int-to-char v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    shr-int/lit8 p2, p2, 0x8

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 73
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, ") [0x"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, ", "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method protected final debugNumber(Ljava/lang/String;II)V
    .locals 4

    .line 57
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 58
    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/apache/commons/imaging/common/BinaryFileParser;->debugNumber(Ljava/io/PrintWriter;Ljava/lang/String;II)V

    .line 59
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public getByteOrder()Ljava/nio/ByteOrder;
    .locals 0

    .line 45
    iget-object p0, p0, Lorg/apache/commons/imaging/common/BinaryFileParser;->byteOrder:Ljava/nio/ByteOrder;

    return-object p0
.end method

.method public getDebug()Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lorg/apache/commons/imaging/common/BinaryFileParser;->debug:Z

    return p0
.end method

.method protected setByteOrder(Ljava/nio/ByteOrder;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lorg/apache/commons/imaging/common/BinaryFileParser;->byteOrder:Ljava/nio/ByteOrder;

    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lorg/apache/commons/imaging/common/BinaryFileParser;->debug:Z

    return-void
.end method
