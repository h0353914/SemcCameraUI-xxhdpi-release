.class Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;
.super Ljava/lang/Object;
.source "JpegImageParser.java"

# interfaces
.implements Lorg/apache/commons/imaging/formats/jpeg/JpegUtils$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->readSegments(Lorg/apache/commons/imaging/common/bytesource/ByteSource;[IZZ)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;

.field final synthetic val$markers:[I

.field final synthetic val$parser:Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;

.field final synthetic val$result:Ljava/util/List;

.field final synthetic val$returnAfterFirst:Z

.field final synthetic val$sofnSegments:[I


# direct methods
.method constructor <init>(Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;[ILjava/util/List;Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;[IZ)V
    .locals 0

    .line 137
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;->this$0:Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;

    iput-object p2, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;->val$markers:[I

    iput-object p3, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;->val$result:Ljava/util/List;

    iput-object p4, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;->val$parser:Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;

    iput-object p5, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;->val$sofnSegments:[I

    iput-boolean p6, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;->val$returnAfterFirst:Z

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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const p2, 0xffd9

    const/4 p3, 0x0

    if-ne p1, p2, :cond_0

    return p3

    .line 162
    :cond_0
    iget-object p2, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;->this$0:Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;

    iget-object p4, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;->val$markers:[I

    invoke-static {p2, p1, p4}, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;->access$000(Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;I[I)Z

    move-result p2

    const/4 p4, 0x1

    if-nez p2, :cond_1

    return p4

    :cond_1
    const p2, 0xffed

    if-ne p1, p2, :cond_2

    .line 168
    iget-object p2, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;->val$result:Ljava/util/List;

    new-instance v0, Lorg/apache/commons/imaging/formats/jpeg/segments/App13Segment;

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;->val$parser:Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;

    invoke-direct {v0, v1, p1, p5}, Lorg/apache/commons/imaging/formats/jpeg/segments/App13Segment;-><init>(Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser;I[B)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    const p2, 0xffee

    if-ne p1, p2, :cond_3

    .line 170
    iget-object p2, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;->val$result:Ljava/util/List;

    new-instance v0, Lorg/apache/commons/imaging/formats/jpeg/segments/App14Segment;

    invoke-direct {v0, p1, p5}, Lorg/apache/commons/imaging/formats/jpeg/segments/App14Segment;-><init>(I[B)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const p2, 0xffe2

    if-ne p1, p2, :cond_4

    .line 172
    iget-object p2, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;->val$result:Ljava/util/List;

    new-instance v0, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;

    invoke-direct {v0, p1, p5}, Lorg/apache/commons/imaging/formats/jpeg/segments/App2Segment;-><init>(I[B)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const p2, 0xffe0

    if-ne p1, p2, :cond_5

    .line 174
    iget-object p2, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;->val$result:Ljava/util/List;

    new-instance v0, Lorg/apache/commons/imaging/formats/jpeg/segments/JfifSegment;

    invoke-direct {v0, p1, p5}, Lorg/apache/commons/imaging/formats/jpeg/segments/JfifSegment;-><init>(I[B)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 175
    :cond_5
    iget-object p2, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;->val$sofnSegments:[I

    invoke-static {p2, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p2

    if-ltz p2, :cond_6

    .line 176
    iget-object p2, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;->val$result:Ljava/util/List;

    new-instance v0, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;

    invoke-direct {v0, p1, p5}, Lorg/apache/commons/imaging/formats/jpeg/segments/SofnSegment;-><init>(I[B)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    const p2, 0xffdb

    if-ne p1, p2, :cond_7

    .line 178
    iget-object p2, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;->val$result:Ljava/util/List;

    new-instance v0, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment;

    invoke-direct {v0, p1, p5}, Lorg/apache/commons/imaging/formats/jpeg/segments/DqtSegment;-><init>(I[B)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    const p2, 0xffe1

    if-lt p1, p2, :cond_8

    const p2, 0xffef

    if-gt p1, p2, :cond_8

    .line 181
    iget-object p2, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;->val$result:Ljava/util/List;

    new-instance v0, Lorg/apache/commons/imaging/formats/jpeg/segments/UnknownSegment;

    invoke-direct {v0, p1, p5}, Lorg/apache/commons/imaging/formats/jpeg/segments/UnknownSegment;-><init>(I[B)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    const p2, 0xfffe

    if-ne p1, p2, :cond_9

    .line 183
    iget-object p2, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;->val$result:Ljava/util/List;

    new-instance v0, Lorg/apache/commons/imaging/formats/jpeg/segments/ComSegment;

    invoke-direct {v0, p1, p5}, Lorg/apache/commons/imaging/formats/jpeg/segments/ComSegment;-><init>(I[B)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_9
    :goto_0
    iget-boolean p0, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegImageParser$1;->val$returnAfterFirst:Z

    if-eqz p0, :cond_a

    return p3

    :cond_a
    return p4
.end method
