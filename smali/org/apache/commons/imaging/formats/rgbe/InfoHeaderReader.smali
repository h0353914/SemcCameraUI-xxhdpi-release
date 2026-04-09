.class Lorg/apache/commons/imaging/formats/rgbe/InfoHeaderReader;
.super Ljava/lang/Object;
.source "InfoHeaderReader.java"


# instance fields
.field private final is:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/rgbe/InfoHeaderReader;->is:Ljava/io/InputStream;

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
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/rgbe/InfoHeaderReader;->is:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    if-gez p0, :cond_0

    .line 32
    new-instance p0, Ljava/io/IOException;

    const-string v0, "HDR: Unexpected EOF"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    int-to-char p0, p0

    return p0
.end method


# virtual methods
.method public readNextLine()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    :goto_0
    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/rgbe/InfoHeaderReader;->read()C

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
