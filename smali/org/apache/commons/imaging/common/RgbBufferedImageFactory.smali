.class public Lorg/apache/commons/imaging/common/RgbBufferedImageFactory;
.super Ljava/lang/Object;
.source "RgbBufferedImageFactory.java"

# interfaces
.implements Lorg/apache/commons/imaging/common/BufferedImageFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColorBufferedImage(IIZ)Ljava/awt/image/BufferedImage;
    .locals 0

    if-eqz p3, :cond_0

    .line 26
    new-instance p0, Ljava/awt/image/BufferedImage;

    const/4 p3, 0x2

    invoke-direct {p0, p1, p2, p3}, Ljava/awt/image/BufferedImage;-><init>(III)V

    return-object p0

    .line 28
    :cond_0
    new-instance p0, Ljava/awt/image/BufferedImage;

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Ljava/awt/image/BufferedImage;-><init>(III)V

    return-object p0
.end method

.method public getGrayscaleBufferedImage(IIZ)Ljava/awt/image/BufferedImage;
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/imaging/common/RgbBufferedImageFactory;->getColorBufferedImage(IIZ)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method
