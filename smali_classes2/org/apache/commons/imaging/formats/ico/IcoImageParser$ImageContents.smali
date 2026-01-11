.class Lorg/apache/commons/imaging/formats/ico/IcoImageParser$ImageContents;
.super Ljava/lang/Object;
.source "IcoImageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/ico/IcoImageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageContents"
.end annotation


# instance fields
.field public final fileHeader:Lorg/apache/commons/imaging/formats/ico/IcoImageParser$FileHeader;

.field public final iconDatas:[Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconData;


# direct methods
.method public constructor <init>(Lorg/apache/commons/imaging/formats/ico/IcoImageParser$FileHeader;[Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconData;)V
    .locals 0

    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 543
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$ImageContents;->fileHeader:Lorg/apache/commons/imaging/formats/ico/IcoImageParser$FileHeader;

    .line 544
    iput-object p2, p0, Lorg/apache/commons/imaging/formats/ico/IcoImageParser$ImageContents;->iconDatas:[Lorg/apache/commons/imaging/formats/ico/IcoImageParser$IconData;

    return-void
.end method
