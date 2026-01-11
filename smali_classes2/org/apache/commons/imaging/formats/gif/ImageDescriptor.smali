.class Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;
.super Lorg/apache/commons/imaging/formats/gif/GifBlock;
.source "ImageDescriptor.java"


# instance fields
.field final imageData:[B

.field final imageHeight:I

.field final imageLeftPosition:I

.field final imageTopPosition:I

.field final imageWidth:I

.field final interlaceFlag:Z

.field final localColorTable:[B

.field final localColorTableFlag:Z

.field final packedFields:B

.field final sizeOfLocalColorTable:B

.field final sortFlag:Z


# direct methods
.method constructor <init>(IIIIIBZZZB[B[B)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/gif/GifBlock;-><init>(I)V

    .line 42
    iput p2, p0, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;->imageLeftPosition:I

    .line 43
    iput p3, p0, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;->imageTopPosition:I

    .line 44
    iput p4, p0, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;->imageWidth:I

    .line 45
    iput p5, p0, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;->imageHeight:I

    .line 46
    iput-byte p6, p0, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;->packedFields:B

    .line 47
    iput-boolean p7, p0, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;->localColorTableFlag:Z

    .line 48
    iput-boolean p8, p0, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;->interlaceFlag:Z

    .line 49
    iput-boolean p9, p0, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;->sortFlag:Z

    .line 50
    iput-byte p10, p0, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;->sizeOfLocalColorTable:B

    .line 52
    iput-object p11, p0, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;->localColorTable:[B

    .line 53
    iput-object p12, p0, Lorg/apache/commons/imaging/formats/gif/ImageDescriptor;->imageData:[B

    return-void
.end method
