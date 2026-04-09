.class Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;
.super Ljava/lang/Object;
.source "GifHeaderInfo.java"


# instance fields
.field public final backgroundColorIndex:B

.field public final colorResolution:B

.field public final globalColorTableFlag:Z

.field public final identifier1:B

.field public final identifier2:B

.field public final identifier3:B

.field public final logicalScreenHeight:I

.field public final logicalScreenWidth:I

.field public final packedFields:B

.field public final pixelAspectRatio:B

.field public final sizeOfGlobalColorTable:B

.field public final sortFlag:Z

.field public final version1:B

.field public final version2:B

.field public final version3:B


# direct methods
.method public constructor <init>(BBBBBBIIBBBZBZB)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-byte p1, p0, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->identifier1:B

    .line 44
    iput-byte p2, p0, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->identifier2:B

    .line 45
    iput-byte p3, p0, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->identifier3:B

    .line 46
    iput-byte p4, p0, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->version1:B

    .line 47
    iput-byte p5, p0, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->version2:B

    .line 48
    iput-byte p6, p0, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->version3:B

    .line 49
    iput p7, p0, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->logicalScreenWidth:I

    .line 50
    iput p8, p0, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->logicalScreenHeight:I

    .line 51
    iput-byte p9, p0, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->packedFields:B

    .line 52
    iput-byte p10, p0, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->backgroundColorIndex:B

    .line 53
    iput-byte p11, p0, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->pixelAspectRatio:B

    .line 54
    iput-boolean p12, p0, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->globalColorTableFlag:Z

    .line 55
    iput-byte p13, p0, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->colorResolution:B

    .line 56
    iput-boolean p14, p0, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->sortFlag:Z

    .line 57
    iput-byte p15, p0, Lorg/apache/commons/imaging/formats/gif/GifHeaderInfo;->sizeOfGlobalColorTable:B

    return-void
.end method
