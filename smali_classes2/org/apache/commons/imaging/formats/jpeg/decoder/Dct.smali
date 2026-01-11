.class final Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;
.super Ljava/lang/Object;
.source "Dct.java"


# static fields
.field private static final A1:F

.field private static final A2:F

.field private static final A3:F

.field private static final A4:F

.field private static final A5:F

.field private static final C2:F

.field private static final C4:F

.field private static final C6:F

.field private static final DCT_SCALING_FACTORS:[F

.field private static final IDCT_SCALING_FACTORS:[F

.field private static final Q:F

.field private static final R:F


# direct methods
.method static constructor <clinit>()V
    .locals 30

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 67
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    div-double/2addr v4, v2

    double-to-float v2, v4

    const-wide v3, 0x3fc921fb54442d18L    # 0.19634954084936207

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x3fd0000000000000L    # 0.25

    div-double v5, v7, v5

    double-to-float v5, v5

    const-wide v9, 0x3fd921fb54442d18L    # 0.39269908169872414

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    div-double v11, v7, v11

    double-to-float v6, v11

    const-wide v11, 0x3fe2d97c7f3321d2L    # 0.5890486225480862

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    div-double v13, v7, v13

    double-to-float v13, v13

    const-wide v14, 0x3fe921fb54442d18L    # 0.7853981633974483

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    div-double v14, v7, v16

    double-to-float v14, v14

    const-wide v15, 0x3fef6a7a2955385eL    # 0.9817477042468103

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    div-double v11, v7, v18

    double-to-float v11, v11

    const-wide v18, 0x3ff2d97c7f3321d2L    # 1.1780972450961724

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    div-double v9, v7, v22

    double-to-float v9, v9

    const-wide v22, 0x3ff5fdbbe9bba775L    # 1.3744467859455345

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    div-double v7, v7, v24

    double-to-float v7, v7

    const/16 v8, 0x8

    new-array v10, v8, [F

    const/4 v12, 0x0

    aput v2, v10, v12

    const/4 v2, 0x1

    aput v5, v10, v2

    const/4 v5, 0x2

    aput v6, v10, v5

    const/4 v6, 0x3

    aput v13, v10, v6

    const/4 v13, 0x4

    aput v14, v10, v13

    const/4 v14, 0x5

    aput v11, v10, v14

    const/4 v11, 0x6

    aput v9, v10, v11

    const/4 v9, 0x7

    aput v7, v10, v9

    sput-object v10, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->DCT_SCALING_FACTORS:[F

    const-wide/high16 v24, 0x4020000000000000L    # 8.0

    .line 77
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v26

    div-double v24, v24, v26

    const-wide/high16 v26, 0x3fb0000000000000L    # 0.0625

    mul-double v0, v24, v26

    double-to-float v0, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    const-wide/high16 v24, 0x4010000000000000L    # 4.0

    mul-double v3, v3, v24

    const-wide/high16 v26, 0x3fc0000000000000L    # 0.125

    mul-double v3, v3, v26

    double-to-float v1, v3

    const-wide v3, 0x3fd921fb54442d18L    # 0.39269908169872414

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    mul-double v28, v28, v24

    mul-double v3, v28, v26

    double-to-float v3, v3

    const-wide v20, 0x3fe2d97c7f3321d2L    # 0.5890486225480862

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    mul-double v20, v20, v24

    mul-double v9, v20, v26

    double-to-float v7, v9

    const-wide v9, 0x3fe921fb54442d18L    # 0.7853981633974483

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    mul-double v20, v20, v24

    mul-double v9, v20, v26

    double-to-float v9, v9

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double v15, v15, v24

    mul-double v14, v15, v26

    double-to-float v14, v14

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double v15, v15, v24

    mul-double v10, v15, v26

    double-to-float v10, v10

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double v15, v15, v24

    move/from16 v21, v14

    mul-double v13, v15, v26

    double-to-float v13, v13

    new-array v8, v8, [F

    aput v0, v8, v12

    aput v1, v8, v2

    aput v3, v8, v5

    aput v7, v8, v6

    const/4 v0, 0x4

    aput v9, v8, v0

    const/4 v0, 0x5

    aput v21, v8, v0

    const/4 v0, 0x6

    aput v10, v8, v0

    const/4 v0, 0x7

    aput v13, v8, v0

    sput-object v8, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->IDCT_SCALING_FACTORS:[F

    const-wide v0, 0x3fe921fb54442d18L    # 0.7853981633974483

    .line 87
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v0, v2

    sput v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A1:F

    const-wide v1, 0x3fd921fb54442d18L    # 0.39269908169872414

    .line 88
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    sub-double/2addr v3, v5

    double-to-float v3, v3

    sput v3, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A2:F

    .line 90
    sput v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A3:F

    .line 91
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    add-double/2addr v3, v5

    double-to-float v0, v3

    sput v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A4:F

    .line 93
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v0, v3

    sput v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A5:F

    .line 95
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->C2:F

    const-wide v4, 0x3fe921fb54442d18L    # 0.7853981633974483

    .line 96
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-float v1, v4

    sput v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->C4:F

    .line 97
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-float v1, v4

    sput v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->C6:F

    sub-float v2, v0, v1

    .line 98
    sput v2, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->Q:F

    add-float/2addr v0, v1

    .line 99
    sput v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->R:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forwardDCT8([F)V
    .locals 20

    const/4 v0, 0x0

    .line 140
    aget v1, p0, v0

    const/4 v2, 0x7

    aget v3, p0, v2

    add-float v4, v1, v3

    const/4 v5, 0x1

    .line 141
    aget v6, p0, v5

    const/4 v7, 0x6

    aget v8, p0, v7

    add-float v9, v6, v8

    const/4 v10, 0x2

    .line 142
    aget v11, p0, v10

    const/4 v12, 0x5

    aget v13, p0, v12

    add-float v14, v11, v13

    const/4 v15, 0x3

    .line 143
    aget v16, p0, v15

    const/16 v17, 0x4

    aget v18, p0, v17

    add-float v19, v16, v18

    sub-float v16, v16, v18

    sub-float/2addr v11, v13

    sub-float/2addr v6, v8

    sub-float/2addr v1, v3

    add-float v3, v4, v19

    add-float v8, v9, v14

    sub-float/2addr v9, v14

    sub-float v4, v4, v19

    add-float v16, v16, v11

    add-float/2addr v11, v6

    add-float/2addr v6, v1

    add-float/2addr v9, v4

    .line 161
    sget v13, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A1:F

    mul-float/2addr v9, v13

    sub-float v13, v6, v16

    .line 162
    sget v14, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A5:F

    mul-float/2addr v13, v14

    .line 163
    sget v14, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A2:F

    mul-float v16, v16, v14

    sub-float v16, v16, v13

    .line 164
    sget v14, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A3:F

    mul-float/2addr v11, v14

    .line 165
    sget v14, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A4:F

    mul-float/2addr v6, v14

    sub-float/2addr v6, v13

    add-float v13, v1, v11

    sub-float/2addr v1, v11

    add-float v11, v3, v8

    .line 170
    aput v11, p0, v0

    sub-float/2addr v3, v8

    .line 171
    aput v3, p0, v17

    add-float v0, v4, v9

    .line 172
    aput v0, p0, v10

    sub-float/2addr v4, v9

    .line 173
    aput v4, p0, v7

    add-float v0, v1, v16

    .line 174
    aput v0, p0, v12

    add-float v0, v13, v6

    .line 175
    aput v0, p0, v5

    sub-float/2addr v13, v6

    .line 176
    aput v13, p0, v2

    sub-float v1, v1, v16

    .line 177
    aput v1, p0, v15

    return-void
.end method

.method public static forwardDCT8x8([F)V
    .locals 22

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    mul-int/lit8 v2, v1, 0x8

    .line 187
    aget v3, p0, v2

    add-int/lit8 v4, v2, 0x7

    aget v5, p0, v4

    add-float v6, v3, v5

    add-int/lit8 v7, v2, 0x1

    .line 188
    aget v8, p0, v7

    add-int/lit8 v9, v2, 0x6

    aget v10, p0, v9

    add-float v11, v8, v10

    add-int/lit8 v12, v2, 0x2

    .line 189
    aget v13, p0, v12

    add-int/lit8 v14, v2, 0x5

    aget v15, p0, v14

    add-float v16, v13, v15

    add-int/lit8 v17, v2, 0x3

    .line 190
    aget v18, p0, v17

    add-int/lit8 v19, v2, 0x4

    aget v20, p0, v19

    add-float v21, v18, v20

    sub-float v18, v18, v20

    sub-float/2addr v13, v15

    sub-float/2addr v8, v10

    sub-float/2addr v3, v5

    add-float v5, v6, v21

    add-float v10, v11, v16

    sub-float v11, v11, v16

    sub-float v6, v6, v21

    add-float v18, v18, v13

    add-float/2addr v13, v8

    add-float/2addr v8, v3

    add-float/2addr v11, v6

    .line 203
    sget v15, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A1:F

    mul-float/2addr v11, v15

    sub-float v15, v8, v18

    .line 204
    sget v16, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A5:F

    mul-float v15, v15, v16

    .line 205
    sget v16, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A2:F

    mul-float v18, v18, v16

    sub-float v18, v18, v15

    .line 206
    sget v16, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A3:F

    mul-float v13, v13, v16

    .line 207
    sget v16, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A4:F

    mul-float v8, v8, v16

    sub-float/2addr v8, v15

    add-float v15, v3, v13

    sub-float/2addr v3, v13

    add-float v13, v5, v10

    .line 210
    aput v13, p0, v2

    sub-float/2addr v5, v10

    .line 211
    aput v5, p0, v19

    add-float v2, v6, v11

    .line 212
    aput v2, p0, v12

    sub-float/2addr v6, v11

    .line 213
    aput v6, p0, v9

    add-float v2, v3, v18

    .line 214
    aput v2, p0, v14

    add-float v2, v15, v8

    .line 215
    aput v2, p0, v7

    sub-float/2addr v15, v8

    .line 216
    aput v15, p0, v4

    sub-float v3, v3, v18

    .line 217
    aput v3, p0, v17

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v0, v2, :cond_1

    .line 221
    aget v1, p0, v0

    add-int/lit8 v3, v0, 0x38

    aget v4, p0, v3

    add-float v5, v1, v4

    add-int/lit8 v6, v0, 0x8

    .line 222
    aget v7, p0, v6

    add-int/lit8 v8, v0, 0x30

    aget v9, p0, v8

    add-float v10, v7, v9

    add-int/lit8 v11, v0, 0x10

    .line 223
    aget v12, p0, v11

    add-int/lit8 v13, v0, 0x28

    aget v14, p0, v13

    add-float v15, v12, v14

    add-int/lit8 v16, v0, 0x18

    .line 224
    aget v17, p0, v16

    add-int/lit8 v18, v0, 0x20

    aget v19, p0, v18

    add-float v20, v17, v19

    sub-float v17, v17, v19

    sub-float/2addr v12, v14

    sub-float/2addr v7, v9

    sub-float/2addr v1, v4

    add-float v4, v5, v20

    add-float v9, v10, v15

    sub-float/2addr v10, v15

    sub-float v5, v5, v20

    add-float v17, v17, v12

    add-float/2addr v12, v7

    add-float/2addr v7, v1

    add-float/2addr v10, v5

    .line 237
    sget v14, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A1:F

    mul-float/2addr v10, v14

    sub-float v14, v7, v17

    .line 238
    sget v15, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A5:F

    mul-float/2addr v14, v15

    .line 239
    sget v15, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A2:F

    mul-float v17, v17, v15

    sub-float v17, v17, v14

    .line 240
    sget v15, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A3:F

    mul-float/2addr v12, v15

    .line 241
    sget v15, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A4:F

    mul-float/2addr v7, v15

    sub-float/2addr v7, v14

    add-float v14, v1, v12

    sub-float/2addr v1, v12

    add-float v12, v4, v9

    .line 244
    aput v12, p0, v0

    sub-float/2addr v4, v9

    .line 245
    aput v4, p0, v18

    add-float v4, v5, v10

    .line 246
    aput v4, p0, v11

    sub-float/2addr v5, v10

    .line 247
    aput v5, p0, v8

    add-float v4, v1, v17

    .line 248
    aput v4, p0, v13

    add-float v4, v14, v7

    .line 249
    aput v4, p0, v6

    sub-float/2addr v14, v7

    .line 250
    aput v14, p0, v3

    sub-float v1, v1, v17

    .line 251
    aput v1, p0, v16

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static inverseDCT8([F)V
    .locals 18

    const/4 v0, 0x2

    .line 263
    aget v1, p0, v0

    const/4 v2, 0x6

    aget v3, p0, v2

    sub-float v4, v1, v3

    add-float/2addr v1, v3

    const/4 v3, 0x5

    .line 265
    aget v5, p0, v3

    const/4 v6, 0x3

    aget v7, p0, v6

    sub-float v8, v5, v7

    const/4 v9, 0x1

    .line 266
    aget v10, p0, v9

    const/4 v11, 0x7

    aget v12, p0, v11

    add-float v13, v10, v12

    add-float/2addr v7, v5

    sub-float v5, v13, v7

    sub-float/2addr v10, v12

    add-float/2addr v13, v7

    .line 273
    sget v7, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->C6:F

    add-float v12, v8, v10

    mul-float/2addr v7, v12

    .line 276
    sget v12, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->Q:F

    mul-float/2addr v12, v8

    add-float/2addr v12, v7

    .line 277
    sget v8, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->R:F

    mul-float/2addr v8, v10

    sub-float/2addr v8, v7

    .line 278
    sget v7, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->C4:F

    mul-float/2addr v4, v7

    mul-float/2addr v5, v7

    sub-float/2addr v8, v13

    sub-float v5, v8, v5

    const/4 v7, 0x0

    .line 284
    aget v10, p0, v7

    const/4 v14, 0x4

    aget v15, p0, v14

    sub-float v16, v10, v15

    sub-float/2addr v4, v1

    add-float/2addr v10, v15

    add-float v15, v16, v4

    add-float v17, v10, v1

    sub-float v16, v16, v4

    sub-float/2addr v10, v1

    add-float/2addr v12, v5

    add-float v1, v17, v13

    .line 298
    aput v1, p0, v7

    add-float v1, v15, v8

    .line 299
    aput v1, p0, v9

    sub-float v1, v16, v5

    .line 300
    aput v1, p0, v0

    add-float v0, v10, v12

    .line 301
    aput v0, p0, v6

    sub-float/2addr v10, v12

    .line 302
    aput v10, p0, v14

    add-float v16, v16, v5

    .line 303
    aput v16, p0, v3

    sub-float/2addr v15, v8

    .line 304
    aput v15, p0, v2

    sub-float v17, v17, v13

    .line 305
    aput v17, p0, v11

    return-void
.end method

.method public static inverseDCT8x8([F)V
    .locals 20

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    mul-int/lit8 v2, v1, 0x8

    add-int/lit8 v3, v2, 0x2

    .line 315
    aget v4, p0, v3

    add-int/lit8 v5, v2, 0x6

    aget v6, p0, v5

    sub-float v7, v4, v6

    add-float/2addr v4, v6

    add-int/lit8 v6, v2, 0x5

    .line 317
    aget v8, p0, v6

    add-int/lit8 v9, v2, 0x3

    aget v10, p0, v9

    sub-float v11, v8, v10

    add-int/lit8 v12, v2, 0x1

    .line 318
    aget v13, p0, v12

    add-int/lit8 v14, v2, 0x7

    aget v15, p0, v14

    add-float v16, v13, v15

    add-float/2addr v10, v8

    sub-float v8, v16, v10

    sub-float/2addr v13, v15

    add-float v16, v16, v10

    .line 323
    sget v10, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->C6:F

    add-float v15, v11, v13

    mul-float/2addr v10, v15

    .line 324
    sget v15, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->Q:F

    mul-float/2addr v15, v11

    add-float/2addr v15, v10

    .line 325
    sget v11, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->R:F

    mul-float/2addr v11, v13

    sub-float/2addr v11, v10

    .line 326
    sget v10, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->C4:F

    mul-float/2addr v7, v10

    mul-float/2addr v8, v10

    sub-float v11, v11, v16

    sub-float v8, v11, v8

    .line 330
    aget v10, p0, v2

    add-int/lit8 v13, v2, 0x4

    aget v17, p0, v13

    sub-float v18, v10, v17

    sub-float/2addr v7, v4

    add-float v10, v10, v17

    add-float v17, v18, v7

    add-float v19, v10, v4

    sub-float v18, v18, v7

    sub-float/2addr v10, v4

    add-float/2addr v15, v8

    add-float v4, v19, v16

    .line 339
    aput v4, p0, v2

    add-float v2, v17, v11

    .line 340
    aput v2, p0, v12

    sub-float v2, v18, v8

    .line 341
    aput v2, p0, v3

    add-float v2, v10, v15

    .line 342
    aput v2, p0, v9

    sub-float/2addr v10, v15

    .line 343
    aput v10, p0, v13

    add-float v18, v18, v8

    .line 344
    aput v18, p0, v6

    sub-float v17, v17, v11

    .line 345
    aput v17, p0, v5

    sub-float v19, v19, v16

    .line 346
    aput v19, p0, v14

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v0, v2, :cond_1

    add-int/lit8 v1, v0, 0x10

    .line 350
    aget v3, p0, v1

    add-int/lit8 v4, v0, 0x30

    aget v5, p0, v4

    sub-float v6, v3, v5

    add-float/2addr v3, v5

    add-int/lit8 v5, v0, 0x28

    .line 352
    aget v7, p0, v5

    add-int/lit8 v8, v0, 0x18

    aget v9, p0, v8

    sub-float v10, v7, v9

    add-int/lit8 v11, v0, 0x8

    .line 353
    aget v12, p0, v11

    add-int/lit8 v13, v0, 0x38

    aget v14, p0, v13

    add-float v15, v12, v14

    add-float/2addr v9, v7

    sub-float v7, v15, v9

    sub-float/2addr v12, v14

    add-float/2addr v15, v9

    .line 358
    sget v9, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->C6:F

    add-float v14, v10, v12

    mul-float/2addr v9, v14

    .line 359
    sget v14, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->Q:F

    mul-float/2addr v14, v10

    add-float/2addr v14, v9

    .line 360
    sget v10, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->R:F

    mul-float/2addr v10, v12

    sub-float/2addr v10, v9

    .line 361
    sget v9, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->C4:F

    mul-float/2addr v6, v9

    mul-float/2addr v7, v9

    sub-float/2addr v10, v15

    sub-float v7, v10, v7

    .line 365
    aget v9, p0, v0

    add-int/lit8 v12, v0, 0x20

    aget v16, p0, v12

    sub-float v17, v9, v16

    sub-float/2addr v6, v3

    add-float v9, v9, v16

    add-float v16, v17, v6

    add-float v18, v9, v3

    sub-float v17, v17, v6

    sub-float/2addr v9, v3

    add-float/2addr v14, v7

    add-float v3, v18, v15

    .line 374
    aput v3, p0, v0

    add-float v3, v16, v10

    .line 375
    aput v3, p0, v11

    sub-float v3, v17, v7

    .line 376
    aput v3, p0, v1

    add-float v1, v9, v14

    .line 377
    aput v1, p0, v8

    sub-float/2addr v9, v14

    .line 378
    aput v9, p0, v12

    add-float v17, v17, v7

    .line 379
    aput v17, p0, v5

    sub-float v16, v16, v10

    .line 380
    aput v16, p0, v4

    sub-float v18, v18, v15

    .line 381
    aput v18, p0, v13

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static scaleDequantizationMatrix([F)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_0

    mul-int/lit8 v4, v1, 0x8

    add-int/2addr v4, v3

    .line 128
    aget v5, p0, v4

    sget-object v6, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->IDCT_SCALING_FACTORS:[F

    aget v7, v6, v1

    aget v6, v6, v3

    mul-float/2addr v7, v6

    mul-float/2addr v5, v7

    aput v5, p0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static scaleDequantizationVector([F)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 112
    aget v1, p0, v0

    sget-object v2, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->IDCT_SCALING_FACTORS:[F

    aget v2, v2, v0

    mul-float/2addr v1, v2

    aput v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static scaleQuantizationMatrix([F)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_0

    mul-int/lit8 v4, v1, 0x8

    add-int/2addr v4, v3

    .line 119
    aget v5, p0, v4

    sget-object v6, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->DCT_SCALING_FACTORS:[F

    aget v7, v6, v1

    aget v6, v6, v3

    mul-float/2addr v7, v6

    mul-float/2addr v5, v7

    aput v5, p0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static scaleQuantizationVector([F)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 106
    aget v1, p0, v0

    sget-object v2, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->DCT_SCALING_FACTORS:[F

    aget v2, v2, v0

    mul-float/2addr v1, v2

    aput v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
