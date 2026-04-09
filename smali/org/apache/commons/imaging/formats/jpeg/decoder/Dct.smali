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
    .locals 19

    const/16 v0, 0x8

    .line 67
    new-array v1, v0, [F

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    div-double/2addr v6, v4

    double-to-float v4, v6

    const/4 v5, 0x0

    aput v4, v1, v5

    const-wide v6, 0x3fc921fb54442d18L    # 0.19634954084936207

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x3fd0000000000000L    # 0.25

    div-double v8, v10, v8

    double-to-float v4, v8

    const/4 v8, 0x1

    aput v4, v1, v8

    const-wide v12, 0x3fd921fb54442d18L    # 0.39269908169872414

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    div-double v14, v10, v14

    double-to-float v4, v14

    const/4 v9, 0x2

    aput v4, v1, v9

    const-wide v14, 0x3fe2d97c7f3321d2L    # 0.5890486225480862

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    div-double v14, v10, v16

    double-to-float v4, v14

    const/4 v14, 0x3

    aput v4, v1, v14

    const-wide v14, 0x3fe921fb54442d18L    # 0.7853981633974483

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    div-double v14, v10, v16

    double-to-float v4, v14

    const/4 v14, 0x4

    aput v4, v1, v14

    const-wide v14, 0x3fef6a7a2955385eL    # 0.9817477042468103

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    div-double v14, v10, v14

    double-to-float v4, v14

    const/4 v14, 0x5

    aput v4, v1, v14

    const-wide v14, 0x3ff2d97c7f3321d2L    # 1.1780972450961724

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    div-double v14, v10, v16

    double-to-float v4, v14

    const/4 v14, 0x6

    aput v4, v1, v14

    const-wide v14, 0x3ff5fdbbe9bba775L    # 1.3744467859455345

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    div-double/2addr v10, v14

    double-to-float v4, v10

    const/4 v10, 0x7

    aput v4, v1, v10

    sput-object v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->DCT_SCALING_FACTORS:[F

    .line 77
    new-array v0, v0, [F

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    const-wide/high16 v14, 0x4020000000000000L    # 8.0

    div-double/2addr v14, v10

    const-wide/high16 v10, 0x3fb0000000000000L    # 0.0625

    mul-double/2addr v14, v10

    double-to-float v1, v14

    aput v1, v0, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    mul-double/2addr v4, v6

    const-wide/high16 v10, 0x3fc0000000000000L    # 0.125

    mul-double/2addr v4, v10

    double-to-float v1, v4

    aput v1, v0, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v6

    mul-double/2addr v4, v10

    double-to-float v1, v4

    aput v1, v0, v9

    const-wide v4, 0x3fe2d97c7f3321d2L    # 0.5890486225480862

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v6

    mul-double/2addr v4, v10

    double-to-float v1, v4

    const/4 v4, 0x3

    aput v1, v0, v4

    const-wide v4, 0x3fe921fb54442d18L    # 0.7853981633974483

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v6

    mul-double/2addr v8, v10

    double-to-float v1, v8

    const/4 v4, 0x4

    aput v1, v0, v4

    const-wide v4, 0x3fef6a7a2955385eL    # 0.9817477042468103

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v6

    mul-double/2addr v4, v10

    double-to-float v1, v4

    const/4 v4, 0x5

    aput v1, v0, v4

    const-wide v4, 0x3ff2d97c7f3321d2L    # 1.1780972450961724

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v6

    mul-double/2addr v8, v10

    double-to-float v1, v8

    const/4 v4, 0x6

    aput v1, v0, v4

    const-wide v4, 0x3ff5fdbbe9bba775L    # 1.3744467859455345

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v6, v4

    mul-double/2addr v6, v10

    double-to-float v1, v6

    const/4 v4, 0x7

    aput v1, v0, v4

    sput-object v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->IDCT_SCALING_FACTORS:[F

    const-wide v0, 0x3fe921fb54442d18L    # 0.7853981633974483

    .line 87
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v0, v4

    sput v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A1:F

    .line 88
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide v4, 0x3ff2d97c7f3321d2L    # 1.1780972450961724

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    sub-double/2addr v0, v6

    double-to-float v0, v0

    sput v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A2:F

    .line 90
    sget v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A1:F

    sput v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A3:F

    .line 91
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    add-double/2addr v0, v6

    double-to-float v0, v0

    sput v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A4:F

    .line 93
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A5:F

    .line 95
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->C2:F

    const-wide v0, 0x3fe921fb54442d18L    # 0.7853981633974483

    .line 96
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->C4:F

    .line 97
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v2, v0

    double-to-float v0, v2

    sput v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->C6:F

    .line 98
    sget v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->C2:F

    sget v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->C6:F

    sub-float/2addr v0, v1

    sput v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->Q:F

    .line 99
    sget v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->C2:F

    sget v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->C6:F

    add-float/2addr v0, v1

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
    .locals 18

    const/4 v0, 0x0

    .line 140
    aget v1, p0, v0

    const/4 v2, 0x7

    aget v3, p0, v2

    add-float/2addr v1, v3

    const/4 v3, 0x1

    .line 141
    aget v4, p0, v3

    const/4 v5, 0x6

    aget v6, p0, v5

    add-float/2addr v4, v6

    const/4 v6, 0x2

    .line 142
    aget v7, p0, v6

    const/4 v8, 0x5

    aget v9, p0, v8

    add-float/2addr v7, v9

    const/4 v9, 0x3

    .line 143
    aget v10, p0, v9

    const/4 v11, 0x4

    aget v12, p0, v11

    add-float/2addr v10, v12

    .line 144
    aget v12, p0, v9

    aget v13, p0, v11

    sub-float/2addr v12, v13

    .line 145
    aget v13, p0, v6

    aget v14, p0, v8

    sub-float/2addr v13, v14

    .line 146
    aget v14, p0, v3

    aget v15, p0, v5

    sub-float/2addr v14, v15

    .line 147
    aget v15, p0, v0

    aget v16, p0, v2

    sub-float v15, v15, v16

    add-float v16, v1, v10

    add-float v17, v4, v7

    sub-float/2addr v4, v7

    sub-float/2addr v1, v10

    add-float/2addr v12, v13

    add-float/2addr v13, v14

    add-float/2addr v14, v15

    add-float/2addr v4, v1

    .line 161
    sget v7, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A1:F

    mul-float/2addr v4, v7

    sub-float v7, v14, v12

    .line 162
    sget v10, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A5:F

    mul-float/2addr v7, v10

    .line 163
    sget v10, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A2:F

    mul-float/2addr v12, v10

    sub-float/2addr v12, v7

    .line 164
    sget v10, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A3:F

    mul-float/2addr v13, v10

    .line 165
    sget v10, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A4:F

    mul-float/2addr v14, v10

    sub-float/2addr v14, v7

    add-float v7, v15, v13

    sub-float/2addr v15, v13

    add-float v10, v16, v17

    .line 170
    aput v10, p0, v0

    sub-float v16, v16, v17

    .line 171
    aput v16, p0, v11

    add-float v0, v1, v4

    .line 172
    aput v0, p0, v6

    sub-float/2addr v1, v4

    .line 173
    aput v1, p0, v5

    add-float v0, v15, v12

    .line 174
    aput v0, p0, v8

    add-float v0, v7, v14

    .line 175
    aput v0, p0, v3

    sub-float/2addr v7, v14

    .line 176
    aput v7, p0, v2

    sub-float/2addr v15, v12

    .line 177
    aput v15, p0, v9

    return-void
.end method

.method public static forwardDCT8x8([F)V
    .locals 20

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    mul-int/2addr v2, v1

    .line 187
    aget v3, p0, v2

    add-int/lit8 v4, v2, 0x7

    aget v5, p0, v4

    add-float/2addr v3, v5

    add-int/lit8 v5, v2, 0x1

    .line 188
    aget v6, p0, v5

    add-int/lit8 v7, v2, 0x6

    aget v8, p0, v7

    add-float/2addr v6, v8

    add-int/lit8 v8, v2, 0x2

    .line 189
    aget v9, p0, v8

    add-int/lit8 v10, v2, 0x5

    aget v11, p0, v10

    add-float/2addr v9, v11

    add-int/lit8 v11, v2, 0x3

    .line 190
    aget v12, p0, v11

    add-int/lit8 v13, v2, 0x4

    aget v14, p0, v13

    add-float/2addr v12, v14

    .line 191
    aget v14, p0, v11

    aget v15, p0, v13

    sub-float/2addr v14, v15

    .line 192
    aget v15, p0, v8

    aget v16, p0, v10

    sub-float v15, v15, v16

    .line 193
    aget v16, p0, v5

    aget v17, p0, v7

    sub-float v16, v16, v17

    .line 194
    aget v17, p0, v2

    aget v18, p0, v4

    sub-float v17, v17, v18

    add-float v18, v3, v12

    add-float v19, v6, v9

    sub-float/2addr v6, v9

    sub-float/2addr v3, v12

    add-float/2addr v14, v15

    add-float v15, v15, v16

    add-float v16, v16, v17

    add-float/2addr v6, v3

    .line 203
    sget v9, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A1:F

    mul-float/2addr v6, v9

    sub-float v9, v16, v14

    .line 204
    sget v12, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A5:F

    mul-float/2addr v9, v12

    .line 205
    sget v12, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A2:F

    mul-float/2addr v14, v12

    sub-float/2addr v14, v9

    .line 206
    sget v12, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A3:F

    mul-float/2addr v15, v12

    .line 207
    sget v12, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A4:F

    mul-float v16, v16, v12

    sub-float v16, v16, v9

    add-float v9, v17, v15

    sub-float v17, v17, v15

    add-float v12, v18, v19

    .line 210
    aput v12, p0, v2

    sub-float v18, v18, v19

    .line 211
    aput v18, p0, v13

    add-float v2, v3, v6

    .line 212
    aput v2, p0, v8

    sub-float/2addr v3, v6

    .line 213
    aput v3, p0, v7

    add-float v2, v17, v14

    .line 214
    aput v2, p0, v10

    add-float v2, v9, v16

    .line 215
    aput v2, p0, v5

    sub-float v9, v9, v16

    .line 216
    aput v9, p0, v4

    sub-float v17, v17, v14

    .line 217
    aput v17, p0, v11

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_0
    :goto_1
    if-ge v0, v2, :cond_1

    .line 221
    aget v1, p0, v0

    const/16 v3, 0x38

    add-int/2addr v3, v0

    aget v4, p0, v3

    add-float/2addr v1, v4

    add-int v4, v2, v0

    .line 222
    aget v5, p0, v4

    const/16 v6, 0x30

    add-int/2addr v6, v0

    aget v7, p0, v6

    add-float/2addr v5, v7

    const/16 v7, 0x10

    add-int/2addr v7, v0

    .line 223
    aget v8, p0, v7

    const/16 v9, 0x28

    add-int/2addr v9, v0

    aget v10, p0, v9

    add-float/2addr v8, v10

    const/16 v10, 0x18

    add-int/2addr v10, v0

    .line 224
    aget v11, p0, v10

    const/16 v12, 0x20

    add-int/2addr v12, v0

    aget v13, p0, v12

    add-float/2addr v11, v13

    .line 225
    aget v13, p0, v10

    aget v14, p0, v12

    sub-float/2addr v13, v14

    .line 226
    aget v14, p0, v7

    aget v15, p0, v9

    sub-float/2addr v14, v15

    .line 227
    aget v15, p0, v4

    aget v16, p0, v6

    sub-float v15, v15, v16

    .line 228
    aget v16, p0, v0

    aget v17, p0, v3

    sub-float v16, v16, v17

    add-float v17, v1, v11

    add-float v18, v5, v8

    sub-float/2addr v5, v8

    sub-float/2addr v1, v11

    add-float/2addr v13, v14

    add-float/2addr v14, v15

    add-float v15, v15, v16

    add-float/2addr v5, v1

    .line 237
    sget v8, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A1:F

    mul-float/2addr v5, v8

    sub-float v8, v15, v13

    .line 238
    sget v11, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A5:F

    mul-float/2addr v8, v11

    .line 239
    sget v11, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A2:F

    mul-float/2addr v13, v11

    sub-float/2addr v13, v8

    .line 240
    sget v11, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A3:F

    mul-float/2addr v14, v11

    .line 241
    sget v11, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A4:F

    mul-float/2addr v15, v11

    sub-float/2addr v15, v8

    add-float v8, v16, v14

    sub-float v16, v16, v14

    add-float v11, v17, v18

    .line 244
    aput v11, p0, v0

    sub-float v17, v17, v18

    .line 245
    aput v17, p0, v12

    add-float v11, v1, v5

    .line 246
    aput v11, p0, v7

    sub-float/2addr v1, v5

    .line 247
    aput v1, p0, v6

    add-float v1, v16, v13

    .line 248
    aput v1, p0, v9

    add-float v1, v8, v15

    .line 249
    aput v1, p0, v4

    sub-float/2addr v8, v15

    .line 250
    aput v8, p0, v3

    sub-float v16, v16, v13

    .line 251
    aput v16, p0, v10

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

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

    sub-float/2addr v1, v3

    .line 264
    aget v3, p0, v0

    aget v4, p0, v2

    add-float/2addr v3, v4

    const/4 v4, 0x5

    .line 265
    aget v5, p0, v4

    const/4 v6, 0x3

    aget v7, p0, v6

    sub-float/2addr v5, v7

    const/4 v7, 0x1

    .line 266
    aget v8, p0, v7

    const/4 v9, 0x7

    aget v10, p0, v9

    add-float/2addr v8, v10

    .line 267
    aget v10, p0, v6

    aget v11, p0, v4

    add-float/2addr v10, v11

    sub-float v11, v8, v10

    .line 269
    aget v12, p0, v7

    aget v13, p0, v9

    sub-float/2addr v12, v13

    add-float/2addr v8, v10

    .line 273
    sget v10, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->C6:F

    add-float v13, v5, v12

    mul-float/2addr v10, v13

    .line 276
    sget v13, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->Q:F

    mul-float/2addr v13, v5

    add-float/2addr v13, v10

    .line 277
    sget v5, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->R:F

    mul-float/2addr v5, v12

    sub-float/2addr v5, v10

    .line 278
    sget v10, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->C4:F

    mul-float/2addr v1, v10

    .line 279
    sget v10, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->C4:F

    mul-float/2addr v11, v10

    sub-float/2addr v5, v8

    sub-float v10, v5, v11

    const/4 v11, 0x0

    .line 284
    aget v12, p0, v11

    const/4 v14, 0x4

    aget v15, p0, v14

    sub-float/2addr v12, v15

    sub-float/2addr v1, v3

    .line 286
    aget v15, p0, v11

    aget v16, p0, v14

    add-float v15, v15, v16

    add-float v16, v12, v1

    add-float v17, v15, v3

    sub-float/2addr v12, v1

    sub-float/2addr v15, v3

    add-float/2addr v13, v10

    add-float v1, v17, v8

    .line 298
    aput v1, p0, v11

    add-float v1, v16, v5

    .line 299
    aput v1, p0, v7

    sub-float v1, v12, v10

    .line 300
    aput v1, p0, v0

    add-float v0, v15, v13

    .line 301
    aput v0, p0, v6

    sub-float/2addr v15, v13

    .line 302
    aput v15, p0, v14

    add-float/2addr v12, v10

    .line 303
    aput v12, p0, v4

    sub-float v16, v16, v5

    .line 304
    aput v16, p0, v2

    sub-float v17, v17, v8

    .line 305
    aput v17, p0, v9

    return-void
.end method

.method public static inverseDCT8x8([F)V
    .locals 20

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    mul-int/2addr v2, v1

    add-int/lit8 v3, v2, 0x2

    .line 315
    aget v4, p0, v3

    add-int/lit8 v5, v2, 0x6

    aget v6, p0, v5

    sub-float/2addr v4, v6

    .line 316
    aget v6, p0, v3

    aget v7, p0, v5

    add-float/2addr v6, v7

    add-int/lit8 v7, v2, 0x5

    .line 317
    aget v8, p0, v7

    add-int/lit8 v9, v2, 0x3

    aget v10, p0, v9

    sub-float/2addr v8, v10

    add-int/lit8 v10, v2, 0x1

    .line 318
    aget v11, p0, v10

    add-int/lit8 v12, v2, 0x7

    aget v13, p0, v12

    add-float/2addr v11, v13

    .line 319
    aget v13, p0, v9

    aget v14, p0, v7

    add-float/2addr v13, v14

    sub-float v14, v11, v13

    .line 321
    aget v15, p0, v10

    aget v16, p0, v12

    sub-float v15, v15, v16

    add-float/2addr v11, v13

    .line 323
    sget v13, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->C6:F

    add-float v16, v8, v15

    mul-float v13, v13, v16

    .line 324
    sget v16, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->Q:F

    mul-float v16, v16, v8

    add-float v16, v16, v13

    .line 325
    sget v8, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->R:F

    mul-float/2addr v8, v15

    sub-float/2addr v8, v13

    .line 326
    sget v13, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->C4:F

    mul-float/2addr v4, v13

    .line 327
    sget v13, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->C4:F

    mul-float/2addr v14, v13

    sub-float/2addr v8, v11

    sub-float v13, v8, v14

    .line 330
    aget v14, p0, v2

    add-int/lit8 v15, v2, 0x4

    aget v17, p0, v15

    sub-float v14, v14, v17

    sub-float/2addr v4, v6

    .line 332
    aget v17, p0, v2

    aget v18, p0, v15

    add-float v17, v17, v18

    add-float v18, v14, v4

    add-float v19, v17, v6

    sub-float/2addr v14, v4

    sub-float v17, v17, v6

    add-float v16, v16, v13

    add-float v4, v19, v11

    .line 339
    aput v4, p0, v2

    add-float v2, v18, v8

    .line 340
    aput v2, p0, v10

    sub-float v2, v14, v13

    .line 341
    aput v2, p0, v3

    add-float v2, v17, v16

    .line 342
    aput v2, p0, v9

    sub-float v17, v17, v16

    .line 343
    aput v17, p0, v15

    add-float/2addr v14, v13

    .line 344
    aput v14, p0, v7

    sub-float v18, v18, v8

    .line 345
    aput v18, p0, v5

    sub-float v19, v19, v11

    .line 346
    aput v19, p0, v12

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_0
    :goto_1
    if-ge v0, v2, :cond_1

    const/16 v1, 0x10

    add-int/2addr v1, v0

    .line 350
    aget v3, p0, v1

    const/16 v4, 0x30

    add-int/2addr v4, v0

    aget v5, p0, v4

    sub-float/2addr v3, v5

    .line 351
    aget v5, p0, v1

    aget v6, p0, v4

    add-float/2addr v5, v6

    const/16 v6, 0x28

    add-int/2addr v6, v0

    .line 352
    aget v7, p0, v6

    const/16 v8, 0x18

    add-int/2addr v8, v0

    aget v9, p0, v8

    sub-float/2addr v7, v9

    add-int v9, v2, v0

    .line 353
    aget v10, p0, v9

    const/16 v11, 0x38

    add-int/2addr v11, v0

    aget v12, p0, v11

    add-float/2addr v10, v12

    .line 354
    aget v12, p0, v8

    aget v13, p0, v6

    add-float/2addr v12, v13

    sub-float v13, v10, v12

    .line 356
    aget v14, p0, v9

    aget v15, p0, v11

    sub-float/2addr v14, v15

    add-float/2addr v10, v12

    .line 358
    sget v12, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->C6:F

    add-float v15, v7, v14

    mul-float/2addr v12, v15

    .line 359
    sget v15, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->Q:F

    mul-float/2addr v15, v7

    add-float/2addr v15, v12

    .line 360
    sget v7, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->R:F

    mul-float/2addr v7, v14

    sub-float/2addr v7, v12

    .line 361
    sget v12, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->C4:F

    mul-float/2addr v3, v12

    .line 362
    sget v12, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->C4:F

    mul-float/2addr v13, v12

    sub-float/2addr v7, v10

    sub-float v12, v7, v13

    .line 365
    aget v13, p0, v0

    const/16 v14, 0x20

    add-int/2addr v14, v0

    aget v16, p0, v14

    sub-float v13, v13, v16

    sub-float/2addr v3, v5

    .line 367
    aget v16, p0, v0

    aget v17, p0, v14

    add-float v16, v16, v17

    add-float v17, v13, v3

    add-float v18, v16, v5

    sub-float/2addr v13, v3

    sub-float v16, v16, v5

    add-float/2addr v15, v12

    add-float v3, v18, v10

    .line 374
    aput v3, p0, v0

    add-float v3, v17, v7

    .line 375
    aput v3, p0, v9

    sub-float v3, v13, v12

    .line 376
    aput v3, p0, v1

    add-float v1, v16, v15

    .line 377
    aput v1, p0, v8

    sub-float v16, v16, v15

    .line 378
    aput v16, p0, v14

    add-float/2addr v13, v12

    .line 379
    aput v13, p0, v6

    sub-float v17, v17, v7

    .line 380
    aput v17, p0, v4

    sub-float v18, v18, v10

    .line 381
    aput v18, p0, v11

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

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

    mul-int v4, v2, v1

    add-int/2addr v4, v3

    .line 128
    aget v5, p0, v4

    sget-object v6, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->IDCT_SCALING_FACTORS:[F

    aget v6, v6, v1

    sget-object v7, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->IDCT_SCALING_FACTORS:[F

    aget v7, v7, v3

    mul-float/2addr v6, v7

    mul-float/2addr v5, v6

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

    mul-int v4, v2, v1

    add-int/2addr v4, v3

    .line 119
    aget v5, p0, v4

    sget-object v6, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->DCT_SCALING_FACTORS:[F

    aget v6, v6, v1

    sget-object v7, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->DCT_SCALING_FACTORS:[F

    aget v7, v7, v3

    mul-float/2addr v6, v7

    mul-float/2addr v5, v6

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
