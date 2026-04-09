.class public abstract Lorg/apache/commons/imaging/formats/tiff/TiffImageData;
.super Ljava/lang/Object;
.source "TiffImageData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/tiff/TiffImageData$ByteSourceData;,
        Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Data;,
        Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;,
        Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Tiles;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getDataReader(Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;I[IIIIIILjava/nio/ByteOrder;)Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation
.end method

.method public abstract getImageData()[Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;
.end method

.method public abstract stripsNotTiles()Z
.end method
