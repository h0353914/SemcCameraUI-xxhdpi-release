.class Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;
.super Ljava/lang/Object;
.source "BmpHeaderInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;,
        Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpaceCoordinate;
    }
.end annotation


# instance fields
.field public final alphaMask:I

.field public final bitmapDataOffset:I

.field public final bitmapDataSize:I

.field public final bitmapHeaderSize:I

.field public final bitsPerPixel:I

.field public final blueMask:I

.field public final colorSpace:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;

.field public final colorSpaceType:I

.field public final colorsImportant:I

.field public final colorsUsed:I

.field public final compression:I

.field public final fileSize:I

.field public final gammaBlue:I

.field public final gammaGreen:I

.field public final gammaRed:I

.field public final greenMask:I

.field public final hResolution:I

.field public final height:I

.field public final identifier1:B

.field public final identifier2:B

.field public final intent:I

.field public final planes:I

.field public final profileData:I

.field public final profileSize:I

.field public final redMask:I

.field public final reserved:I

.field public final reservedV5:I

.field public final vResolution:I

.field public final width:I


# direct methods
.method public constructor <init>(BBIIIIIIIIIIIIIIIIIIILorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;IIIIIII)V
    .locals 2

    move-object v0, p0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 80
    iput-byte v1, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->identifier1:B

    move v1, p2

    .line 81
    iput-byte v1, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->identifier2:B

    move v1, p3

    .line 82
    iput v1, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->fileSize:I

    move v1, p4

    .line 83
    iput v1, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->reserved:I

    move v1, p5

    .line 84
    iput v1, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitmapDataOffset:I

    move v1, p6

    .line 86
    iput v1, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitmapHeaderSize:I

    move v1, p7

    .line 87
    iput v1, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->width:I

    move v1, p8

    .line 88
    iput v1, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->height:I

    move v1, p9

    .line 89
    iput v1, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->planes:I

    move v1, p10

    .line 90
    iput v1, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    move v1, p11

    .line 91
    iput v1, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->compression:I

    move v1, p12

    .line 92
    iput v1, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitmapDataSize:I

    move v1, p13

    .line 93
    iput v1, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->hResolution:I

    move/from16 v1, p14

    .line 94
    iput v1, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->vResolution:I

    move/from16 v1, p15

    .line 95
    iput v1, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->colorsUsed:I

    move/from16 v1, p16

    .line 96
    iput v1, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->colorsImportant:I

    move/from16 v1, p17

    .line 98
    iput v1, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->redMask:I

    move/from16 v1, p18

    .line 99
    iput v1, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->greenMask:I

    move/from16 v1, p19

    .line 100
    iput v1, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->blueMask:I

    move/from16 v1, p20

    .line 101
    iput v1, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->alphaMask:I

    move/from16 v1, p21

    .line 102
    iput v1, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->colorSpaceType:I

    move-object/from16 v1, p22

    .line 103
    iput-object v1, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->colorSpace:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo$ColorSpace;

    move/from16 v1, p23

    .line 104
    iput v1, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->gammaRed:I

    move/from16 v1, p24

    .line 105
    iput v1, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->gammaGreen:I

    move/from16 v1, p25

    .line 106
    iput v1, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->gammaBlue:I

    move/from16 v1, p26

    .line 107
    iput v1, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->intent:I

    move/from16 v1, p27

    .line 108
    iput v1, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->profileData:I

    move/from16 v1, p28

    .line 109
    iput v1, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->profileSize:I

    move/from16 v1, p29

    .line 110
    iput v1, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->reservedV5:I

    return-void
.end method
