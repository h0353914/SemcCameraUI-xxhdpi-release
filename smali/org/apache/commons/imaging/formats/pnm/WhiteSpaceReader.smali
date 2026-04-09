.class Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;
.super Ljava/lang/Object;
.source "WhiteSpaceReader.java"


# instance fields
.field private final is:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;->is:Ljava/io/InputStream;

    return-void
.end method

.method private read()C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;->is:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    if-gez p0, :cond_0

    .line 32
    new-instance p0, Ljava/io/IOException;

    const-string v0, "PNM: Unexpected EOF"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    int-to-char p0, p0

    return p0
.end method


# virtual methods
.method public nextChar()C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;->read()C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_0

    :goto_0
    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    .line 42
    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;->read()C

    move-result v0

    goto :goto_0

    :cond_0
    return v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    :goto_0
    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;->read()C

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public readtoWhiteSpace()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;->nextChar()C

    move-result v0

    .line 51
    :goto_0
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;->nextChar()C

    move-result v0

    goto :goto_0

    .line 55
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    :goto_1
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 58
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;->nextChar()C

    move-result v0

    goto :goto_1

    .line 62
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
