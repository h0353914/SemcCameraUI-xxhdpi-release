.class Lorg/apache/commons/imaging/formats/tiff/TiffReader$FirstDirectoryCollector;
.super Lorg/apache/commons/imaging/formats/tiff/TiffReader$Collector;
.source "TiffReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/tiff/TiffReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FirstDirectoryCollector"
.end annotation


# instance fields
.field private final readImageData:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 352
    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader$Collector;-><init>()V

    .line 353
    iput-boolean p1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffReader$FirstDirectoryCollector;->readImageData:Z

    return-void
.end method


# virtual methods
.method public addDirectory(Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;)Z
    .locals 0

    .line 358
    invoke-super {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffReader$Collector;->addDirectory(Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public readImageData()Z
    .locals 0

    .line 364
    iget-boolean p0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffReader$FirstDirectoryCollector;->readImageData:Z

    return p0
.end method
