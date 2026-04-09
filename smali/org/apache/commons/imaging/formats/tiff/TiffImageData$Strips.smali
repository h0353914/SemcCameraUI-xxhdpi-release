.class public Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;
.super Lorg/apache/commons/imaging/formats/tiff/TiffImageData;
.source "TiffImageData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/tiff/TiffImageData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Strips"
.end annotation


# instance fields
.field public final rowsPerStrip:I

.field private final strips:[Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;


# direct methods
.method public constructor <init>([Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;I)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffImageData;-><init>()V

    .line 98
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;->strips:[Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;

    .line 99
    iput p2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;->rowsPerStrip:I

    return-void
.end method


# virtual methods
.method public getDataReader(Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;I[IIIIIILjava/nio/ByteOrder;)Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 126
    new-instance v13, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;

    move-object v12, p0

    iget v11, v12, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;->rowsPerStrip:I

    move-object v0, v13

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v12}, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;-><init>(Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;I[IIIIIILjava/nio/ByteOrder;ILorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;)V

    return-object v13
.end method

.method public getImageData(I)Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;
    .locals 0

    .line 108
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;->strips:[Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getImageData()[Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;
    .locals 0

    .line 104
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;->strips:[Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;

    return-object p0
.end method

.method public getImageDataLength()I
    .locals 0

    .line 112
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;->strips:[Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;

    array-length p0, p0

    return p0
.end method

.method public stripsNotTiles()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
