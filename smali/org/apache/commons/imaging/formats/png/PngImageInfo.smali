.class public Lorg/apache/commons/imaging/formats/png/PngImageInfo;
.super Lorg/apache/commons/imaging/ImageInfo;
.source "PngImageInfo.java"


# instance fields
.field private final textChunks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/png/PngText;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/util/List;Lorg/apache/commons/imaging/ImageFormat;Ljava/lang/String;ILjava/lang/String;IIFIFIZZZLorg/apache/commons/imaging/ImageInfo$ColorType;Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/commons/imaging/ImageFormat;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "IIFIFIZZZ",
            "Lorg/apache/commons/imaging/ImageInfo$ColorType;",
            "Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/png/PngText;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct/range {p0 .. p18}, Lorg/apache/commons/imaging/ImageInfo;-><init>(Ljava/lang/String;ILjava/util/List;Lorg/apache/commons/imaging/ImageFormat;Ljava/lang/String;ILjava/lang/String;IIFIFIZZZLorg/apache/commons/imaging/ImageInfo$ColorType;Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;)V

    move-object v0, p0

    move-object/from16 v1, p19

    .line 42
    iput-object v1, v0, Lorg/apache/commons/imaging/formats/png/PngImageInfo;->textChunks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getTextChunks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/png/PngText;",
            ">;"
        }
    .end annotation

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lorg/apache/commons/imaging/formats/png/PngImageInfo;->textChunks:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
