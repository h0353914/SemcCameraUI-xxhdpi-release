.class Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieces;
.super Ljava/lang/Object;
.source "ExifRewriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JFIFPieces"
.end annotation


# instance fields
.field public final exifPieces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPiece;",
            ">;"
        }
    .end annotation
.end field

.field public final pieces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPiece;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPiece;",
            ">;",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPiece;",
            ">;)V"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieces;->pieces:Ljava/util/List;

    .line 82
    iput-object p2, p0, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPieces;->exifPieces:Ljava/util/List;

    return-void
.end method
