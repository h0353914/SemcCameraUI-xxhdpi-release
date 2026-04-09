.class Lorg/apache/commons/imaging/formats/tiff/TiffReader$Collector;
.super Ljava/lang/Object;
.source "TiffReader.java"

# interfaces
.implements Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/tiff/TiffReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Collector"
.end annotation


# instance fields
.field private final directories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;",
            ">;"
        }
    .end annotation
.end field

.field private final fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/TiffField;",
            ">;"
        }
    .end annotation
.end field

.field private final readThumbnails:Z

.field private tiffHeader:Lorg/apache/commons/imaging/formats/tiff/TiffHeader;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 309
    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader$Collector;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffReader$Collector;->directories:Ljava/util/List;

    .line 305
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffReader$Collector;->fields:Ljava/util/List;

    if-eqz p1, :cond_0

    const-string v0, "READ_THUMBNAILS"

    .line 314
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "READ_THUMBNAILS"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 318
    :goto_0
    iput-boolean p1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffReader$Collector;->readThumbnails:Z

    return-void
.end method


# virtual methods
.method public addDirectory(Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;)Z
    .locals 0

    .line 327
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffReader$Collector;->directories:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public addField(Lorg/apache/commons/imaging/formats/tiff/TiffField;)Z
    .locals 0

    .line 332
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffReader$Collector;->fields:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public getContents()Lorg/apache/commons/imaging/formats/tiff/TiffContents;
    .locals 2

    .line 345
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/TiffContents;

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffReader$Collector;->tiffHeader:Lorg/apache/commons/imaging/formats/tiff/TiffHeader;

    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffReader$Collector;->directories:Ljava/util/List;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/imaging/formats/tiff/TiffContents;-><init>(Lorg/apache/commons/imaging/formats/tiff/TiffHeader;Ljava/util/List;)V

    return-object v0
.end method

.method public readImageData()Z
    .locals 0

    .line 337
    iget-boolean p0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffReader$Collector;->readThumbnails:Z

    return p0
.end method

.method public readOffsetDirectories()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setTiffHeader(Lorg/apache/commons/imaging/formats/tiff/TiffHeader;)Z
    .locals 0

    .line 322
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffReader$Collector;->tiffHeader:Lorg/apache/commons/imaging/formats/tiff/TiffHeader;

    const/4 p0, 0x1

    return p0
.end method
