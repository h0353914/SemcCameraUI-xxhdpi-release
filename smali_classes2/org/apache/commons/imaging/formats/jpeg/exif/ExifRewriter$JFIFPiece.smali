.class abstract Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPiece;
.super Ljava/lang/Object;
.source "ExifRewriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "JFIFPiece"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$1;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$JFIFPiece;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract write(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
