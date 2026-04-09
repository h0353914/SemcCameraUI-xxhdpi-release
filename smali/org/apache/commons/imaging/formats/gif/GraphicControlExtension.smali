.class Lorg/apache/commons/imaging/formats/gif/GraphicControlExtension;
.super Lorg/apache/commons/imaging/formats/gif/GifBlock;
.source "GraphicControlExtension.java"


# instance fields
.field public final delay:I

.field public final dispose:I

.field public final packed:I

.field public final transparency:Z

.field public final transparentColorIndex:I


# direct methods
.method public constructor <init>(IIIZII)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/gif/GifBlock;-><init>(I)V

    .line 31
    iput p2, p0, Lorg/apache/commons/imaging/formats/gif/GraphicControlExtension;->packed:I

    .line 32
    iput p3, p0, Lorg/apache/commons/imaging/formats/gif/GraphicControlExtension;->dispose:I

    .line 33
    iput-boolean p4, p0, Lorg/apache/commons/imaging/formats/gif/GraphicControlExtension;->transparency:Z

    .line 34
    iput p5, p0, Lorg/apache/commons/imaging/formats/gif/GraphicControlExtension;->delay:I

    .line 35
    iput p6, p0, Lorg/apache/commons/imaging/formats/gif/GraphicControlExtension;->transparentColorIndex:I

    return-void
.end method
