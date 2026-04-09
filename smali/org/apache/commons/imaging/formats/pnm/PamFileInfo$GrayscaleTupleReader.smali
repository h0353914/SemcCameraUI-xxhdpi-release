.class Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$GrayscaleTupleReader;
.super Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$TupleReader;
.source "PamFileInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GrayscaleTupleReader"
.end annotation


# instance fields
.field private final colorType:Lorg/apache/commons/imaging/ImageInfo$ColorType;

.field final synthetic this$0:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;


# direct methods
.method public constructor <init>(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;Lorg/apache/commons/imaging/ImageInfo$ColorType;)V
    .locals 1

    .line 119
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$GrayscaleTupleReader;->this$0:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$TupleReader;-><init>(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$1;)V

    .line 120
    iput-object p2, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$GrayscaleTupleReader;->colorType:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    return-void
.end method


# virtual methods
.method public getColorType()Lorg/apache/commons/imaging/ImageInfo$ColorType;
    .locals 0

    .line 125
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$GrayscaleTupleReader;->colorType:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    return-object p0
.end method

.method public getRGB(Ljava/io/InputStream;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$GrayscaleTupleReader;->this$0:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;

    invoke-static {v0}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->access$200(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;)I

    move-result v0

    invoke-static {p1, v0}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->readSample(Ljava/io/InputStream;I)I

    move-result v0

    .line 131
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$GrayscaleTupleReader;->this$0:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;

    invoke-static {v1}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->access$300(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;)F

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$GrayscaleTupleReader;->this$0:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;

    invoke-static {v2}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->access$400(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->scaleSample(IFI)I

    move-result v0

    .line 134
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$GrayscaleTupleReader;->this$0:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;

    invoke-static {v1}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->access$500(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;)Z

    move-result v1

    const/16 v2, 0xff

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$GrayscaleTupleReader;->this$0:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;

    invoke-static {v1}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->access$200(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;)I

    move-result v1

    invoke-static {p1, v1}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->readSample(Ljava/io/InputStream;I)I

    move-result p1

    .line 136
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$GrayscaleTupleReader;->this$0:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;

    invoke-static {v1}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->access$300(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;)F

    move-result v1

    iget-object p0, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$GrayscaleTupleReader;->this$0:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;

    invoke-static {p0}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->access$400(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;)I

    move-result p0

    invoke-static {p1, v1, p0}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->scaleSample(IFI)I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    and-int/2addr p0, v2

    shl-int/lit8 p0, p0, 0x18

    and-int p1, v2, v0

    shl-int/lit8 v0, p1, 0x10

    or-int/2addr p0, v0

    shl-int/lit8 v0, p1, 0x8

    or-int/2addr p0, v0

    shl-int/lit8 p1, p1, 0x0

    or-int/2addr p0, p1

    return p0
.end method
