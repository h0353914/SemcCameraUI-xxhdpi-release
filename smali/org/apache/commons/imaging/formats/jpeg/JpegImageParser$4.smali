.class Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$4;
.super Ljava/lang/Object;
.source "JpegImageParser.java"

# interfaces
.implements Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->hasXmpSegment(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;

.field final synthetic val$result:[Z


# direct methods
.method constructor <init>(Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;[Z)V
    .locals 0

    .line 479
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$4;->this$0:Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;

    iput-object p2, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$4;->val$result:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beginSOS()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public visitSOS(I[B[B)V
    .locals 0

    return-void
.end method

.method public visitSegment(I[BI[B[B)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p2, 0x0

    const p3, 0xffd9

    if-ne p1, p3, :cond_0

    return p2

    :cond_0
    const p3, 0xffe1

    const/4 p4, 0x1

    if-ne p1, p3, :cond_1

    .line 499
    new-instance p1, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegXmpParser;

    invoke-direct {p1}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegXmpParser;-><init>()V

    invoke-virtual {p1, p5}, Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegXmpParser;->isXmpJpegSegment([B)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 500
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$4;->val$result:[Z

    aput-boolean p4, p0, p2

    return p2

    :cond_1
    return p4
.end method
