.class public abstract Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;
.super Ljava/lang/Object;
.source "PhotometricInterpreter.java"


# instance fields
.field private final bitsPerSample:[I

.field protected final height:I

.field protected final predictor:I

.field protected final samplesPerPixel:I

.field protected final width:I


# direct methods
.method public constructor <init>(I[IIII)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;->samplesPerPixel:I

    .line 34
    iput-object p2, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;->bitsPerSample:[I

    .line 35
    iput p3, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;->predictor:I

    .line 36
    iput p4, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;->width:I

    .line 37
    iput p5, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;->height:I

    return-void
.end method


# virtual methods
.method protected getBitsPerSample(I)I
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;->bitsPerSample:[I

    aget p0, p0, p1

    return p0
.end method

.method public abstract interpretPixel(Lorg/apache/commons/imaging/common/ImageBuilder;[III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
