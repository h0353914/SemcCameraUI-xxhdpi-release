.class public Lorg/apache/commons/imaging/formats/jpeg/segments/ComSegment;
.super Lorg/apache/commons/imaging/formats/jpeg/segments/GenericSegment;
.source "ComSegment.java"


# direct methods
.method public constructor <init>(IILjava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/jpeg/segments/GenericSegment;-><init>(IILjava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/imaging/formats/jpeg/segments/GenericSegment;-><init>(I[B)V

    return-void
.end method


# virtual methods
.method public getComment()[B
    .locals 0

    .line 37
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/segments/ComSegment;->getSegmentData()[B

    move-result-object p0

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .line 44
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/jpeg/segments/ComSegment;->getSegmentDataAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    :catch_0
    const-string p0, ""

    .line 47
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "COM ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
