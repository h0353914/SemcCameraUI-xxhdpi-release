.class Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;
.super Ljava/lang/Object;
.source "XpmImageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XpmHeader"
.end annotation


# instance fields
.field height:I

.field numCharsPerPixel:I

.field numColors:I

.field palette:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$PaletteEntry;",
            ">;"
        }
    .end annotation
.end field

.field width:I

.field xHotSpot:I

.field xpmExt:Z

.field yHotSpot:I


# direct methods
.method public constructor <init>(IIIIIIZ)V
    .locals 1

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 186
    iput v0, p0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;->xHotSpot:I

    .line 187
    iput v0, p0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;->yHotSpot:I

    .line 190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;->palette:Ljava/util/Map;

    .line 194
    iput p1, p0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;->width:I

    .line 195
    iput p2, p0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;->height:I

    .line 196
    iput p3, p0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;->numColors:I

    .line 197
    iput p4, p0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;->numCharsPerPixel:I

    .line 198
    iput p5, p0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;->xHotSpot:I

    .line 199
    iput p6, p0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;->yHotSpot:I

    .line 200
    iput-boolean p7, p0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;->xpmExt:Z

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 204
    const-string v0, "XpmHeader"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Width: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Height: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NumColors: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;->numColors:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NumCharsPerPixel: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;->numCharsPerPixel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 209
    iget v0, p0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;->xHotSpot:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;->yHotSpot:I

    if-eq v0, v1, :cond_0

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "X hotspot: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;->xHotSpot:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Y hotspot: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;->yHotSpot:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 213
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "XpmExt: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;->xpmExt:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
