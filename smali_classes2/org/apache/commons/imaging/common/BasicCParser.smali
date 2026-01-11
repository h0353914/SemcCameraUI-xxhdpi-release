.class public Lorg/apache/commons/imaging/common/BasicCParser;
.super Ljava/lang/Object;
.source "BasicCParser.java"


# instance fields
.field private final is:Ljava/io/PushbackInputStream;


# direct methods
.method public constructor <init>(Ljava/io/ByteArrayInputStream;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/io/PushbackInputStream;

    invoke-direct {v0, p1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/commons/imaging/common/BasicCParser;->is:Ljava/io/PushbackInputStream;

    return-void
.end method

.method public static preprocess(Ljava/io/InputStream;Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/io/ByteArrayOutputStream;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/io/ByteArrayOutputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 113
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-nez v0, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 115
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1
    const/4 v15, -0x1

    const/16 v3, 0x2a

    const/16 v4, 0x2f

    if-eq v7, v15, :cond_28

    if-eqz v9, :cond_8

    if-ne v7, v3, :cond_3

    if-eqz v10, :cond_1

    if-nez v5, :cond_1

    .line 120
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v10, 0x1

    :cond_2
    :goto_2
    const/16 v16, 0x1

    const/16 v17, 0x0

    goto/16 :goto_a

    :cond_3
    if-ne v7, v4, :cond_5

    if-eqz v10, :cond_4

    const/4 v5, 0x1

    const/4 v9, 0x0

    goto :goto_3

    :cond_4
    if-nez v5, :cond_2

    int-to-char v3, v7

    .line 130
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    if-eqz v10, :cond_6

    if-nez v5, :cond_6

    .line 135
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    if-nez v5, :cond_7

    int-to-char v3, v7

    .line 139
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7
    :goto_3
    const/4 v10, 0x0

    goto :goto_2

    :cond_8
    const/16 v15, 0x27

    const/16 v4, 0xd

    const/16 v3, 0x5c

    if-eqz v11, :cond_f

    if-ne v7, v3, :cond_a

    if-eqz v14, :cond_9

    .line 145
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 146
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_4
    const/4 v14, 0x0

    goto :goto_2

    :cond_9
    const/4 v14, 0x1

    goto :goto_2

    :cond_a
    if-ne v7, v15, :cond_c

    if-eqz v14, :cond_b

    .line 153
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v14, 0x0

    goto :goto_5

    :cond_b
    const/4 v11, 0x0

    .line 158
    :goto_5
    invoke-virtual {v2, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    :cond_c
    if-eq v7, v4, :cond_e

    const/16 v4, 0xa

    if-eq v7, v4, :cond_e

    if-eqz v14, :cond_d

    .line 163
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v14, 0x0

    .line 166
    :cond_d
    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 160
    :cond_e
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "Unterminated single quote in file"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    const/16 v15, 0x22

    if-eqz v12, :cond_15

    if-ne v7, v3, :cond_10

    if-eqz v14, :cond_9

    .line 171
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 172
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_4

    :cond_10
    if-ne v7, v15, :cond_12

    if-eqz v14, :cond_11

    .line 179
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v14, 0x0

    goto :goto_6

    :cond_11
    const/4 v12, 0x0

    .line 184
    :goto_6
    invoke-virtual {v2, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    :cond_12
    if-eq v7, v4, :cond_14

    const/16 v4, 0xa

    if-eq v7, v4, :cond_14

    if-eqz v14, :cond_13

    .line 189
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v14, 0x0

    .line 192
    :cond_13
    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_2

    .line 186
    :cond_14
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "Unterminated string in file"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    if-eqz v13, :cond_1b

    if-eq v7, v4, :cond_17

    const/16 v3, 0xa

    if-ne v7, v3, :cond_16

    goto :goto_7

    :cond_16
    int-to-char v3, v7

    .line 209
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 197
    :cond_17
    :goto_7
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/imaging/common/BasicCParser;->tokenizeRow(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 198
    array-length v4, v3

    const/4 v7, 0x2

    if-lt v4, v7, :cond_1a

    array-length v4, v3

    const/4 v13, 0x3

    if-gt v4, v13, :cond_1a

    const/4 v4, 0x0

    .line 201
    aget-object v15, v3, v4

    const-string v4, "define"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    const/16 v16, 0x1

    .line 205
    aget-object v4, v3, v16

    array-length v15, v3

    if-ne v15, v13, :cond_18

    aget-object v3, v3, v7

    goto :goto_8

    :cond_18
    const/4 v3, 0x0

    :goto_8
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    .line 207
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    move v13, v4

    move/from16 v17, v13

    goto/16 :goto_a

    :cond_19
    const/4 v4, 0x0

    .line 202
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid/unsupported preprocessor directive \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v3, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_1a
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "Bad preprocessor directive"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    const/16 v3, 0x2f

    const/16 v16, 0x1

    const/16 v17, 0x0

    if-ne v7, v3, :cond_1d

    if-eqz v8, :cond_1c

    .line 214
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_1c
    move/from16 v8, v16

    goto :goto_a

    :cond_1d
    const/16 v3, 0x2a

    if-ne v7, v3, :cond_20

    if-eqz v8, :cond_1f

    move/from16 v9, v16

    :cond_1e
    :goto_9
    move/from16 v8, v17

    goto :goto_a

    .line 222
    :cond_1f
    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_a

    :cond_20
    const/16 v3, 0x27

    if-ne v7, v3, :cond_22

    if-eqz v8, :cond_21

    const/16 v3, 0x2f

    .line 226
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 229
    :cond_21
    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move/from16 v11, v16

    goto :goto_9

    :cond_22
    const/16 v3, 0x2f

    if-ne v7, v15, :cond_24

    if-eqz v8, :cond_23

    .line 233
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 236
    :cond_23
    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move/from16 v12, v16

    goto :goto_9

    :cond_24
    const/16 v3, 0x23

    if-ne v7, v3, :cond_26

    if-eqz v1, :cond_25

    move/from16 v13, v16

    goto :goto_a

    .line 240
    :cond_25
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "Unexpected preprocessor directive"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    if-eqz v8, :cond_27

    const/16 v3, 0x2f

    .line 245
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 248
    :cond_27
    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v3, 0x20

    if-eq v7, v3, :cond_1e

    const/16 v3, 0x9

    if-eq v7, v3, :cond_1e

    if-eq v7, v4, :cond_1e

    const/16 v3, 0xa

    if-eq v7, v3, :cond_1e

    move/from16 v5, v16

    goto :goto_9

    .line 116
    :goto_a
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v7

    goto/16 :goto_1

    :cond_28
    if-eqz v8, :cond_29

    const/16 v0, 0x2f

    .line 257
    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_29
    if-eqz v10, :cond_2a

    const/16 v0, 0x2a

    .line 260
    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_2a
    if-nez v12, :cond_2c

    if-nez v9, :cond_2b

    return-object v2

    .line 266
    :cond_2b
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "Unterminated comment at the end of file"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_2c
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v1, "Unterminated string at the end of file"

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static tokenizeRow(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    .line 272
    const-string v0, "[ \t]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 274
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v4, p0, v2

    if-eqz v4, :cond_0

    .line 275
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 279
    :cond_1
    new-array v0, v3, [Ljava/lang/String;

    .line 281
    array-length v2, p0

    move v3, v1

    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v4, p0, v1

    if-eqz v4, :cond_2

    .line 282
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    add-int/lit8 v5, v3, 0x1

    .line 283
    aput-object v4, v0, v3

    move v3, v5

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public static unescapeString(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 291
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_17

    const/4 v0, 0x0

    .line 295
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_16

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_16

    move v5, v0

    move v2, v4

    .line 301
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v4

    if-ge v2, v6, :cond_14

    .line 302
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x5c

    if-eqz v5, :cond_11

    if-ne v6, v7, :cond_0

    .line 305
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_0
    if-ne v6, v3, :cond_1

    .line 307
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_1
    const/16 v5, 0x27

    if-ne v6, v5, :cond_2

    .line 309
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_2
    const/16 v5, 0x78

    if-ne v6, v5, :cond_4

    add-int/lit8 v5, v2, 0x2

    .line 311
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    add-int/lit8 v2, v2, 0x1

    .line 316
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 317
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 321
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x10

    invoke-static {v2, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-char v2, v2

    .line 327
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v5

    goto/16 :goto_4

    :catch_0
    move-exception p0

    .line 323
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string v0, "Parsing XPM file failed, hex constant invalid"

    invoke-direct {p1, v0, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 312
    :cond_3
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Parsing XPM file failed, hex constant in string too short"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    const/16 v5, 0x37

    const/16 v7, 0x30

    if-eq v6, v7, :cond_d

    const/16 v8, 0x31

    if-eq v6, v8, :cond_d

    const/16 v8, 0x32

    if-eq v6, v8, :cond_d

    const/16 v8, 0x33

    if-eq v6, v8, :cond_d

    const/16 v8, 0x34

    if-eq v6, v8, :cond_d

    const/16 v8, 0x35

    if-eq v6, v8, :cond_d

    const/16 v8, 0x36

    if-eq v6, v8, :cond_d

    if-ne v6, v5, :cond_5

    goto :goto_1

    :cond_5
    const/16 v5, 0x61

    if-ne v6, v5, :cond_6

    const/4 v5, 0x7

    .line 347
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_6
    const/16 v5, 0x62

    if-ne v6, v5, :cond_7

    const/16 v5, 0x8

    .line 349
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_7
    const/16 v5, 0x66

    if-ne v6, v5, :cond_8

    const/16 v5, 0xc

    .line 351
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_8
    const/16 v5, 0x6e

    if-ne v6, v5, :cond_9

    const/16 v5, 0xa

    .line 353
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_9
    const/16 v5, 0x72

    if-ne v6, v5, :cond_a

    const/16 v5, 0xd

    .line 355
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_a
    const/16 v5, 0x74

    if-ne v6, v5, :cond_b

    const/16 v5, 0x9

    .line 357
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_b
    const/16 v5, 0x76

    if-ne v6, v5, :cond_c

    const/16 v5, 0xb

    .line 359
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 361
    :cond_c
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Parsing XPM file failed, invalid escape sequence"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    :goto_1
    add-int/lit8 v6, v2, 0x1

    .line 331
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v6, v8, :cond_e

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-gt v7, v8, :cond_e

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-gt v6, v5, :cond_e

    move v6, v1

    goto :goto_2

    :cond_e
    move v6, v4

    :goto_2
    add-int/lit8 v8, v2, 0x2

    .line 335
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_f

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-gt v7, v9, :cond_f

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-gt v8, v5, :cond_f

    add-int/lit8 v6, v6, 0x1

    :cond_f
    move v5, v0

    move v8, v5

    :goto_3
    if-ge v5, v6, :cond_10

    mul-int/lit8 v8, v8, 0x8

    add-int v9, v2, v5

    .line 342
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    sub-int/2addr v9, v7

    add-int/2addr v8, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_10
    add-int/lit8 v6, v6, -0x1

    add-int/2addr v2, v6

    int-to-char v5, v8

    .line 345
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_4
    move v5, v0

    goto :goto_5

    :cond_11
    if-ne v6, v7, :cond_12

    move v5, v4

    goto :goto_5

    :cond_12
    if-eq v6, v3, :cond_13

    .line 372
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_5
    add-int/2addr v2, v4

    goto/16 :goto_0

    .line 369
    :cond_13
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Parsing XPM file failed, extra \'\"\' found in string"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    if-nez v5, :cond_15

    return-void

    .line 377
    :cond_15
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Parsing XPM file failed, unterminated escape sequence found in string"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 297
    :cond_16
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Parsing XPM file failed, string not surrounded by \'\"\'"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 292
    :cond_17
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Parsing XPM file failed, string is too short"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public nextToken()Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    iget-object v1, p0, Lorg/apache/commons/imaging/common/BasicCParser;->is:Ljava/io/PushbackInputStream;

    invoke-virtual {v1}, Ljava/io/PushbackInputStream;->read()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    const/4 v6, -0x1

    if-eq v1, v6, :cond_f

    const/16 v6, 0xa

    const/16 v7, 0xd

    const/16 v8, 0x22

    if-eqz v4, :cond_4

    const/16 v9, 0x5c

    if-ne v1, v9, :cond_0

    .line 51
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    xor-int/lit8 v5, v5, 0x1

    goto/16 :goto_5

    :cond_0
    if-ne v1, v8, :cond_2

    .line 54
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-nez v5, :cond_1

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_1
    move v5, v2

    goto/16 :goto_5

    :cond_2
    if-eq v1, v7, :cond_3

    if-eq v1, v6, :cond_3

    int-to-char v1, v1

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 60
    :cond_3
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v0, "Unterminated string in XPM file"

    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    const/16 v9, 0x5f

    if-eqz v3, :cond_7

    .line 67
    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v6

    if-nez v6, :cond_6

    if-ne v1, v9, :cond_5

    goto :goto_2

    .line 70
    :cond_5
    iget-object p0, p0, Lorg/apache/commons/imaging/common/BasicCParser;->is:Ljava/io/PushbackInputStream;

    invoke-virtual {p0, v1}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_2
    int-to-char v1, v1

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :cond_7
    const/4 v10, 0x1

    if-ne v1, v8, :cond_8

    .line 75
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v4, v10

    goto :goto_5

    .line 77
    :cond_8
    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v8

    if-nez v8, :cond_d

    if-ne v1, v9, :cond_9

    goto :goto_4

    :cond_9
    const/16 v8, 0x7b

    if-eq v1, v8, :cond_c

    const/16 v8, 0x7d

    if-eq v1, v8, :cond_c

    const/16 v8, 0x5b

    if-eq v1, v8, :cond_c

    const/16 v8, 0x5d

    if-eq v1, v8, :cond_c

    const/16 v8, 0x2a

    if-eq v1, v8, :cond_c

    const/16 v8, 0x3b

    if-eq v1, v8, :cond_c

    const/16 v8, 0x3d

    if-eq v1, v8, :cond_c

    const/16 v8, 0x2c

    if-ne v1, v8, :cond_a

    goto :goto_3

    :cond_a
    const/16 v8, 0x20

    if-eq v1, v8, :cond_e

    const/16 v8, 0x9

    if-eq v1, v8, :cond_e

    if-eq v1, v7, :cond_e

    if-ne v1, v6, :cond_b

    goto :goto_5

    .line 87
    :cond_b
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unhandled/invalid character \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' found in XPM file"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    :goto_3
    int-to-char p0, v1

    .line 82
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    :goto_4
    int-to-char v1, v1

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v10

    .line 48
    :cond_e
    :goto_5
    iget-object v1, p0, Lorg/apache/commons/imaging/common/BasicCParser;->is:Ljava/io/PushbackInputStream;

    invoke-virtual {v1}, Ljava/io/PushbackInputStream;->read()I

    move-result v1

    goto/16 :goto_0

    :cond_f
    if-eqz v3, :cond_10

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_10
    if-nez v4, :cond_11

    const/4 p0, 0x0

    return-object p0

    .line 98
    :cond_11
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string v0, "Unterminated string ends XMP file"

    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
