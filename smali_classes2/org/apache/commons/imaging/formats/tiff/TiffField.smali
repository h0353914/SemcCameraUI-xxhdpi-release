.class public Lorg/apache/commons/imaging/formats/tiff/TiffField;
.super Ljava/lang/Object;
.source "TiffField.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/tiff/TiffField$OversizeValueElement;
    }
.end annotation


# instance fields
.field private final byteOrder:Ljava/nio/ByteOrder;

.field private final count:J

.field private final directoryType:I

.field private final fieldType:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

.field private final offset:J

.field private final sortHint:I

.field private final tag:I

.field private final tagInfo:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

.field private final value:[B


# direct methods
.method public constructor <init>(IILorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;JJ[BLjava/nio/ByteOrder;I)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffField;->tag:I

    .line 59
    iput p2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffField;->directoryType:I

    .line 60
    iput-object p3, p0, Lorg/apache/commons/imaging/formats/tiff/TiffField;->fieldType:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    .line 61
    iput-wide p4, p0, Lorg/apache/commons/imaging/formats/tiff/TiffField;->count:J

    .line 62
    iput-wide p6, p0, Lorg/apache/commons/imaging/formats/tiff/TiffField;->offset:J

    .line 63
    iput-object p8, p0, Lorg/apache/commons/imaging/formats/tiff/TiffField;->value:[B

    .line 64
    iput-object p9, p0, Lorg/apache/commons/imaging/formats/tiff/TiffField;->byteOrder:Ljava/nio/ByteOrder;

    .line 65
    iput p10, p0, Lorg/apache/commons/imaging/formats/tiff/TiffField;->sortHint:I

    .line 67
    invoke-static {p2, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffTags;->getTag(II)Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffField;->tagInfo:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    return-void
.end method

.method private getValueDescription(Ljava/lang/Object;)Ljava/lang/String;
    .locals 7

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 184
    :cond_0
    instance-of p0, p1, Ljava/lang/Number;

    if-eqz p0, :cond_1

    .line 185
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 186
    :cond_1
    instance-of p0, p1, Ljava/lang/String;

    if-eqz p0, :cond_2

    .line 187
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 188
    :cond_2
    instance-of p0, p1, Ljava/util/Date;

    if-eqz p0, :cond_3

    .line 189
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {p0, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 190
    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 191
    :cond_3
    instance-of p0, p1, [Ljava/lang/Object;

    const-string v0, ", "

    const-string v1, ")"

    const-string v2, "... ("

    const/16 v3, 0x32

    const/4 v4, 0x0

    if-eqz p0, :cond_7

    .line 192
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 193
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_6

    .line 196
    aget-object v5, p1, v4

    if-le v4, v3, :cond_4

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    if-lez v4, :cond_5

    .line 203
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    :cond_5
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 207
    :cond_6
    :goto_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 223
    :cond_7
    instance-of p0, p1, [S

    if-eqz p0, :cond_b

    .line 224
    check-cast p1, [S

    check-cast p1, [S

    .line 225
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    :goto_2
    array-length v5, p1

    if-ge v4, v5, :cond_a

    .line 228
    aget-short v5, p1, v4

    if-le v4, v3, :cond_8

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_8
    if-lez v4, :cond_9

    .line 235
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    :cond_9
    invoke-static {v5}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 239
    :cond_a
    :goto_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 240
    :cond_b
    instance-of p0, p1, [I

    if-eqz p0, :cond_f

    .line 241
    check-cast p1, [I

    check-cast p1, [I

    .line 242
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    :goto_4
    array-length v5, p1

    if-ge v4, v5, :cond_e

    .line 245
    aget v5, p1, v4

    if-le v4, v3, :cond_c

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_c
    if-lez v4, :cond_d

    .line 252
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    :cond_d
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 256
    :cond_e
    :goto_5
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 257
    :cond_f
    instance-of p0, p1, [J

    if-eqz p0, :cond_13

    .line 258
    check-cast p1, [J

    check-cast p1, [J

    .line 259
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    :goto_6
    array-length v5, p1

    if-ge v4, v5, :cond_12

    .line 262
    aget-wide v5, p1, v4

    if-le v4, v3, :cond_10

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_10
    if-lez v4, :cond_11

    .line 269
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    :cond_11
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 273
    :cond_12
    :goto_7
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 274
    :cond_13
    instance-of p0, p1, [D

    if-eqz p0, :cond_17

    .line 275
    check-cast p1, [D

    check-cast p1, [D

    .line 276
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    :goto_8
    array-length v5, p1

    if-ge v4, v5, :cond_16

    .line 279
    aget-wide v5, p1, v4

    if-le v4, v3, :cond_14

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_14
    if-lez v4, :cond_15

    .line 286
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    :cond_15
    invoke-static {v5, v6}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 290
    :cond_16
    :goto_9
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 291
    :cond_17
    instance-of p0, p1, [B

    if-eqz p0, :cond_1b

    .line 292
    check-cast p1, [B

    check-cast p1, [B

    .line 293
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 295
    :goto_a
    array-length v5, p1

    if-ge v4, v5, :cond_1a

    .line 296
    aget-byte v5, p1, v4

    if-le v4, v3, :cond_18

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_18
    if-lez v4, :cond_19

    .line 303
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    :cond_19
    invoke-static {v5}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 307
    :cond_1a
    :goto_b
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 308
    :cond_1b
    instance-of p0, p1, [C

    if-eqz p0, :cond_1f

    .line 309
    check-cast p1, [C

    check-cast p1, [C

    .line 310
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    :goto_c
    array-length v5, p1

    if-ge v4, v5, :cond_1e

    .line 313
    aget-char v5, p1, v4

    if-le v4, v3, :cond_1c

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_1c
    if-lez v4, :cond_1d

    .line 320
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    :cond_1d
    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 324
    :cond_1e
    :goto_d
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 325
    :cond_1f
    instance-of p0, p1, [F

    if-eqz p0, :cond_23

    .line 326
    check-cast p1, [F

    check-cast p1, [F

    .line 327
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    :goto_e
    array-length v5, p1

    if-ge v4, v5, :cond_22

    .line 330
    aget v5, p1, v4

    if-le v4, v3, :cond_20

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    :cond_20
    if-lez v4, :cond_21

    .line 337
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    :cond_21
    invoke-static {v5}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 341
    :cond_22
    :goto_f
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 359
    :cond_23
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Unknown: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public dump()V
    .locals 4

    .line 363
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 364
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->dump(Ljava/io/PrintWriter;)V

    .line 365
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 1

    const/4 v0, 0x0

    .line 369
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ": "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 377
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public getByteArrayValue()[B
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffField;->value:[B

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getBytesLength()I

    move-result p0

    invoke-static {v0, p0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->head([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public getByteOrder()Ljava/nio/ByteOrder;
    .locals 0

    .line 116
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffField;->byteOrder:Ljava/nio/ByteOrder;

    return-object p0
.end method

.method public getBytesLength()I
    .locals 2

    .line 136
    iget-wide v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffField;->count:J

    long-to-int v0, v0

    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffField;->fieldType:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->getSize()I

    move-result p0

    mul-int/2addr v0, p0

    return v0
.end method

.method public getCount()J
    .locals 2

    .line 99
    iget-wide v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffField;->count:J

    return-wide v0
.end method

.method public getDescriptionWithoutValue()Ljava/lang/String;
    .locals 2

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getTag()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getTag()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getTagInfo()Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    move-result-object p0

    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "): "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDirectoryType()I
    .locals 0

    .line 71
    iget p0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffField;->directoryType:I

    return p0
.end method

.method public getDoubleArrayValue()[D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 460
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 464
    instance-of v1, v0, Ljava/lang/Number;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 465
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    const/4 p0, 0x1

    new-array p0, p0, [D

    aput-wide v0, p0, v2

    return-object p0

    .line 466
    :cond_0
    instance-of v1, v0, [Ljava/lang/Number;

    if-eqz v1, :cond_2

    .line 467
    check-cast v0, [Ljava/lang/Number;

    check-cast v0, [Ljava/lang/Number;

    .line 468
    array-length p0, v0

    new-array p0, p0, [D

    .line 469
    :goto_0
    array-length v1, v0

    if-ge v2, v1, :cond_1

    .line 470
    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    aput-wide v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p0

    .line 473
    :cond_2
    instance-of v1, v0, [S

    if-eqz v1, :cond_4

    .line 474
    check-cast v0, [S

    check-cast v0, [S

    .line 475
    array-length p0, v0

    new-array p0, p0, [D

    .line 476
    :goto_1
    array-length v1, v0

    if-ge v2, v1, :cond_3

    .line 477
    aget-short v1, v0, v2

    int-to-double v3, v1

    aput-wide v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-object p0

    .line 480
    :cond_4
    instance-of v1, v0, [I

    if-eqz v1, :cond_6

    .line 481
    check-cast v0, [I

    check-cast v0, [I

    .line 482
    array-length p0, v0

    new-array p0, p0, [D

    .line 483
    :goto_2
    array-length v1, v0

    if-ge v2, v1, :cond_5

    .line 484
    aget v1, v0, v2

    int-to-double v3, v1

    aput-wide v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    return-object p0

    .line 487
    :cond_6
    instance-of v1, v0, [F

    if-eqz v1, :cond_8

    .line 488
    check-cast v0, [F

    check-cast v0, [F

    .line 489
    array-length p0, v0

    new-array p0, p0, [D

    .line 490
    :goto_3
    array-length v1, v0

    if-ge v2, v1, :cond_7

    .line 491
    aget v1, v0, v2

    float-to-double v3, v1

    aput-wide v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    return-object p0

    .line 494
    :cond_8
    instance-of v1, v0, [D

    if-eqz v1, :cond_9

    .line 495
    check-cast v0, [D

    check-cast v0, [D

    .line 496
    array-length p0, v0

    new-array p0, p0, [D

    .line 497
    array-length v1, v0

    invoke-static {v0, v2, p0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    .line 501
    :cond_9
    new-instance v1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " for: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getTagInfo()Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->getDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getDoubleValue()D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 552
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 558
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 554
    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Missing value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getTagInfo()Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->getDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;
    .locals 0

    .line 91
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffField;->fieldType:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    return-object p0
.end method

.method public getFieldTypeName()Ljava/lang/String;
    .locals 0

    .line 406
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIntArrayValue()[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 427
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 431
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 432
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    filled-new-array {p0}, [I

    move-result-object p0

    return-object p0

    .line 433
    :cond_0
    instance-of v1, v0, [Ljava/lang/Number;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 434
    check-cast v0, [Ljava/lang/Number;

    check-cast v0, [Ljava/lang/Number;

    .line 435
    array-length p0, v0

    new-array p0, p0, [I

    .line 436
    :goto_0
    array-length v1, v0

    if-ge v2, v1, :cond_1

    .line 437
    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    aput v1, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p0

    .line 440
    :cond_2
    instance-of v1, v0, [S

    if-eqz v1, :cond_4

    .line 441
    check-cast v0, [S

    check-cast v0, [S

    .line 442
    array-length p0, v0

    new-array p0, p0, [I

    .line 443
    :goto_1
    array-length v1, v0

    if-ge v2, v1, :cond_3

    const v1, 0xffff

    .line 444
    aget-short v3, v0, v2

    and-int/2addr v1, v3

    aput v1, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-object p0

    .line 447
    :cond_4
    instance-of v1, v0, [I

    if-eqz v1, :cond_5

    .line 448
    check-cast v0, [I

    check-cast v0, [I

    .line 449
    array-length p0, v0

    new-array p0, p0, [I

    .line 450
    array-length v1, v0

    invoke-static {v0, v2, p0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    .line 454
    :cond_5
    new-instance v1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " for: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getTagInfo()Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->getDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getIntValue()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 542
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 548
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    .line 544
    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Missing value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getTagInfo()Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->getDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIntValueOrArraySum()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 507
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 511
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 512
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    .line 513
    :cond_0
    instance-of v1, v0, [Ljava/lang/Number;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 514
    check-cast v0, [Ljava/lang/Number;

    check-cast v0, [Ljava/lang/Number;

    .line 516
    array-length p0, v0

    move v1, v2

    :goto_0
    if-ge v2, p0, :cond_1

    aget-object v3, v0, v2

    .line 517
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1

    .line 520
    :cond_2
    instance-of v1, v0, [S

    if-eqz v1, :cond_4

    .line 521
    check-cast v0, [S

    check-cast v0, [S

    .line 523
    array-length p0, v0

    move v1, v2

    :goto_1
    if-ge v2, p0, :cond_3

    aget-short v3, v0, v2

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return v1

    .line 527
    :cond_4
    instance-of v1, v0, [I

    if-eqz v1, :cond_6

    .line 528
    check-cast v0, [I

    check-cast v0, [I

    .line 530
    array-length p0, v0

    move v1, v2

    :goto_2
    if-ge v2, p0, :cond_5

    aget v3, v0, v2

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    return v1

    .line 536
    :cond_6
    new-instance v1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " for: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getTagInfo()Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->getDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getOffset()I
    .locals 2

    .line 108
    iget-wide v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffField;->offset:J

    long-to-int p0, v0

    return p0
.end method

.method public getOversizeValueElement()Lorg/apache/commons/imaging/formats/tiff/TiffElement;
    .locals 3

    .line 164
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->isLocalValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 168
    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/TiffField$OversizeValueElement;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getOffset()I

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffField;->value:[B

    array-length v2, v2

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/commons/imaging/formats/tiff/TiffField$OversizeValueElement;-><init>(Lorg/apache/commons/imaging/formats/tiff/TiffField;II)V

    return-object v0
.end method

.method public getSortHint()I
    .locals 0

    .line 120
    iget p0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffField;->sortHint:I

    return p0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 415
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 419
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 423
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 420
    :cond_1
    new-instance v1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected String value("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getTagInfo()Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->getDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "): "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getTag()I
    .locals 0

    .line 83
    iget p0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffField;->tag:I

    return p0
.end method

.method public getTagInfo()Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;
    .locals 0

    .line 75
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffField;->tagInfo:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    return-object p0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 2

    .line 399
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getTagInfo()Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    if-ne v0, v1, :cond_0

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getTagInfo()Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getTag()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 402
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getTagInfo()Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    move-result-object p0

    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 411
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getTagInfo()Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->getValue(Lorg/apache/commons/imaging/formats/tiff/TiffField;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getValueDescription()Ljava/lang/String;
    .locals 2

    .line 173
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getValueDescription(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/apache/commons/imaging/ImageReadException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/commons/imaging/ImageReadException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isLocalValue()Z
    .locals 4

    .line 128
    iget-wide v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffField;->count:J

    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffField;->fieldType:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->getSize()I

    move-result p0

    int-to-long v2, p0

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x4

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getTag()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getTag()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getTagInfo()Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getValueDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getCount()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ")"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
