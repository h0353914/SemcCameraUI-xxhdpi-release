.class Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;
.super Ljava/lang/Object;
.source "PcxImageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PcxHeader"
.end annotation


# static fields
.field public static final ENCODING_RLE:I = 0x1

.field public static final ENCODING_UNCOMPRESSED:I = 0x0

.field public static final PALETTE_INFO_COLOR:I = 0x1

.field public static final PALETTE_INFO_GRAYSCALE:I = 0x2


# instance fields
.field public final bitsPerPixel:I

.field public final bytesPerLine:I

.field public final colormap:[I

.field public final encoding:I

.field public final hDpi:I

.field public final hScreenSize:I

.field public final manufacturer:I

.field public final nPlanes:I

.field public final paletteInfo:I

.field public final reserved:I

.field public final vDpi:I

.field public final vScreenSize:I

.field public final version:I

.field public final xMax:I

.field public final xMin:I

.field public final yMax:I

.field public final yMin:I


# direct methods
.method public constructor <init>(IIIIIIIIII[IIIIIII)V
    .locals 2

    move-object v0, p0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 190
    iput v1, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->manufacturer:I

    move v1, p2

    .line 191
    iput v1, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->version:I

    move v1, p3

    .line 192
    iput v1, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->encoding:I

    move v1, p4

    .line 193
    iput v1, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->bitsPerPixel:I

    move v1, p5

    .line 194
    iput v1, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->xMin:I

    move v1, p6

    .line 195
    iput v1, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->yMin:I

    move v1, p7

    .line 196
    iput v1, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->xMax:I

    move v1, p8

    .line 197
    iput v1, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->yMax:I

    move v1, p9

    .line 198
    iput v1, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->hDpi:I

    move v1, p10

    .line 199
    iput v1, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->vDpi:I

    move-object v1, p11

    .line 200
    iput-object v1, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->colormap:[I

    move v1, p12

    .line 201
    iput v1, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->reserved:I

    move v1, p13

    .line 202
    iput v1, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->nPlanes:I

    move/from16 v1, p14

    .line 203
    iput v1, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->bytesPerLine:I

    move/from16 v1, p15

    .line 204
    iput v1, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->paletteInfo:I

    move/from16 v1, p16

    .line 205
    iput v1, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->hScreenSize:I

    move/from16 v1, p17

    .line 206
    iput v1, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->vScreenSize:I

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 4

    .line 210
    const-string v0, "PcxHeader"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Manufacturer: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->manufacturer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Version: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Encoding: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->encoding:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BitsPerPixel: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->bitsPerPixel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "xMin: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->xMin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "yMin: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->yMin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "xMax: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->xMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "yMax: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->yMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hDpi: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->hDpi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "vDpi: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->vDpi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 221
    const-string v0, "ColorMap: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 222
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->colormap:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 223
    const-string v1, ","

    if-lez v0, :cond_0

    .line 224
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 226
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->colormap:[I

    aget v3, v3, v0

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->colormap:[I

    aget v3, v3, v0

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->colormap:[I

    aget v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 230
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Reserved: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->reserved:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "nPlanes: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->nPlanes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BytesPerLine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->bytesPerLine:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PaletteInfo: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->paletteInfo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hScreenSize: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->hScreenSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "vScreenSize: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->vScreenSize:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method
