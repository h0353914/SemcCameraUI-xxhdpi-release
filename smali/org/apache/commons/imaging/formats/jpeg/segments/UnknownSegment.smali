.class public Lorg/apache/commons/imaging/formats/jpeg/segments/UnknownSegment;
.super Lorg/apache/commons/imaging/formats/jpeg/segments/GenericSegment;
.source "UnknownSegment.java"


# direct methods
.method public constructor <init>(IILjava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/jpeg/segments/GenericSegment;-><init>(IILjava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/imaging/formats/jpeg/segments/GenericSegment;-><init>(I[B)V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/segments/UnknownSegment;->getSegmentType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
