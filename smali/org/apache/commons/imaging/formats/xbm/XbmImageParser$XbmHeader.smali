.class Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmHeader;
.super Ljava/lang/Object;
.source "XbmImageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/xbm/XbmImageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XbmHeader"
.end annotation


# instance fields
.field height:I

.field width:I

.field xHot:I

.field yHot:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 110
    iput v0, p0, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmHeader;->xHot:I

    .line 111
    iput v0, p0, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmHeader;->yHot:I

    .line 114
    iput p1, p0, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmHeader;->width:I

    .line 115
    iput p2, p0, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmHeader;->height:I

    .line 116
    iput p3, p0, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmHeader;->xHot:I

    .line 117
    iput p4, p0, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmHeader;->yHot:I

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "XbmHeader"

    .line 121
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmHeader;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmHeader;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 124
    iget v0, p0, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmHeader;->xHot:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmHeader;->yHot:I

    if-eq v0, v1, :cond_0

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "X hot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmHeader;->xHot:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Y hot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmHeader;->yHot:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
