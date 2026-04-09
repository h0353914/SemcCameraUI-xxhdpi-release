.class Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$ColorTupleReader;
.super Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$TupleReader;
.source "PamFileInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColorTupleReader"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;


# direct methods
.method private constructor <init>(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;)V
    .locals 1

    .line 146
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$ColorTupleReader;->this$0:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$TupleReader;-><init>(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$1;)V
    .locals 0

    .line 146
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$ColorTupleReader;-><init>(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;)V

    return-void
.end method


# virtual methods
.method public getColorType()Lorg/apache/commons/imaging/ImageInfo$ColorType;
    .locals 0

    .line 149
    sget-object p0, Lorg/apache/commons/imaging/ImageInfo$ColorType;->RGB:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    return-object p0
.end method

.method public getRGB(Ljava/io/InputStream;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$ColorTupleReader;->this$0:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;

    invoke-static {v0}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->access$200(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;)I

    move-result v0

    invoke-static {p1, v0}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->readSample(Ljava/io/InputStream;I)I

    move-result v0

    .line 155
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$ColorTupleReader;->this$0:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;

    invoke-static {v1}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->access$200(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;)I

    move-result v1

    invoke-static {p1, v1}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->readSample(Ljava/io/InputStream;I)I

    move-result v1

    .line 156
    iget-object v2, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$ColorTupleReader;->this$0:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;

    invoke-static {v2}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->access$200(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;)I

    move-result v2

    invoke-static {p1, v2}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->readSample(Ljava/io/InputStream;I)I

    move-result v2

    .line 158
    iget-object v3, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$ColorTupleReader;->this$0:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;

    invoke-static {v3}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->access$300(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;)F

    move-result v3

    iget-object v4, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$ColorTupleReader;->this$0:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;

    invoke-static {v4}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->access$400(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;)I

    move-result v4

    invoke-static {v0, v3, v4}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->scaleSample(IFI)I

    move-result v0

    .line 159
    iget-object v3, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$ColorTupleReader;->this$0:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;

    invoke-static {v3}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->access$300(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;)F

    move-result v3

    iget-object v4, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$ColorTupleReader;->this$0:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;

    invoke-static {v4}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->access$400(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;)I

    move-result v4

    invoke-static {v1, v3, v4}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->scaleSample(IFI)I

    move-result v1

    .line 160
    iget-object v3, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$ColorTupleReader;->this$0:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;

    invoke-static {v3}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->access$300(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;)F

    move-result v3

    iget-object v4, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$ColorTupleReader;->this$0:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;

    invoke-static {v4}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->access$400(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;)I

    move-result v4

    invoke-static {v2, v3, v4}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->scaleSample(IFI)I

    move-result v2

    .line 163
    iget-object v3, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$ColorTupleReader;->this$0:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;

    invoke-static {v3}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->access$500(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;)Z

    move-result v3

    const/16 v4, 0xff

    if-eqz v3, :cond_0

    .line 164
    iget-object v3, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$ColorTupleReader;->this$0:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;

    invoke-static {v3}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->access$200(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;)I

    move-result v3

    invoke-static {p1, v3}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->readSample(Ljava/io/InputStream;I)I

    move-result p1

    .line 165
    iget-object v3, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$ColorTupleReader;->this$0:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;

    invoke-static {v3}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->access$300(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;)F

    move-result v3

    iget-object p0, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$ColorTupleReader;->this$0:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;

    invoke-static {p0}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;->access$400(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;)I

    move-result p0

    invoke-static {p1, v3, p0}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->scaleSample(IFI)I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v4

    :goto_0
    and-int/2addr p0, v4

    shl-int/lit8 p0, p0, 0x18

    and-int p1, v4, v0

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    and-int p1, v4, v1

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    and-int p1, v4, v2

    shl-int/lit8 p1, p1, 0x0

    or-int/2addr p0, p1

    return p0
.end method
