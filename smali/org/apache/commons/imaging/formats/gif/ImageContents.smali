.class Lorg/apache/commons/imaging/formats/gif/ImageContents;
.super Ljava/lang/Object;
.source "ImageContents.java"


# instance fields
.field final blocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/gif/GifBlock;",
            ">;"
        }
    .end annotation
.end field

.field final gifHeaderInfo:Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;

.field final globalColorTable:[B


# direct methods
.method constructor <init>(Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;[BLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;",
            "[B",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/gif/GifBlock;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/gif/ImageContents;->gifHeaderInfo:Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;

    .line 30
    iput-object p2, p0, Lorg/apache/commons/imaging/formats/gif/ImageContents;->globalColorTable:[B

    .line 31
    iput-object p3, p0, Lorg/apache/commons/imaging/formats/gif/ImageContents;->blocks:Ljava/util/List;

    return-void
.end method
