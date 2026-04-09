.class public Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;
.super Lorg/apache/commons/imaging/ImageParser;
.source "XpmImageParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmParseResult;,
        Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$PaletteEntry;,
        Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;
    }
.end annotation


# static fields
.field private static final ACCEPTED_EXTENSIONS:[Ljava/lang/String;

.field private static final DEFAULT_EXTENSION:Ljava/lang/String; = ".xpm"

.field private static final WRITE_PALETTE:[C

.field private static colorNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ".xpm"

    .line 59
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    const/16 v0, 0x5c

    .line 61
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->WRITE_PALETTE:[C

    return-void

    :array_0
    .array-data 2
        0x20s
        0x2es
        0x58s
        0x6fs
        0x4fs
        0x2bs
        0x40s
        0x23s
        0x24s
        0x25s
        0x26s
        0x2as
        0x3ds
        0x2ds
        0x3bs
        0x3as
        0x3es
        0x2cs
        0x3cs
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x71s
        0x77s
        0x65s
        0x72s
        0x74s
        0x79s
        0x75s
        0x69s
        0x70s
        0x61s
        0x73s
        0x64s
        0x66s
        0x67s
        0x68s
        0x6as
        0x6bs
        0x6cs
        0x7as
        0x78s
        0x63s
        0x76s
        0x62s
        0x6es
        0x6ds
        0x4ds
        0x4es
        0x42s
        0x56s
        0x43s
        0x5as
        0x41s
        0x53s
        0x44s
        0x46s
        0x47s
        0x48s
        0x4as
        0x4bs
        0x4cs
        0x50s
        0x49s
        0x55s
        0x59s
        0x54s
        0x52s
        0x45s
        0x57s
        0x51s
        0x21s
        0x7es
        0x5es
        0x2fs
        0x28s
        0x29s
        0x5fs
        0x60s
        0x27s
        0x5ds
        0x5bs
        0x7bs
        0x7ds
        0x7cs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Lorg/apache/commons/imaging/ImageParser;-><init>()V

    return-void
.end method

.method private static loadColorNames()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 71
    const-class v0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;

    monitor-enter v0

    .line 72
    :try_start_0
    sget-object v1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->colorNames:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 73
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    return-void

    .line 77
    :cond_0
    :try_start_1
    const-class v1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;

    const-string v2, "rgb.txt"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_1

    .line 80
    new-instance v1, Lorg/apache/commons/imaging/ImageReadException;

    const-string v2, "Couldn\'t find rgb.txt in our resources"

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 82
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 86
    :try_start_2
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    const-string v8, "US-ASCII"

    invoke-direct {v7, v1, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 89
    :goto_0
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 90
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v7, 0x21

    if-ne v3, v7, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    .line 94
    :try_start_4
    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v7, 0x4

    const/4 v8, 0x7

    .line 95
    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0xb

    const/16 v9, 0x8

    .line 96
    invoke-virtual {v1, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 97
    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/high16 v8, -0x1000000

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v8

    shl-int/2addr v7, v9

    or-int/2addr v3, v7

    or-int/2addr v3, v10

    .line 98
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 101
    :try_start_5
    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v3, "Couldn\'t parse color in rgb.txt"

    invoke-direct {v2, v3, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 106
    :cond_3
    :try_start_6
    new-array v1, v4, [Ljava/io/Closeable;

    aput-object v6, v1, v5

    invoke-static {v4, v1}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    .line 108
    sput-object v2, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->colorNames:Ljava/util/Map;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 112
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    return-void

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v6, v3

    .line 106
    :goto_1
    :try_start_8
    new-array v2, v4, [Ljava/io/Closeable;

    aput-object v6, v2, v5

    invoke-static {v5, v2}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw v1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catch_1
    move-exception v1

    .line 110
    :try_start_9
    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v3, "Could not parse rgb.txt"

    invoke-direct {v2, v3, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catchall_2
    move-exception v1

    .line 112
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v1
.end method

.method private parseColor(Ljava/lang/String;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 p0, 0x0

    .line 338
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    .line 339
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 340
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/high16 v5, -0x1000000

    const/16 v6, 0x10

    if-ne v1, v4, :cond_0

    .line 341
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x2

    .line 342
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 343
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    shl-int/lit8 p0, p0, 0x14

    or-int/2addr p0, v5

    shl-int/2addr v0, v2

    or-int/2addr p0, v0

    shl-int/2addr p1, v3

    or-int/2addr p0, p1

    return p0

    .line 345
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v7, 0x6

    if-ne v1, v7, :cond_1

    .line 346
    invoke-static {p1, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    or-int/2addr p0, v5

    return p0

    .line 347
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v8, 0x9

    const/16 v9, 0x8

    if-ne v1, v8, :cond_2

    .line 348
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    .line 349
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x7

    .line 350
    invoke-virtual {p1, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    shl-int/2addr p0, v6

    or-int/2addr p0, v5

    shl-int/2addr v0, v9

    or-int/2addr p0, v0

    or-int/2addr p0, p1

    return p0

    .line 352
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 353
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x5

    .line 354
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 355
    invoke-virtual {p1, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    shl-int/2addr p0, v6

    or-int/2addr p0, v5

    shl-int/2addr v0, v9

    or-int/2addr p0, v0

    or-int/2addr p0, p1

    return p0

    :cond_3
    return p0

    .line 360
    :cond_4
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x25

    if-ne v0, v1, :cond_5

    .line 361
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "HSV colors are not implemented even in the XPM specification!"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    const-string v0, "None"

    .line 363
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return p0

    .line 366
    :cond_6
    invoke-static {}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->loadColorNames()V

    .line 367
    sget-object v0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->colorNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 368
    sget-object p0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->colorNames:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_7
    return p0
.end method

.method private parseNextString(Lorg/apache/commons/imaging/common/BasicCParser;Ljava/lang/StringBuilder;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 p0, 0x0

    .line 281
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 282
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/BasicCParser;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 283
    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x22

    if-eq v1, v2, :cond_0

    .line 284
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Parsing XPM file failed, no string found where expected"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 287
    :cond_0
    invoke-static {p2, v0}, Lorg/apache/commons/imaging/common/BasicCParser;->unescapeString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 288
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/BasicCParser;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_1

    .line 290
    invoke-static {p2, v0}, Lorg/apache/commons/imaging/common/BasicCParser;->unescapeString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, ","

    .line 292
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const-string p1, "}"

    .line 294
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return p0

    .line 297
    :cond_3
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Parsing XPM file failed, no \',\' or \'}\' found where expected"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private parsePaletteEntries(Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;Lorg/apache/commons/imaging/common/BasicCParser;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 396
    :goto_0
    iget v3, p1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;->numColors:I

    if-ge v2, v3, :cond_a

    .line 397
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 398
    invoke-direct {p0, p2, v0}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->parseNextString(Lorg/apache/commons/imaging/common/BasicCParser;Ljava/lang/StringBuilder;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 400
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Parsing XPM file failed, file ended while reading palette"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 402
    :cond_0
    iget v3, p1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;->numCharsPerPixel:I

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 403
    iget v4, p1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;->numCharsPerPixel:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/imaging/common/BasicCParser;->tokenizeRow(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 404
    new-instance v5, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$PaletteEntry;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$PaletteEntry;-><init>(Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$1;)V

    .line 405
    iput v2, v5, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$PaletteEntry;->index:I

    const/high16 v6, -0x80000000

    .line 407
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move v8, v6

    move v6, v1

    .line 408
    :goto_1
    array-length v9, v4

    if-ge v6, v9, :cond_8

    .line 409
    aget-object v9, v4, v6

    add-int/lit8 v10, v6, -0x1

    if-ge v8, v10, :cond_1

    const-string v10, "m"

    .line 411
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    :cond_1
    const-string v10, "g4"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "g"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "c"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "s"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_2

    :cond_2
    move v10, v1

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v10, 0x1

    :goto_3
    if-eqz v10, :cond_5

    if-ltz v8, :cond_4

    .line 421
    aget-object v8, v4, v8

    .line 422
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 423
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 424
    invoke-direct {p0, v5, v8, v9}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->populatePaletteEntry(Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$PaletteEntry;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move v8, v6

    goto :goto_4

    :cond_5
    if-gez v8, :cond_6

    goto :goto_5

    .line 431
    :cond_6
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_7

    const/16 v10, 0x20

    .line 432
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 434
    :cond_7
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_8
    :goto_5
    if-ltz v8, :cond_9

    .line 437
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_9

    .line 438
    aget-object v4, v4, v8

    .line 439
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 440
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 441
    invoke-direct {p0, v5, v4, v6}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->populatePaletteEntry(Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$PaletteEntry;Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    :cond_9
    iget-object v4, p1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;->palette:Ljava/util/Map;

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method private parseXpmHeader(Lorg/apache/commons/imaging/common/BasicCParser;)Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 451
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/BasicCParser;->nextToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "static"

    .line 452
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Parsing XPM file failed, no \'static\' token"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 456
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/BasicCParser;->nextToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "char"

    .line 457
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 458
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Parsing XPM file failed, no \'char\' token"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 461
    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/BasicCParser;->nextToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    .line 462
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 463
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Parsing XPM file failed, no \'*\' token"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 466
    :cond_2
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/BasicCParser;->nextToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 468
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Parsing XPM file failed, no variable name"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const/4 v1, 0x0

    .line 471
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5f

    if-eq v2, v3, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-nez v2, :cond_4

    .line 472
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Parsing XPM file failed, variable name doesn\'t start with letter or underscore"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 476
    :cond_4
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 477
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 478
    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_5

    if-eq v2, v3, :cond_5

    .line 479
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Parsing XPM file failed, variable name contains non-letter non-digit non-underscore"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 484
    :cond_6
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/BasicCParser;->nextToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "["

    .line 485
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 486
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Parsing XPM file failed, no \'[\' token"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 489
    :cond_7
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/BasicCParser;->nextToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "]"

    .line 490
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 491
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Parsing XPM file failed, no \']\' token"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 494
    :cond_8
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/BasicCParser;->nextToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "="

    .line 495
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 496
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Parsing XPM file failed, no \'=\' token"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 499
    :cond_9
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/BasicCParser;->nextToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "{"

    .line 500
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 501
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Parsing XPM file failed, no \'{\' token"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 505
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 506
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->parseNextString(Lorg/apache/commons/imaging/common/BasicCParser;Ljava/lang/StringBuilder;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 508
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Parsing XPM file failed, file too short"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 511
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->parseXpmValuesSection(Ljava/lang/String;)Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;

    move-result-object v0

    .line 512
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->parsePaletteEntries(Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;Lorg/apache/commons/imaging/common/BasicCParser;)V

    return-object v0
.end method

.method private parseXpmHeader(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmParseResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 259
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 260
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    invoke-static {p1, v3, v2}, Lorg/apache/commons/imaging/common/BasicCParser;->preprocess(Ljava/io/InputStream;Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/io/ByteArrayOutputStream;

    move-result-object v4

    const-string v5, "XPM"

    .line 263
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 264
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v2, "Parsing XPM file failed, signature isn\'t \'/* XPM */\'"

    invoke-direct {p0, v2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 268
    :cond_0
    new-instance v3, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmParseResult;

    invoke-direct {v3, v2}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmParseResult;-><init>(Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$1;)V

    .line 269
    new-instance v2, Lorg/apache/commons/imaging/common/BasicCParser;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v5}, Lorg/apache/commons/imaging/common/BasicCParser;-><init>(Ljava/io/ByteArrayInputStream;)V

    iput-object v2, v3, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmParseResult;->cParser:Lorg/apache/commons/imaging/common/BasicCParser;

    .line 271
    iget-object v2, v3, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmParseResult;->cParser:Lorg/apache/commons/imaging/common/BasicCParser;

    invoke-direct {p0, v2}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->parseXpmHeader(Lorg/apache/commons/imaging/common/BasicCParser;)Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;

    move-result-object p0

    iput-object p0, v3, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmParseResult;->xpmHeader:Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 275
    new-array p0, v0, [Ljava/io/Closeable;

    aput-object p1, p0, v1

    invoke-static {v0, p0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object v3

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object p1, v2

    :goto_0
    new-array v0, v0, [Ljava/io/Closeable;

    aput-object p1, v0, v1

    invoke-static {v1, v0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw p0
.end method

.method private parseXpmValuesSection(Ljava/lang/String;)Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 304
    invoke-static {p1}, Lorg/apache/commons/imaging/common/BasicCParser;->tokenizeRow(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 305
    array-length p1, p0

    const/4 v0, 0x7

    const/4 v1, 0x4

    if-ge p1, v1, :cond_0

    array-length p1, p0

    if-le p1, v0, :cond_0

    .line 306
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Parsing XPM file failed, <Values> section has incorrect tokens"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    const/4 p1, 0x0

    .line 310
    :try_start_0
    aget-object v2, p0, p1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v2, 0x1

    .line 311
    aget-object v3, p0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v3, 0x2

    .line 312
    aget-object v3, p0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v3, 0x3

    .line 313
    aget-object v3, p0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 317
    array-length v3, p0

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/4 v10, -0x1

    if-lt v3, v8, :cond_1

    .line 318
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 319
    aget-object v3, p0, v9

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v8, v1

    move v10, v3

    goto :goto_0

    :cond_1
    move v8, v10

    .line 321
    :goto_0
    array-length v1, p0

    if-eq v1, v9, :cond_2

    array-length v1, p0

    if-ne v1, v0, :cond_3

    :cond_2
    const-string p1, "XPMEXT"

    .line 322
    array-length v0, p0

    sub-int/2addr v0, v2

    aget-object p0, p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    move p1, v2

    .line 329
    :cond_3
    new-instance p0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;

    move-object v3, p0

    move v9, v10

    move v10, p1

    invoke-direct/range {v3 .. v10}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;-><init>(IIIIIIZ)V

    return-object p0

    .line 325
    :cond_4
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Parsing XPM file failed, can\'t parse <Values> section XPMEXT"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 332
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string v0, "Parsing XPM file failed, error parsing <Values> section"

    invoke-direct {p1, v0, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private pixelsForIndex(II)Ljava/lang/String;
    .locals 4

    .line 629
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 632
    sget-object v2, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->WRITE_PALETTE:[C

    array-length v2, v2

    mul-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_1

    .line 635
    div-int v2, p1, v1

    mul-int v3, v2, v1

    sub-int/2addr p1, v3

    .line 637
    sget-object v3, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->WRITE_PALETTE:[C

    array-length v3, v3

    div-int/2addr v1, v3

    .line 638
    sget-object v3, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->WRITE_PALETTE:[C

    aget-char v2, v3, v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 640
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private populatePaletteEntry(Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$PaletteEntry;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const-string v0, "m"

    .line 375
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 376
    invoke-direct {p0, p3}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->parseColor(Ljava/lang/String;)I

    move-result p0

    iput p0, p1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$PaletteEntry;->monoArgb:I

    .line 377
    iput-boolean v1, p1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$PaletteEntry;->haveMono:Z

    goto :goto_0

    :cond_0
    const-string v0, "g4"

    .line 378
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    invoke-direct {p0, p3}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->parseColor(Ljava/lang/String;)I

    move-result p0

    iput p0, p1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$PaletteEntry;->gray4LevelArgb:I

    .line 380
    iput-boolean v1, p1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$PaletteEntry;->haveGray4Level:Z

    goto :goto_0

    :cond_1
    const-string v0, "g"

    .line 381
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 382
    invoke-direct {p0, p3}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->parseColor(Ljava/lang/String;)I

    move-result p0

    iput p0, p1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$PaletteEntry;->grayArgb:I

    .line 383
    iput-boolean v1, p1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$PaletteEntry;->haveGray:Z

    goto :goto_0

    :cond_2
    const-string v0, "s"

    .line 384
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 385
    invoke-direct {p0, p3}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->parseColor(Ljava/lang/String;)I

    move-result p0

    iput p0, p1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$PaletteEntry;->colorArgb:I

    .line 386
    iput-boolean v1, p1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$PaletteEntry;->haveColor:Z

    goto :goto_0

    :cond_3
    const-string v0, "c"

    .line 387
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 388
    invoke-direct {p0, p3}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->parseColor(Ljava/lang/String;)I

    move-result p0

    iput p0, p1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$PaletteEntry;->colorArgb:I

    .line 389
    iput-boolean v1, p1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$PaletteEntry;->haveColor:Z

    :cond_4
    :goto_0
    return-void
.end method

.method private randomName()Ljava/lang/String;
    .locals 9

    .line 614
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 616
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v1

    const/16 v3, 0x38

    move v4, v3

    :goto_0
    const-wide/16 v5, 0xff

    if-ltz v4, :cond_0

    shr-long v7, v1, v4

    and-long/2addr v5, v7

    long-to-int v5, v5

    .line 619
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, -0x8

    goto :goto_0

    .line 621
    :cond_0
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v1

    :goto_1
    if-ltz v3, :cond_1

    shr-long v7, v1, v3

    and-long/2addr v7, v5

    long-to-int p0, v7

    .line 623
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, -0x8

    goto :goto_1

    .line 625
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private readXpmHeader(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->parseXpmHeader(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmParseResult;

    move-result-object p0

    .line 251
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmParseResult;->xpmHeader:Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;

    return-object p0
.end method

.method private readXpmImage(Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;Lorg/apache/commons/imaging/common/BasicCParser;)Ljava/awt/image/BufferedImage;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 521
    iget-object v3, v1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;->palette:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    const/16 v4, 0x10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v8, 0x100

    if-gt v3, v8, :cond_1

    .line 522
    iget-object v3, v1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;->palette:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    new-array v11, v3, [I

    .line 523
    iget-object v3, v1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;->palette:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 525
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$PaletteEntry;

    .line 526
    iget v9, v8, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$PaletteEntry;->index:I

    invoke-virtual {v8}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$PaletteEntry;->getBestARGB()I

    move-result v8

    aput v8, v11, v9

    goto :goto_0

    .line 528
    :cond_0
    new-instance v3, Ljava/awt/image/IndexColorModel;

    const/16 v9, 0x8

    iget-object v8, v1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;->palette:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v10

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, -0x1

    const/4 v15, 0x0

    move-object v8, v3

    invoke-direct/range {v8 .. v15}, Ljava/awt/image/IndexColorModel;-><init>(II[IIZII)V

    .line 530
    iget v8, v1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;->width:I

    iget v9, v1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;->height:I

    invoke-static {v6, v8, v9, v7, v5}, Ljava/awt/image/Raster;->createInterleavedRaster(IIIILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v5

    const/16 v8, 0x8

    goto/16 :goto_2

    .line 534
    :cond_1
    iget-object v3, v1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;->palette:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    const/high16 v8, 0x10000

    if-gt v3, v8, :cond_3

    .line 535
    iget-object v3, v1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;->palette:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    new-array v11, v3, [I

    .line 536
    iget-object v3, v1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;->palette:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 538
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$PaletteEntry;

    .line 539
    iget v9, v8, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$PaletteEntry;->index:I

    invoke-virtual {v8}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$PaletteEntry;->getBestARGB()I

    move-result v8

    aput v8, v11, v9

    goto :goto_1

    .line 541
    :cond_2
    new-instance v3, Ljava/awt/image/IndexColorModel;

    const/16 v9, 0x10

    iget-object v8, v1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;->palette:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v10

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, -0x1

    const/4 v15, 0x1

    move-object v8, v3

    invoke-direct/range {v8 .. v15}, Ljava/awt/image/IndexColorModel;-><init>(II[IIZII)V

    .line 543
    iget v8, v1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;->width:I

    iget v9, v1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;->height:I

    invoke-static {v7, v8, v9, v7, v5}, Ljava/awt/image/Raster;->createInterleavedRaster(IIIILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v5

    move v8, v4

    goto :goto_2

    .line 548
    :cond_3
    new-instance v3, Ljava/awt/image/DirectColorModel;

    const/16 v9, 0x20

    const/high16 v10, 0xff0000

    const v11, 0xff00

    const/16 v12, 0xff

    const/high16 v13, -0x1000000

    move-object v8, v3

    invoke-direct/range {v8 .. v13}, Ljava/awt/image/DirectColorModel;-><init>(IIIII)V

    const/4 v8, 0x3

    .line 550
    iget v9, v1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;->width:I

    iget v10, v1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;->height:I

    const/4 v11, 0x4

    new-array v11, v11, [I

    fill-array-data v11, :array_0

    invoke-static {v8, v9, v10, v11, v5}, Ljava/awt/image/Raster;->createPackedRaster(III[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v5

    const/16 v8, 0x20

    .line 556
    :goto_2
    new-instance v9, Ljava/awt/image/BufferedImage;

    invoke-virtual {v3}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v10

    new-instance v11, Ljava/util/Properties;

    invoke-direct {v11}, Ljava/util/Properties;-><init>()V

    invoke-direct {v9, v3, v5, v10, v11}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    .line 558
    invoke-virtual {v5}, Ljava/awt/image/WritableRaster;->getDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object v3

    .line 559
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move v10, v6

    move v11, v7

    .line 561
    :goto_3
    iget v12, v1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;->height:I

    if-ge v10, v12, :cond_8

    .line 562
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 563
    invoke-direct {v0, v2, v5}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->parseNextString(Lorg/apache/commons/imaging/common/BasicCParser;Ljava/lang/StringBuilder;)Z

    move-result v11

    .line 564
    iget v12, v1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;->height:I

    sub-int/2addr v12, v7

    if-ge v10, v12, :cond_4

    if-nez v11, :cond_4

    .line 565
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "Parsing XPM file failed, insufficient image rows in file"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 568
    :cond_4
    iget v12, v1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;->width:I

    mul-int/2addr v12, v10

    move v13, v6

    .line 569
    :goto_4
    iget v14, v1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;->width:I

    if-ge v13, v14, :cond_7

    .line 570
    iget v14, v1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;->numCharsPerPixel:I

    mul-int/2addr v14, v13

    add-int/lit8 v15, v13, 0x1

    iget v7, v1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;->numCharsPerPixel:I

    mul-int/2addr v7, v15

    invoke-virtual {v5, v14, v7}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 572
    iget-object v14, v1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;->palette:Ljava/util/Map;

    invoke-interface {v14, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$PaletteEntry;

    if-nez v14, :cond_5

    .line 574
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No palette entry was defined for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-gt v8, v4, :cond_6

    add-int/2addr v13, v12

    .line 578
    iget v7, v14, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$PaletteEntry;->index:I

    invoke-virtual {v3, v13, v7}, Ljava/awt/image/DataBuffer;->setElem(II)V

    goto :goto_5

    :cond_6
    add-int/2addr v13, v12

    .line 580
    invoke-virtual {v14}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$PaletteEntry;->getBestARGB()I

    move-result v7

    invoke-virtual {v3, v13, v7}, Ljava/awt/image/DataBuffer;->setElem(II)V

    :goto_5
    move v13, v15

    const/4 v7, 0x1

    goto :goto_4

    :cond_7
    add-int/lit8 v10, v10, 0x1

    const/4 v7, 0x1

    goto :goto_3

    :cond_8
    :goto_6
    if-eqz v11, :cond_9

    .line 587
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 588
    invoke-direct {v0, v2, v5}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->parseNextString(Lorg/apache/commons/imaging/common/BasicCParser;Ljava/lang/StringBuilder;)Z

    move-result v11

    goto :goto_6

    .line 591
    :cond_9
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/imaging/common/BasicCParser;->nextToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    .line 592
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 593
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "Last token wasn\'t \';\'"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    return-object v9

    :array_0
    .array-data 4
        0xff0000
        0xff00
        0xff
        -0x1000000
    .end array-data
.end method

.method private toColor(I)Ljava/lang/String;
    .locals 2

    .line 644
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    .line 645
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x6

    if-ge p1, v0, :cond_0

    .line 646
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v0, p1

    new-array p1, v0, [C

    const/16 v0, 0x30

    .line 647
    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([CC)V

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 650
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public dumpImageFile(Ljava/io/PrintWriter;Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 602
    invoke-direct {p0, p2}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->readXpmHeader(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;->dump(Ljava/io/PrintWriter;)V

    const/4 p0, 0x1

    return p0
.end method

.method protected getAcceptedExtensions()[Ljava/lang/String;
    .locals 0

    .line 127
    sget-object p0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-object p0
.end method

.method protected getAcceptedTypes()[Lorg/apache/commons/imaging/ImageFormat;
    .locals 2

    const/4 p0, 0x1

    .line 132
    new-array p0, p0, [Lorg/apache/commons/imaging/ImageFormat;

    sget-object v0, Lorg/apache/commons/imaging/ImageFormats;->XPM:Lorg/apache/commons/imaging/ImageFormats;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    return-object p0
.end method

.method public final getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/awt/image/BufferedImage;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 609
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->parseXpmHeader(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmParseResult;

    move-result-object p1

    .line 610
    iget-object p2, p1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmParseResult;->xpmHeader:Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;

    iget-object p1, p1, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmParseResult;->cParser:Lorg/apache/commons/imaging/common/BasicCParser;

    invoke-direct {p0, p2, p1}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->readXpmImage(Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;Lorg/apache/commons/imaging/common/BasicCParser;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultExtension()Ljava/lang/String;
    .locals 0

    const-string p0, ".xpm"

    return-object p0
.end method

.method public getICCProfileBytes(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/ImageInfo;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/apache/commons/imaging/ImageInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->readXpmHeader(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;

    move-result-object v0

    .line 147
    sget-object v1, Lorg/apache/commons/imaging/ImageInfo$ColorType;->BW:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    .line 148
    iget-object v2, v0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;->palette:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move/from16 v19, v3

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 150
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$PaletteEntry;

    .line 151
    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$PaletteEntry;->getBestARGB()I

    move-result v4

    const/high16 v5, -0x1000000

    and-int/2addr v4, v5

    if-eq v4, v5, :cond_1

    const/4 v4, 0x1

    move/from16 v19, v4

    .line 154
    :cond_1
    iget-boolean v4, v3, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$PaletteEntry;->haveColor:Z

    if-eqz v4, :cond_2

    .line 155
    sget-object v1, Lorg/apache/commons/imaging/ImageInfo$ColorType;->RGB:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    goto :goto_0

    .line 156
    :cond_2
    sget-object v4, Lorg/apache/commons/imaging/ImageInfo$ColorType;->RGB:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    if-eq v1, v4, :cond_0

    iget-boolean v4, v3, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$PaletteEntry;->haveGray:Z

    if-nez v4, :cond_3

    iget-boolean v3, v3, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$PaletteEntry;->haveGray4Level:Z

    if-eqz v3, :cond_0

    .line 158
    :cond_3
    sget-object v1, Lorg/apache/commons/imaging/ImageInfo$ColorType;->GRAYSCALE:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    goto :goto_0

    .line 161
    :cond_4
    new-instance v2, Lorg/apache/commons/imaging/ImageInfo;

    const-string v5, "XPM version 3"

    iget v3, v0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;->numCharsPerPixel:I

    mul-int/lit8 v6, v3, 0x8

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sget-object v8, Lorg/apache/commons/imaging/ImageFormats;->XPM:Lorg/apache/commons/imaging/ImageFormats;

    const-string v9, "X PixMap"

    iget v10, v0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;->height:I

    const-string v11, "image/x-xpixmap"

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    iget v0, v0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;->width:I

    const/16 v18, 0x0

    const/16 v20, 0x1

    sget-object v22, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->NONE:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    move-object v4, v2

    move/from16 v17, v0

    move-object/from16 v21, v1

    invoke-direct/range {v4 .. v22}, Lorg/apache/commons/imaging/ImageInfo;-><init>(Ljava/lang/String;ILjava/util/List;Lorg/apache/commons/imaging/ImageFormat;Ljava/lang/String;ILjava/lang/String;IIFIFIZZZLorg/apache/commons/imaging/ImageInfo$ColorType;Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;)V

    return-object v2
.end method

.method public getImageSize(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/awt/Dimension;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->readXpmHeader(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;

    move-result-object p0

    .line 172
    new-instance p1, Ljava/awt/Dimension;

    iget p2, p0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;->width:I

    iget p0, p0, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;->height:I

    invoke-direct {p1, p2, p0}, Ljava/awt/Dimension;-><init>(II)V

    return-object p1
.end method

.method public getMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/common/ImageMetadata;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/apache/commons/imaging/common/ImageMetadata;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "X PixMap"

    return-object p0
.end method

.method public getXmpXml(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/image/BufferedImage;",
            "Ljava/io/OutputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    .line 657
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object p3, v0

    :goto_0
    const-string v0, "FORMAT"

    .line 660
    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "FORMAT"

    .line 661
    invoke-interface {p3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    :cond_1
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 665
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    .line 666
    new-instance p1, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown parameter: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 669
    :cond_2
    new-instance p3, Lorg/apache/commons/imaging/palette/PaletteFactory;

    invoke-direct {p3}, Lorg/apache/commons/imaging/palette/PaletteFactory;-><init>()V

    const/4 v0, 0x1

    .line 671
    invoke-virtual {p3, p1, v0}, Lorg/apache/commons/imaging/palette/PaletteFactory;->hasTransparency(Ljava/awt/image/BufferedImage;I)Z

    move-result v1

    const/4 v2, 0x0

    .line 675
    sget-object v3, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->WRITE_PALETTE:[C

    array-length v3, v3

    :cond_3
    :goto_1
    if-nez v2, :cond_5

    if-eqz v1, :cond_4

    add-int/lit8 v2, v3, -0x1

    goto :goto_2

    :cond_4
    move v2, v3

    .line 678
    :goto_2
    invoke-virtual {p3, p1, v2}, Lorg/apache/commons/imaging/palette/PaletteFactory;->makeExactRgbPaletteSimple(Ljava/awt/image/BufferedImage;I)Lorg/apache/commons/imaging/palette/SimplePalette;

    move-result-object v2

    if-nez v2, :cond_3

    .line 681
    sget-object v4, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->WRITE_PALETTE:[C

    array-length v4, v4

    mul-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 685
    :cond_5
    invoke-virtual {v2}, Lorg/apache/commons/imaging/palette/SimplePalette;->length()I

    move-result p3

    if-eqz v1, :cond_6

    add-int/lit8 p3, p3, 0x1

    :cond_6
    const-string v1, "/* XPM */\n"

    const-string v3, "US-ASCII"

    .line 691
    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 692
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "static char *"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->randomName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "[] = {\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "US-ASCII"

    .line 693
    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 694
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\",\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "US-ASCII"

    .line 696
    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write([B)V

    const/4 v1, 0x0

    move v3, v1

    :goto_3
    if-ge v3, p3, :cond_8

    .line 700
    invoke-virtual {v2}, Lorg/apache/commons/imaging/palette/SimplePalette;->length()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 701
    invoke-virtual {v2, v3}, Lorg/apache/commons/imaging/palette/SimplePalette;->getEntry(I)I

    move-result v4

    invoke-direct {p0, v4}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->toColor(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_7
    const-string v4, "None"

    .line 705
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v3, v0}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->pixelsForIndex(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " c "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\",\n"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "US-ASCII"

    .line 707
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/OutputStream;->write([B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    const-string p3, ""

    move-object v3, p3

    move p3, v1

    .line 711
    :goto_5
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v4

    if-ge p3, v4, :cond_b

    const-string v4, "US-ASCII"

    .line 712
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write([B)V

    const-string v3, ",\n"

    const-string v4, "\""

    const-string v5, "US-ASCII"

    .line 715
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/OutputStream;->write([B)V

    move v4, v1

    .line 716
    :goto_6
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v5

    if-ge v4, v5, :cond_a

    .line 717
    invoke-virtual {p1, v4, p3}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v5

    const/high16 v6, -0x1000000

    and-int/2addr v6, v5

    if-nez v6, :cond_9

    .line 719
    invoke-virtual {v2}, Lorg/apache/commons/imaging/palette/SimplePalette;->length()I

    move-result v5

    invoke-direct {p0, v5, v0}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->pixelsForIndex(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    :cond_9
    const v6, 0xffffff

    and-int/2addr v5, v6

    .line 721
    invoke-virtual {v2, v5}, Lorg/apache/commons/imaging/palette/SimplePalette;->getPaletteIndex(I)I

    move-result v5

    invoke-direct {p0, v5, v0}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;->pixelsForIndex(II)Ljava/lang/String;

    move-result-object v5

    :goto_7
    const-string v6, "US-ASCII"

    .line 725
    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write([B)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_a
    const-string v4, "\""

    const-string v5, "US-ASCII"

    .line 728
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/OutputStream;->write([B)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_5

    :cond_b
    const-string p0, "\n};\n"

    const-string p1, "US-ASCII"

    .line 732
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
