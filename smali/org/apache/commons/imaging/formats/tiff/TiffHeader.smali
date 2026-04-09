.class public Lorg/apache/commons/imaging/formats/tiff/TiffHeader;
.super Lorg/apache/commons/imaging/formats/tiff/TiffElement;
.source "TiffHeader.java"


# instance fields
.field public final byteOrder:Ljava/nio/ByteOrder;

.field public final offsetToFirstIFD:J

.field public final tiffVersion:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteOrder;IJ)V
    .locals 3

    const-wide/16 v0, 0x0

    const/16 v2, 0x8

    .line 29
    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/imaging/formats/tiff/TiffElement;-><init>(JI)V

    .line 31
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffHeader;->byteOrder:Ljava/nio/ByteOrder;

    .line 32
    iput p2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffHeader;->tiffVersion:I

    .line 33
    iput-wide p3, p0, Lorg/apache/commons/imaging/formats/tiff/TiffHeader;->offsetToFirstIFD:J

    return-void
.end method


# virtual methods
.method public getElementDescription(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "TIFF Header"

    return-object p0
.end method
