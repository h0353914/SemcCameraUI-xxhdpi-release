.class final Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;
.super Ljava/lang/Object;
.source "TagInfoGpsText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TextEncoding"
.end annotation


# instance fields
.field public final encodingName:Ljava/lang/String;

.field final prefix:[B


# direct methods
.method public constructor <init>([BLjava/lang/String;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;->prefix:[B

    .line 77
    iput-object p2, p0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoGpsText$TextEncoding;->encodingName:Ljava/lang/String;

    return-void
.end method
