.class Lorg/apache/commons/imaging/formats/ico/IcoImageParser$BitmapIconData;
.super Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconData;
.source "IcoImageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/ico/IcoImageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BitmapIconData"
.end annotation


# instance fields
.field public final bufferedImage:Ljava/awt/image/BufferedImage;

.field public final header:Lorg/apache/commons/imaging/formats/ico/IcoImageParser$BitmapHeader;


# direct methods
.method public constructor <init>(Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconInfo;Lorg/apache/commons/imaging/formats/ico/IcoImageParser$BitmapHeader;Ljava/awt/image/BufferedImage;)V
    .locals 0

    .line 281
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconData;-><init>(Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconInfo;)V

    .line 282
    iput-object p2, p0, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$BitmapIconData;->header:Lorg/apache/commons/imaging/formats/ico/IcoImageParser$BitmapHeader;

    .line 283
    iput-object p3, p0, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$BitmapIconData;->bufferedImage:Ljava/awt/image/BufferedImage;

    return-void
.end method


# virtual methods
.method protected dumpSubclass(Ljava/io/PrintWriter;)V
    .locals 1

    .line 293
    const-string v0, "BitmapIconData"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 294
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$BitmapIconData;->header:Lorg/apache/commons/imaging/formats/ico/IcoImageParser$BitmapHeader;

    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$BitmapHeader;->dump(Ljava/io/PrintWriter;)V

    .line 295
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public readBufferedImage()Ljava/awt/image/BufferedImage;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 288
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$BitmapIconData;->bufferedImage:Ljava/awt/image/BufferedImage;

    return-object p0
.end method
