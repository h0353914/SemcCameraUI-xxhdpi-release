.class public final Lorg/apache/commons/imaging/color/ColorConversions;
.super Ljava/lang/Object;
.source "ColorConversions.java"


# static fields
.field private static final REF_X:D = 95.047

.field private static final REF_Y:D = 100.0

.field private static final REF_Z:D = 108.883


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertCIELCHtoCIELab(DDD)Lorg/apache/commons/imaging/color/ColorCieLab;
    .locals 9

    .line 676
    invoke-static {p4, p5}, Lorg/apache/commons/imaging/color/ColorConversions;->degree_2_radian(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double v5, v0, p2

    .line 677
    invoke-static {p4, p5}, Lorg/apache/commons/imaging/color/ColorConversions;->degree_2_radian(D)D

    move-result-wide p4

    invoke-static {p4, p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide p4

    mul-double v7, p4, p2

    .line 679
    new-instance p2, Lorg/apache/commons/imaging/color/ColorCieLab;

    move-object v2, p2

    move-wide v3, p0

    invoke-direct/range {v2 .. v8}, Lorg/apache/commons/imaging/color/ColorCieLab;-><init>(DDD)V

    return-object p2
.end method

.method public static convertCIELCHtoCIELab(Lorg/apache/commons/imaging/color/ColorCieLch;)Lorg/apache/commons/imaging/color/ColorCieLab;
    .locals 6

    .line 669
    iget-wide v0, p0, Lorg/apache/commons/imaging/color/ColorCieLch;->L:D

    iget-wide v2, p0, Lorg/apache/commons/imaging/color/ColorCieLch;->C:D

    iget-wide v4, p0, Lorg/apache/commons/imaging/color/ColorCieLch;->H:D

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/imaging/color/ColorConversions;->convertCIELCHtoCIELab(DDD)Lorg/apache/commons/imaging/color/ColorCieLab;

    move-result-object p0

    return-object p0
.end method

.method public static convertCIELabtoARGBTest(III)I
    .locals 23

    move/from16 v0, p0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    const-wide v4, 0x406fe00000000000L    # 255.0

    div-double/2addr v0, v4

    const-wide/high16 v6, 0x4030000000000000L    # 16.0

    add-double/2addr v0, v6

    const-wide/high16 v6, 0x405d000000000000L    # 116.0

    div-double/2addr v0, v6

    move/from16 v6, p1

    int-to-double v6, v6

    const-wide v8, 0x407f400000000000L    # 500.0

    div-double/2addr v6, v8

    add-double/2addr v6, v0

    move/from16 v8, p2

    int-to-double v8, v8

    const-wide/high16 v10, 0x4069000000000000L    # 200.0

    div-double/2addr v8, v10

    sub-double v8, v0, v8

    .line 555
    invoke-static {v6, v7}, Lorg/apache/commons/imaging/color/ColorConversions;->cube(D)D

    move-result-wide v10

    .line 556
    invoke-static {v0, v1}, Lorg/apache/commons/imaging/color/ColorConversions;->cube(D)D

    move-result-wide v12

    .line 557
    invoke-static {v8, v9}, Lorg/apache/commons/imaging/color/ColorConversions;->cube(D)D

    move-result-wide v14

    const-wide v16, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v18, v12, v16

    const-wide v19, 0x401f25e353f7ced9L    # 7.787

    const-wide v21, 0x3fc1a7b9611a7b96L    # 0.13793103448275862

    if-lez v18, :cond_0

    goto :goto_0

    :cond_0
    sub-double v0, v0, v21

    div-double v12, v0, v19

    :goto_0
    cmpl-double v0, v10, v16

    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    sub-double v6, v6, v21

    div-double v10, v6, v19

    :goto_1
    cmpl-double v0, v14, v16

    if-lez v0, :cond_2

    goto :goto_2

    :cond_2
    sub-double v8, v8, v21

    div-double v14, v8, v19

    :goto_2
    const-wide v0, 0x4057c3020c49ba5eL    # 95.047

    mul-double/2addr v10, v0

    mul-double/2addr v12, v2

    const-wide v0, 0x405b3883126e978dL    # 108.883

    mul-double/2addr v14, v0

    div-double/2addr v10, v2

    div-double/2addr v12, v2

    div-double/2addr v14, v2

    const-wide v0, 0x4009ecbfb15b573fL    # 3.2406

    mul-double/2addr v0, v10

    const-wide v2, -0x400767a0f9096bbaL    # -1.5372

    mul-double/2addr v2, v12

    add-double/2addr v0, v2

    const-wide v2, -0x402016f0068db8bbL    # -0.4986

    mul-double/2addr v2, v14

    add-double/2addr v0, v2

    const-wide v2, -0x4010fec56d5cfaadL    # -0.9689

    mul-double/2addr v2, v10

    const-wide v6, 0x3ffe0346dc5d6388L    # 1.8758

    mul-double/2addr v6, v12

    add-double/2addr v2, v6

    const-wide v6, 0x3fa53f7ced916873L    # 0.0415

    mul-double/2addr v6, v14

    add-double/2addr v2, v6

    const-wide v6, 0x3fac84b5dcc63f14L    # 0.0557

    mul-double/2addr v10, v6

    const-wide v6, -0x4035e353f7ced917L    # -0.204

    mul-double/2addr v12, v6

    add-double/2addr v10, v12

    const-wide v6, 0x3ff0e978d4fdf3b6L    # 1.057

    mul-double/2addr v14, v6

    add-double/2addr v10, v14

    const-wide v6, 0x3f69a5c37387b719L    # 0.0031308

    cmpl-double v8, v0, v6

    const-wide v12, 0x3fac28f5c28f5c29L    # 0.055

    const-wide v14, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    const-wide v16, 0x3ff0e147ae147ae1L    # 1.055

    const-wide v18, 0x4029d70a3d70a3d7L    # 12.92

    if-lez v8, :cond_3

    .line 598
    invoke-static {v0, v1, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double v0, v0, v16

    sub-double/2addr v0, v12

    goto :goto_3

    :cond_3
    mul-double v0, v0, v18

    :goto_3
    cmpl-double v8, v2, v6

    if-lez v8, :cond_4

    .line 603
    invoke-static {v2, v3, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double v2, v2, v16

    sub-double/2addr v2, v12

    goto :goto_4

    :cond_4
    mul-double v2, v2, v18

    :goto_4
    cmpl-double v6, v10, v6

    if-lez v6, :cond_5

    .line 609
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double v6, v6, v16

    sub-double/2addr v6, v12

    goto :goto_5

    :cond_5
    mul-double v6, v10, v18

    :goto_5
    mul-double v8, v0, v4

    mul-double v10, v2, v4

    mul-double v12, v6, v4

    .line 619
    invoke-static/range {v8 .. v13}, Lorg/apache/commons/imaging/color/ColorConversions;->convertRGBtoRGB(DDD)I

    move-result v0

    return v0
.end method

.method public static convertCIELabtoCIELCH(DDD)Lorg/apache/commons/imaging/color/ColorCieLch;
    .locals 9

    .line 653
    invoke-static {p4, p5, p2, p3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, v2

    goto :goto_0

    .line 658
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/imaging/color/ColorConversions;->radian_2_degree(D)D

    move-result-wide v0

    const-wide v2, 0x4076800000000000L    # 360.0

    sub-double v0, v2, v0

    :goto_0
    move-wide v7, v0

    .line 662
    invoke-static {p2, p3}, Lorg/apache/commons/imaging/color/ColorConversions;->square(D)D

    move-result-wide p2

    invoke-static {p4, p5}, Lorg/apache/commons/imaging/color/ColorConversions;->square(D)D

    move-result-wide p4

    add-double/2addr p2, p4

    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    .line 665
    new-instance p2, Lorg/apache/commons/imaging/color/ColorCieLch;

    move-object v2, p2

    move-wide v3, p0

    invoke-direct/range {v2 .. v8}, Lorg/apache/commons/imaging/color/ColorCieLch;-><init>(DDD)V

    return-object p2
.end method

.method public static convertCIELabtoCIELCH(Lorg/apache/commons/imaging/color/ColorCieLab;)Lorg/apache/commons/imaging/color/ColorCieLch;
    .locals 6

    .line 649
    iget-wide v0, p0, Lorg/apache/commons/imaging/color/ColorCieLab;->L:D

    iget-wide v2, p0, Lorg/apache/commons/imaging/color/ColorCieLab;->a:D

    iget-wide v4, p0, Lorg/apache/commons/imaging/color/ColorCieLab;->b:D

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/imaging/color/ColorConversions;->convertCIELabtoCIELCH(DDD)Lorg/apache/commons/imaging/color/ColorCieLch;

    move-result-object p0

    return-object p0
.end method

.method public static convertCIELabtoXYZ(DDD)Lorg/apache/commons/imaging/color/ColorXyz;
    .locals 10

    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    add-double/2addr p0, v0

    const-wide/high16 v0, 0x405d000000000000L    # 116.0

    div-double/2addr p0, v0

    const-wide v0, 0x407f400000000000L    # 500.0

    div-double/2addr p2, v0

    add-double/2addr p2, p0

    const-wide/high16 v0, 0x4069000000000000L    # 200.0

    div-double/2addr p4, v0

    sub-double p4, p0, p4

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    .line 71
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide v4, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v2, v2, v4

    const-wide v6, 0x401f25e353f7ced9L    # 7.787

    const-wide v8, 0x3fc1a7b9611a7b96L    # 0.13793103448275862

    if-lez v2, :cond_0

    .line 72
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    goto :goto_0

    :cond_0
    sub-double/2addr p0, v8

    div-double/2addr p0, v6

    .line 76
    :goto_0
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    .line 77
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p2

    goto :goto_1

    :cond_1
    sub-double/2addr p2, v8

    div-double/2addr p2, v6

    .line 81
    :goto_1
    invoke-static {p4, p5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2

    .line 82
    invoke-static {p4, p5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p4

    goto :goto_2

    :cond_2
    sub-double/2addr p4, v8

    div-double/2addr p4, v6

    :goto_2
    const-wide v0, 0x4057c3020c49ba5eL    # 95.047

    mul-double v3, p2, v0

    const-wide/high16 p2, 0x4059000000000000L    # 100.0

    mul-double v5, p0, p2

    const-wide p0, 0x405b3883126e978dL    # 108.883

    mul-double v7, p4, p0

    .line 92
    new-instance p0, Lorg/apache/commons/imaging/color/ColorXyz;

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lorg/apache/commons/imaging/color/ColorXyz;-><init>(DDD)V

    return-object p0
.end method

.method public static convertCIELabtoXYZ(Lorg/apache/commons/imaging/color/ColorCieLab;)Lorg/apache/commons/imaging/color/ColorXyz;
    .locals 6

    .line 63
    iget-wide v0, p0, Lorg/apache/commons/imaging/color/ColorCieLab;->L:D

    iget-wide v2, p0, Lorg/apache/commons/imaging/color/ColorCieLab;->a:D

    iget-wide v4, p0, Lorg/apache/commons/imaging/color/ColorCieLab;->b:D

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/imaging/color/ColorConversions;->convertCIELabtoXYZ(DDD)Lorg/apache/commons/imaging/color/ColorXyz;

    move-result-object p0

    return-object p0
.end method

.method public static convertCIELuvtoXYZ(DDD)Lorg/apache/commons/imaging/color/ColorXyz;
    .locals 17

    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    add-double v0, p0, v0

    const-wide/high16 v2, 0x405d000000000000L    # 116.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    .line 735
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide v6, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    .line 736
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    sub-double/2addr v0, v4

    const-wide v4, 0x401f25e353f7ced9L    # 7.787

    div-double/2addr v0, v4

    :goto_0
    const-wide/high16 v4, 0x402a000000000000L    # 13.0

    mul-double v4, v4, p0

    div-double v6, p2, v4

    const-wide v8, 0x3fc952d0bcba2702L    # 0.19783982482140777

    add-double/2addr v6, v8

    div-double v4, p4, v4

    const-wide v8, 0x3fddf938d427f3b1L    # 0.46833630293240974

    add-double/2addr v4, v8

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double v13, v0, v8

    const-wide/high16 v0, 0x4022000000000000L    # 9.0

    mul-double/2addr v0, v13

    mul-double v8, v0, v6

    neg-double v8, v8

    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    sub-double v10, v6, v10

    mul-double/2addr v10, v4

    mul-double/2addr v6, v4

    sub-double/2addr v10, v6

    div-double v11, v8, v10

    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    mul-double/2addr v6, v4

    mul-double/2addr v6, v13

    sub-double/2addr v0, v6

    mul-double v6, v4, v11

    sub-double/2addr v0, v6

    mul-double/2addr v4, v2

    div-double v15, v0, v4

    .line 750
    new-instance v0, Lorg/apache/commons/imaging/color/ColorXyz;

    move-object v10, v0

    invoke-direct/range {v10 .. v16}, Lorg/apache/commons/imaging/color/ColorXyz;-><init>(DDD)V

    return-object v0
.end method

.method public static convertCIELuvtoXYZ(Lorg/apache/commons/imaging/color/ColorCieLuv;)Lorg/apache/commons/imaging/color/ColorXyz;
    .locals 6

    .line 728
    iget-wide v0, p0, Lorg/apache/commons/imaging/color/ColorCieLuv;->L:D

    iget-wide v2, p0, Lorg/apache/commons/imaging/color/ColorCieLuv;->u:D

    iget-wide v4, p0, Lorg/apache/commons/imaging/color/ColorCieLuv;->v:D

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/imaging/color/ColorConversions;->convertCIELuvtoXYZ(DDD)Lorg/apache/commons/imaging/color/ColorXyz;

    move-result-object p0

    return-object p0
.end method

.method public static convertCMYKtoCMY(DDDD)Lorg/apache/commons/imaging/color/ColorCmy;
    .locals 7

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p6

    mul-double v2, p0, v0

    add-double/2addr v2, p6

    mul-double v4, p2, v0

    add-double/2addr v4, p6

    mul-double/2addr v0, p4

    add-double/2addr v0, p6

    .line 273
    new-instance v6, Lorg/apache/commons/imaging/color/ColorCmy;

    move-object p0, v6

    move-wide p1, v2

    move-wide p3, v4

    move-wide p5, v0

    invoke-direct/range {p0 .. p6}, Lorg/apache/commons/imaging/color/ColorCmy;-><init>(DDD)V

    return-object v6
.end method

.method public static convertCMYKtoCMY(Lorg/apache/commons/imaging/color/ColorCmyk;)Lorg/apache/commons/imaging/color/ColorCmy;
    .locals 8

    .line 262
    iget-wide v0, p0, Lorg/apache/commons/imaging/color/ColorCmyk;->C:D

    iget-wide v2, p0, Lorg/apache/commons/imaging/color/ColorCmyk;->M:D

    iget-wide v4, p0, Lorg/apache/commons/imaging/color/ColorCmyk;->Y:D

    iget-wide v6, p0, Lorg/apache/commons/imaging/color/ColorCmyk;->K:D

    invoke-static/range {v0 .. v7}, Lorg/apache/commons/imaging/color/ColorConversions;->convertCMYKtoCMY(DDDD)Lorg/apache/commons/imaging/color/ColorCmy;

    move-result-object p0

    return-object p0
.end method

.method public static convertCMYKtoRGB(IIII)I
    .locals 12

    int-to-double v0, p0

    const-wide v2, 0x406fe00000000000L    # 255.0

    div-double v4, v0, v2

    int-to-double p0, p1

    div-double v6, p0, v2

    int-to-double p0, p2

    div-double v8, p0, v2

    int-to-double p0, p3

    div-double v10, p0, v2

    .line 284
    invoke-static/range {v4 .. v11}, Lorg/apache/commons/imaging/color/ColorConversions;->convertCMYKtoCMY(DDDD)Lorg/apache/commons/imaging/color/ColorCmy;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/imaging/color/ColorConversions;->convertCMYtoRGB(Lorg/apache/commons/imaging/color/ColorCmy;)I

    move-result p0

    return p0
.end method

.method public static convertCMYKtoRGB_Adobe(IIII)I
    .locals 0

    add-int/2addr p0, p3

    rsub-int p0, p0, 0xff

    add-int/2addr p1, p3

    rsub-int p1, p1, 0xff

    add-int/2addr p2, p3

    rsub-int p2, p2, 0xff

    .line 535
    invoke-static {p0, p1, p2}, Lorg/apache/commons/imaging/color/ColorConversions;->convertRGBtoRGB(III)I

    move-result p0

    return p0
.end method

.method public static convertCMYtoCMYK(Lorg/apache/commons/imaging/color/ColorCmy;)Lorg/apache/commons/imaging/color/ColorCmyk;
    .locals 20

    move-object/from16 v0, p0

    .line 234
    iget-wide v1, v0, Lorg/apache/commons/imaging/color/ColorCmy;->C:D

    .line 235
    iget-wide v3, v0, Lorg/apache/commons/imaging/color/ColorCmy;->M:D

    .line 236
    iget-wide v5, v0, Lorg/apache/commons/imaging/color/ColorCmy;->Y:D

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v1, v7

    if-gez v0, :cond_0

    move-wide v9, v1

    goto :goto_0

    :cond_0
    move-wide v9, v7

    :goto_0
    cmpg-double v0, v3, v9

    if-gez v0, :cond_1

    move-wide v9, v3

    :cond_1
    cmpg-double v0, v5, v9

    if-gez v0, :cond_2

    move-wide/from16 v18, v5

    goto :goto_1

    :cond_2
    move-wide/from16 v18, v9

    :goto_1
    cmpl-double v0, v18, v7

    if-nez v0, :cond_3

    const-wide/16 v0, 0x0

    move-wide v12, v0

    move-wide v14, v12

    move-wide/from16 v16, v14

    goto :goto_2

    :cond_3
    sub-double v1, v1, v18

    sub-double v7, v7, v18

    div-double/2addr v1, v7

    sub-double v3, v3, v18

    div-double/2addr v3, v7

    sub-double v5, v5, v18

    div-double/2addr v5, v7

    move-wide v12, v1

    move-wide v14, v3

    move-wide/from16 v16, v5

    .line 258
    :goto_2
    new-instance v0, Lorg/apache/commons/imaging/color/ColorCmyk;

    move-object v11, v0

    invoke-direct/range {v11 .. v19}, Lorg/apache/commons/imaging/color/ColorCmyk;-><init>(DDDD)V

    return-object v0
.end method

.method public static convertCMYtoRGB(Lorg/apache/commons/imaging/color/ColorCmy;)I
    .locals 12

    .line 224
    iget-wide v0, p0, Lorg/apache/commons/imaging/color/ColorCmy;->C:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v0, v2, v0

    const-wide v4, 0x406fe00000000000L    # 255.0

    mul-double v6, v0, v4

    .line 225
    iget-wide v0, p0, Lorg/apache/commons/imaging/color/ColorCmy;->M:D

    sub-double v0, v2, v0

    mul-double v8, v0, v4

    .line 226
    iget-wide v0, p0, Lorg/apache/commons/imaging/color/ColorCmy;->Y:D

    sub-double/2addr v2, v0

    mul-double v10, v2, v4

    .line 228
    invoke-static/range {v6 .. v11}, Lorg/apache/commons/imaging/color/ColorConversions;->convertRGBtoRGB(DDD)I

    move-result p0

    return p0
.end method

.method public static convertHSLtoRGB(DDD)I
    .locals 20

    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    const-wide v6, 0x406fe00000000000L    # 255.0

    if-nez v0, :cond_0

    mul-double v0, p4, v6

    move-wide v2, v0

    move-wide v4, v2

    goto :goto_1

    :cond_0
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, p4, v0

    if-gez v0, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double v0, p2, v0

    mul-double v0, v0, p4

    goto :goto_0

    :cond_1
    add-double v0, p4, p2

    mul-double v2, p2, p4

    sub-double/2addr v0, v2

    :goto_0
    move-wide v14, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double v0, v0, p4

    sub-double v16, v0, v14

    const-wide v18, 0x3fd5555555555555L    # 0.3333333333333333

    add-double v12, p0, v18

    move-wide/from16 v8, v16

    move-wide v10, v14

    .line 385
    invoke-static/range {v8 .. v13}, Lorg/apache/commons/imaging/color/ColorConversions;->convertHuetoRGB(DDD)D

    move-result-wide v0

    mul-double v8, v0, v6

    move-wide/from16 v0, v16

    move-wide v2, v14

    move-wide/from16 v4, p0

    .line 386
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/imaging/color/ColorConversions;->convertHuetoRGB(DDD)D

    move-result-wide v0

    mul-double/2addr v0, v6

    sub-double v2, p0, v18

    move-wide/from16 p0, v16

    move-wide/from16 p2, v14

    move-wide/from16 p4, v2

    .line 387
    invoke-static/range {p0 .. p5}, Lorg/apache/commons/imaging/color/ColorConversions;->convertHuetoRGB(DDD)D

    move-result-wide v2

    mul-double/2addr v2, v6

    move-wide v4, v2

    move-wide v2, v0

    move-wide v0, v8

    :goto_1
    move-wide/from16 p0, v0

    move-wide/from16 p2, v2

    move-wide/from16 p4, v4

    .line 390
    invoke-static/range {p0 .. p5}, Lorg/apache/commons/imaging/color/ColorConversions;->convertRGBtoRGB(DDD)I

    move-result v0

    return v0
.end method

.method public static convertHSLtoRGB(Lorg/apache/commons/imaging/color/ColorHsl;)I
    .locals 6

    .line 363
    iget-wide v0, p0, Lorg/apache/commons/imaging/color/ColorHsl;->H:D

    iget-wide v2, p0, Lorg/apache/commons/imaging/color/ColorHsl;->S:D

    iget-wide v4, p0, Lorg/apache/commons/imaging/color/ColorHsl;->L:D

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/imaging/color/ColorConversions;->convertHSLtoRGB(DDD)I

    move-result p0

    return p0
.end method

.method public static convertHSVtoRGB(DDD)I
    .locals 15

    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    const-wide v3, 0x406fe00000000000L    # 255.0

    if-nez v2, :cond_0

    mul-double v0, p4, v3

    move-wide v2, v0

    move-wide v5, v2

    goto/16 :goto_4

    :cond_0
    const-wide/high16 v5, 0x4018000000000000L    # 6.0

    mul-double v7, p0, v5

    cmpl-double v2, v7, v5

    if-nez v2, :cond_1

    move-wide v7, v0

    .line 488
    :cond_1
    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    sub-double v11, v9, p2

    mul-double v11, v11, p4

    sub-double/2addr v7, v5

    mul-double v13, p2, v7

    sub-double v13, v9, v13

    mul-double v13, v13, p4

    sub-double v7, v9, v7

    mul-double v7, v7, p2

    sub-double v7, v9, v7

    mul-double v7, v7, p4

    cmpl-double v0, v5, v0

    if-nez v0, :cond_2

    move-wide v13, v7

    move-wide v7, v11

    :goto_0
    move-wide/from16 v11, p4

    goto :goto_3

    :cond_2
    cmpl-double v0, v5, v9

    if-nez v0, :cond_3

    move-wide v7, v11

    move-wide v11, v13

    :goto_1
    move-wide/from16 v13, p4

    goto :goto_3

    :cond_3
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    cmpl-double v0, v5, v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    cmpl-double v0, v5, v0

    if-nez v0, :cond_5

    :goto_2
    move-wide/from16 v7, p4

    goto :goto_3

    :cond_5
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    cmpl-double v0, v5, v0

    if-nez v0, :cond_6

    move-wide v13, v11

    move-wide v11, v7

    goto :goto_2

    :cond_6
    move-wide v7, v13

    move-wide v13, v11

    goto :goto_0

    :goto_3
    mul-double v0, v11, v3

    mul-double v5, v13, v3

    mul-double v2, v7, v3

    :goto_4
    move-wide p0, v0

    move-wide/from16 p2, v5

    move-wide/from16 p4, v2

    .line 526
    invoke-static/range {p0 .. p5}, Lorg/apache/commons/imaging/color/ColorConversions;->convertRGBtoRGB(DDD)I

    move-result v0

    return v0
.end method

.method public static convertHSVtoRGB(Lorg/apache/commons/imaging/color/ColorHsv;)I
    .locals 6

    .line 472
    iget-wide v0, p0, Lorg/apache/commons/imaging/color/ColorHsv;->H:D

    iget-wide v2, p0, Lorg/apache/commons/imaging/color/ColorHsv;->S:D

    iget-wide v4, p0, Lorg/apache/commons/imaging/color/ColorHsv;->V:D

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/imaging/color/ColorConversions;->convertHSVtoRGB(DDD)I

    move-result p0

    return p0
.end method

.method private static convertHuetoRGB(DDD)D
    .locals 9

    const-wide/16 v0, 0x0

    cmpg-double v0, p4, v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-gez v0, :cond_0

    add-double/2addr p4, v1

    :cond_0
    cmpl-double v0, p4, v1

    if-lez v0, :cond_1

    sub-double/2addr p4, v1

    :cond_1
    const-wide/high16 v3, 0x4018000000000000L    # 6.0

    mul-double v5, p4, v3

    cmpg-double v0, v5, v1

    if-gez v0, :cond_2

    sub-double/2addr p2, p0

    mul-double/2addr p2, v3

    mul-double/2addr p2, p4

    :goto_0
    add-double/2addr p0, p2

    return-wide p0

    :cond_2
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-double v7, p4, v5

    cmpg-double v0, v7, v1

    if-gez v0, :cond_3

    return-wide p2

    :cond_3
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    mul-double/2addr v0, p4

    cmpg-double v0, v0, v5

    if-gez v0, :cond_4

    sub-double/2addr p2, p0

    const-wide v0, 0x3fe5555555555555L    # 0.6666666666666666

    sub-double/2addr v0, p4

    mul-double/2addr p2, v0

    mul-double/2addr p2, v3

    goto :goto_0

    :cond_4
    return-wide p0
.end method

.method public static convertHunterLabtoXYZ(DDD)Lorg/apache/commons/imaging/color/ColorXyz;
    .locals 15

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    div-double v2, p0, v0

    const-wide v4, 0x4031800000000000L    # 17.5

    div-double v4, p2, v4

    mul-double/2addr v4, p0

    div-double/2addr v4, v0

    const-wide/high16 v6, 0x401c000000000000L    # 7.0

    div-double v6, p4, v6

    mul-double/2addr v6, p0

    div-double/2addr v6, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 118
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    add-double/2addr v4, v11

    const-wide v0, 0x3ff051eb851eb852L    # 1.02

    div-double v9, v4, v0

    sub-double/2addr v6, v11

    neg-double v0, v6

    const-wide v2, 0x3feb1a9fbe76c8b4L    # 0.847

    div-double v13, v0, v2

    .line 122
    new-instance v0, Lorg/apache/commons/imaging/color/ColorXyz;

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/apache/commons/imaging/color/ColorXyz;-><init>(DDD)V

    return-object v0
.end method

.method public static convertHunterLabtoXYZ(Lorg/apache/commons/imaging/color/ColorHunterLab;)Lorg/apache/commons/imaging/color/ColorXyz;
    .locals 6

    .line 109
    iget-wide v0, p0, Lorg/apache/commons/imaging/color/ColorHunterLab;->L:D

    iget-wide v2, p0, Lorg/apache/commons/imaging/color/ColorHunterLab;->a:D

    iget-wide v4, p0, Lorg/apache/commons/imaging/color/ColorHunterLab;->b:D

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/imaging/color/ColorConversions;->convertHunterLabtoXYZ(DDD)Lorg/apache/commons/imaging/color/ColorXyz;

    move-result-object p0

    return-object p0
.end method

.method public static convertRGBtoCMY(I)Lorg/apache/commons/imaging/color/ColorCmy;
    .locals 15

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 p0, p0, 0xff

    int-to-double v2, v0

    const-wide v4, 0x406fe00000000000L    # 255.0

    div-double/2addr v2, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v9, v6, v2

    int-to-double v0, v1

    div-double/2addr v0, v4

    sub-double v11, v6, v0

    int-to-double v0, p0

    div-double/2addr v0, v4

    sub-double v13, v6, v0

    .line 211
    new-instance p0, Lorg/apache/commons/imaging/color/ColorCmy;

    move-object v8, p0

    invoke-direct/range {v8 .. v14}, Lorg/apache/commons/imaging/color/ColorCmy;-><init>(DDD)V

    return-object p0
.end method

.method public static convertRGBtoHSL(I)Lorg/apache/commons/imaging/color/ColorHsl;
    .locals 27

    move/from16 v0, p0

    shr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v0, v0, 0xff

    int-to-double v3, v1

    const-wide v5, 0x406fe00000000000L    # 255.0

    div-double/2addr v3, v5

    int-to-double v1, v2

    div-double/2addr v1, v5

    int-to-double v7, v0

    div-double/2addr v7, v5

    .line 297
    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    cmpl-double v0, v3, v1

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-ltz v0, :cond_0

    cmpl-double v0, v3, v7

    if-ltz v0, :cond_0

    move-wide v11, v3

    goto :goto_0

    :cond_0
    cmpl-double v0, v1, v7

    if-lez v0, :cond_1

    move-wide v11, v1

    move/from16 v26, v10

    move v10, v9

    move/from16 v9, v26

    goto :goto_0

    :cond_1
    move-wide v11, v7

    move v9, v10

    :goto_0
    sub-double v13, v11, v5

    add-double v15, v11, v5

    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    div-double v24, v15, v17

    const-wide/16 v19, 0x0

    cmpl-double v0, v13, v19

    if-nez v0, :cond_2

    move-wide/from16 v22, v19

    move-wide/from16 v20, v22

    goto :goto_3

    :cond_2
    const-wide/high16 v21, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v24, v21

    if-gez v0, :cond_3

    goto :goto_1

    :cond_3
    sub-double v15, v17, v11

    sub-double/2addr v15, v5

    :goto_1
    div-double v5, v13, v15

    sub-double v3, v11, v3

    const-wide/high16 v15, 0x4018000000000000L    # 6.0

    div-double/2addr v3, v15

    div-double v17, v13, v17

    add-double v3, v3, v17

    div-double/2addr v3, v13

    sub-double v0, v11, v1

    div-double/2addr v0, v15

    add-double v0, v0, v17

    div-double/2addr v0, v13

    sub-double/2addr v11, v7

    div-double/2addr v11, v15

    add-double v11, v11, v17

    div-double/2addr v11, v13

    if-eqz v9, :cond_4

    sub-double/2addr v11, v0

    goto :goto_2

    :cond_4
    if-eqz v10, :cond_5

    const-wide v0, 0x3fd5555555555555L    # 0.3333333333333333

    add-double/2addr v3, v0

    sub-double v11, v3, v11

    goto :goto_2

    :cond_5
    const-wide v7, 0x3fe5555555555555L    # 0.6666666666666666

    add-double/2addr v0, v7

    sub-double v11, v0, v3

    :goto_2
    cmpg-double v0, v11, v19

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-gez v0, :cond_6

    add-double/2addr v11, v1

    :cond_6
    cmpl-double v0, v11, v1

    if-lez v0, :cond_7

    sub-double/2addr v11, v1

    :cond_7
    move-wide/from16 v22, v5

    move-wide/from16 v20, v11

    .line 359
    :goto_3
    new-instance v0, Lorg/apache/commons/imaging/color/ColorHsl;

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v25}, Lorg/apache/commons/imaging/color/ColorHsl;-><init>(DDD)V

    return-object v0
.end method

.method public static convertRGBtoHSV(I)Lorg/apache/commons/imaging/color/ColorHsv;
    .locals 23

    move/from16 v0, p0

    shr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v0, v0, 0xff

    int-to-double v3, v1

    const-wide v5, 0x406fe00000000000L    # 255.0

    div-double/2addr v3, v5

    int-to-double v1, v2

    div-double/2addr v1, v5

    int-to-double v7, v0

    div-double/2addr v7, v5

    .line 421
    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    cmpl-double v0, v3, v1

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-ltz v0, :cond_0

    cmpl-double v0, v3, v7

    if-ltz v0, :cond_0

    move-wide/from16 v16, v3

    goto :goto_0

    :cond_0
    cmpl-double v0, v1, v7

    if-lez v0, :cond_1

    move-wide/from16 v16, v1

    move/from16 v22, v10

    move v10, v9

    move/from16 v9, v22

    goto :goto_0

    :cond_1
    move-wide/from16 v16, v7

    move v9, v10

    :goto_0
    sub-double v5, v16, v5

    const-wide/16 v11, 0x0

    cmpl-double v0, v5, v11

    if-nez v0, :cond_2

    move-wide v14, v11

    move-wide v12, v14

    goto :goto_2

    :cond_2
    div-double v13, v5, v16

    sub-double v3, v16, v3

    const-wide/high16 v18, 0x4018000000000000L    # 6.0

    div-double v3, v3, v18

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v20, v5, v20

    add-double v3, v3, v20

    div-double/2addr v3, v5

    sub-double v0, v16, v1

    div-double v0, v0, v18

    add-double v0, v0, v20

    div-double/2addr v0, v5

    sub-double v7, v16, v7

    div-double v7, v7, v18

    add-double v7, v7, v20

    div-double/2addr v7, v5

    if-eqz v9, :cond_3

    sub-double/2addr v7, v0

    goto :goto_1

    :cond_3
    if-eqz v10, :cond_4

    const-wide v0, 0x3fd5555555555555L    # 0.3333333333333333

    add-double/2addr v3, v0

    sub-double v7, v3, v7

    goto :goto_1

    :cond_4
    const-wide v5, 0x3fe5555555555555L    # 0.6666666666666666

    add-double/2addr v0, v5

    sub-double v7, v0, v3

    :goto_1
    cmpg-double v0, v7, v11

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-gez v0, :cond_5

    add-double/2addr v7, v1

    :cond_5
    cmpl-double v0, v7, v1

    if-lez v0, :cond_6

    sub-double/2addr v7, v1

    :cond_6
    move-wide v14, v13

    move-wide v12, v7

    .line 468
    :goto_2
    new-instance v0, Lorg/apache/commons/imaging/color/ColorHsv;

    move-object v11, v0

    invoke-direct/range {v11 .. v17}, Lorg/apache/commons/imaging/color/ColorHsv;-><init>(DDD)V

    return-object v0
.end method

.method private static convertRGBtoRGB(DDD)I
    .locals 0

    .line 623
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p0, p0

    .line 624
    invoke-static {p2, p3}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p1, p1

    .line 625
    invoke-static {p4, p5}, Ljava/lang/Math;->round(D)J

    move-result-wide p2

    long-to-int p2, p2

    const/4 p3, 0x0

    .line 627
    invoke-static {p3, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/16 p4, 0xff

    invoke-static {p4, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 628
    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p4, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 629
    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    shl-int/lit8 p0, p0, 0x10

    const/high16 p3, -0x1000000

    or-int/2addr p0, p3

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    or-int/2addr p0, p2

    return p0
.end method

.method private static convertRGBtoRGB(III)I
    .locals 2

    const/4 v0, 0x0

    .line 638
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/16 v1, 0xff

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 639
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 640
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    shl-int/lit8 p0, p0, 0x10

    const/high16 v0, -0x1000000

    or-int/2addr p0, v0

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    or-int/2addr p0, p2

    return p0
.end method

.method public static convertRGBtoXYZ(I)Lorg/apache/commons/imaging/color/ColorXyz;
    .locals 18

    move/from16 v0, p0

    shr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v0, v0, 0xff

    int-to-double v3, v1

    const-wide v5, 0x406fe00000000000L    # 255.0

    div-double/2addr v3, v5

    int-to-double v1, v2

    div-double/2addr v1, v5

    int-to-double v7, v0

    div-double/2addr v7, v5

    const-wide v5, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpl-double v0, v3, v5

    const-wide v9, 0x4003333333333333L    # 2.4

    const-wide v11, 0x3ff0e147ae147ae1L    # 1.055

    const-wide v13, 0x3fac28f5c28f5c29L    # 0.055

    const-wide v15, 0x4029d70a3d70a3d7L    # 12.92

    if-lez v0, :cond_0

    add-double/2addr v3, v13

    div-double/2addr v3, v11

    .line 172
    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    goto :goto_0

    :cond_0
    div-double/2addr v3, v15

    :goto_0
    cmpl-double v0, v1, v5

    if-lez v0, :cond_1

    add-double/2addr v1, v13

    div-double/2addr v1, v11

    .line 177
    invoke-static {v1, v2, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    goto :goto_1

    :cond_1
    div-double v0, v1, v15

    :goto_1
    cmpl-double v2, v7, v5

    if-lez v2, :cond_2

    add-double/2addr v7, v13

    div-double/2addr v7, v11

    .line 182
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    goto :goto_2

    :cond_2
    div-double v5, v7, v15

    :goto_2
    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    mul-double/2addr v3, v7

    mul-double/2addr v0, v7

    mul-double/2addr v5, v7

    const-wide v7, 0x3fda64c2f837b4a2L    # 0.4124

    mul-double/2addr v7, v3

    const-wide v9, 0x3fd6e2eb1c432ca5L    # 0.3576

    mul-double/2addr v9, v0

    add-double/2addr v7, v9

    const-wide v9, 0x3fc71a9fbe76c8b4L    # 0.1805

    mul-double/2addr v9, v5

    add-double v12, v7, v9

    const-wide v7, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double/2addr v7, v3

    const-wide v9, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double/2addr v9, v0

    add-double/2addr v7, v9

    const-wide v9, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double/2addr v9, v5

    add-double v14, v7, v9

    const-wide v7, 0x3f93c36113404ea5L    # 0.0193

    mul-double/2addr v3, v7

    const-wide v7, 0x3fbe83e425aee632L    # 0.1192

    mul-double/2addr v0, v7

    add-double/2addr v3, v0

    const-wide v0, 0x3fee6a7ef9db22d1L    # 0.9505

    mul-double/2addr v5, v0

    add-double v16, v3, v5

    .line 196
    new-instance v0, Lorg/apache/commons/imaging/color/ColorXyz;

    move-object v11, v0

    invoke-direct/range {v11 .. v17}, Lorg/apache/commons/imaging/color/ColorXyz;-><init>(DDD)V

    return-object v0
.end method

.method public static convertXYZtoCIELab(DDD)Lorg/apache/commons/imaging/color/ColorCieLab;
    .locals 17

    const-wide v0, 0x4057c3020c49ba5eL    # 95.047

    div-double v0, p0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double v2, p2, v2

    const-wide v4, 0x405b3883126e978dL    # 108.883

    div-double v4, p4, v4

    const-wide v6, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v8, v0, v6

    const-wide v9, 0x3fd5555555555555L    # 0.3333333333333333

    const-wide v11, 0x3fc1a7b9611a7b96L    # 0.13793103448275862

    const-wide v13, 0x401f25e353f7ced9L    # 7.787

    if-lez v8, :cond_0

    .line 41
    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    mul-double/2addr v0, v13

    add-double/2addr v0, v11

    :goto_0
    cmpl-double v8, v2, v6

    if-lez v8, :cond_1

    .line 46
    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    goto :goto_1

    :cond_1
    mul-double/2addr v2, v13

    add-double/2addr v2, v11

    :goto_1
    cmpl-double v6, v4, v6

    if-lez v6, :cond_2

    .line 51
    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    goto :goto_2

    :cond_2
    mul-double/2addr v4, v13

    add-double/2addr v4, v11

    :goto_2
    const-wide/high16 v6, 0x405d000000000000L    # 116.0

    mul-double/2addr v6, v2

    const-wide/high16 v8, 0x4030000000000000L    # 16.0

    sub-double v11, v6, v8

    const-wide v6, 0x407f400000000000L    # 500.0

    sub-double/2addr v0, v2

    mul-double v13, v0, v6

    const-wide/high16 v0, 0x4069000000000000L    # 200.0

    sub-double/2addr v2, v4

    mul-double v15, v2, v0

    .line 59
    new-instance v0, Lorg/apache/commons/imaging/color/ColorCieLab;

    move-object v10, v0

    invoke-direct/range {v10 .. v16}, Lorg/apache/commons/imaging/color/ColorCieLab;-><init>(DDD)V

    return-object v0
.end method

.method public static convertXYZtoCIELab(Lorg/apache/commons/imaging/color/ColorXyz;)Lorg/apache/commons/imaging/color/ColorCieLab;
    .locals 6

    .line 29
    iget-wide v0, p0, Lorg/apache/commons/imaging/color/ColorXyz;->X:D

    iget-wide v2, p0, Lorg/apache/commons/imaging/color/ColorXyz;->Y:D

    iget-wide v4, p0, Lorg/apache/commons/imaging/color/ColorXyz;->Z:D

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/imaging/color/ColorConversions;->convertXYZtoCIELab(DDD)Lorg/apache/commons/imaging/color/ColorCieLab;

    move-result-object p0

    return-object p0
.end method

.method public static convertXYZtoCIELuv(DDD)Lorg/apache/commons/imaging/color/ColorCieLuv;
    .locals 9

    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    mul-double/2addr v0, p0

    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    mul-double/2addr v2, p2

    add-double/2addr p0, v2

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double/2addr p4, v2

    add-double/2addr p0, p4

    div-double/2addr v0, p0

    const-wide/high16 p4, 0x4022000000000000L    # 9.0

    mul-double/2addr p4, p2

    div-double/2addr p4, p0

    const-wide/high16 p0, 0x4059000000000000L    # 100.0

    div-double/2addr p2, p0

    const-wide p0, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double p0, p2, p0

    if-lez p0, :cond_0

    const-wide p0, 0x3fd5555555555555L    # 0.3333333333333333

    .line 707
    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    goto :goto_0

    :cond_0
    const-wide p0, 0x401f25e353f7ced9L    # 7.787

    mul-double/2addr p2, p0

    const-wide p0, 0x3fc1a7b9611a7b96L    # 0.13793103448275862

    add-double/2addr p0, p2

    :goto_0
    const-wide/high16 p2, 0x405d000000000000L    # 116.0

    mul-double/2addr p0, p2

    const-wide/high16 p2, 0x4030000000000000L    # 16.0

    sub-double v3, p0, p2

    const-wide/high16 p0, 0x402a000000000000L    # 13.0

    mul-double/2addr p0, v3

    const-wide p2, 0x3fc952d0bcba2702L    # 0.19783982482140777

    sub-double/2addr v0, p2

    mul-double v5, p0, v0

    const-wide p2, 0x3fddf938d427f3b1L    # 0.46833630293240974

    sub-double/2addr p4, p2

    mul-double v7, p0, p4

    .line 724
    new-instance p0, Lorg/apache/commons/imaging/color/ColorCieLuv;

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lorg/apache/commons/imaging/color/ColorCieLuv;-><init>(DDD)V

    return-object p0
.end method

.method public static convertXYZtoCIELuv(Lorg/apache/commons/imaging/color/ColorXyz;)Lorg/apache/commons/imaging/color/ColorCieLuv;
    .locals 6

    .line 691
    iget-wide v0, p0, Lorg/apache/commons/imaging/color/ColorXyz;->X:D

    iget-wide v2, p0, Lorg/apache/commons/imaging/color/ColorXyz;->Y:D

    iget-wide v4, p0, Lorg/apache/commons/imaging/color/ColorXyz;->Z:D

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/imaging/color/ColorConversions;->convertXYZtoCIELuv(DDD)Lorg/apache/commons/imaging/color/ColorCieLuv;

    move-result-object p0

    return-object p0
.end method

.method public static convertXYZtoHunterLab(DDD)Lorg/apache/commons/imaging/color/ColorHunterLab;
    .locals 11

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 101
    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double v5, v2, v0

    const-wide v0, 0x3ff051eb851eb852L    # 1.02

    mul-double/2addr v0, p0

    sub-double/2addr v0, p2

    .line 102
    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    const-wide v2, 0x4031800000000000L    # 17.5

    mul-double v7, v0, v2

    const-wide v0, 0x3feb1a9fbe76c8b4L    # 0.847

    mul-double/2addr v0, p4

    sub-double v0, p2, v0

    .line 103
    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x401c000000000000L    # 7.0

    mul-double v9, v0, v2

    .line 105
    new-instance v0, Lorg/apache/commons/imaging/color/ColorHunterLab;

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lorg/apache/commons/imaging/color/ColorHunterLab;-><init>(DDD)V

    return-object v0
.end method

.method public static convertXYZtoHunterLab(Lorg/apache/commons/imaging/color/ColorXyz;)Lorg/apache/commons/imaging/color/ColorHunterLab;
    .locals 6

    .line 96
    iget-wide v0, p0, Lorg/apache/commons/imaging/color/ColorXyz;->X:D

    iget-wide v2, p0, Lorg/apache/commons/imaging/color/ColorXyz;->Y:D

    iget-wide v4, p0, Lorg/apache/commons/imaging/color/ColorXyz;->Z:D

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/imaging/color/ColorConversions;->convertXYZtoHunterLab(DDD)Lorg/apache/commons/imaging/color/ColorHunterLab;

    move-result-object p0

    return-object p0
.end method

.method public static convertXYZtoRGB(DDD)I
    .locals 18

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double v2, p0, v0

    div-double v4, p2, v0

    div-double v0, p4, v0

    const-wide v6, 0x4009ecbfb15b573fL    # 3.2406

    mul-double/2addr v6, v2

    const-wide v8, -0x400767a0f9096bbaL    # -1.5372

    mul-double/2addr v8, v4

    add-double/2addr v6, v8

    const-wide v8, -0x402016f0068db8bbL    # -0.4986

    mul-double/2addr v8, v0

    add-double/2addr v6, v8

    const-wide v8, -0x4010fec56d5cfaadL    # -0.9689

    mul-double/2addr v8, v2

    const-wide v10, 0x3ffe0346dc5d6388L    # 1.8758

    mul-double/2addr v10, v4

    add-double/2addr v8, v10

    const-wide v10, 0x3fa53f7ced916873L    # 0.0415

    mul-double/2addr v10, v0

    add-double/2addr v8, v10

    const-wide v10, 0x3fac84b5dcc63f14L    # 0.0557

    mul-double/2addr v2, v10

    const-wide v10, -0x4035e353f7ced917L    # -0.204

    mul-double/2addr v4, v10

    add-double/2addr v2, v4

    const-wide v4, 0x3ff0e978d4fdf3b6L    # 1.057

    mul-double/2addr v0, v4

    add-double/2addr v2, v0

    const-wide v0, 0x3f69a5c37387b719L    # 0.0031308

    cmpl-double v4, v6, v0

    const-wide v10, 0x3fac28f5c28f5c29L    # 0.055

    const-wide v12, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    const-wide v14, 0x3ff0e147ae147ae1L    # 1.055

    const-wide v16, 0x4029d70a3d70a3d7L    # 12.92

    if-lez v4, :cond_0

    .line 140
    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v4, v14

    sub-double/2addr v4, v10

    goto :goto_0

    :cond_0
    mul-double v4, v6, v16

    :goto_0
    cmpl-double v6, v8, v0

    if-lez v6, :cond_1

    .line 145
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v6, v14

    sub-double/2addr v6, v10

    goto :goto_1

    :cond_1
    mul-double v6, v8, v16

    :goto_1
    cmpl-double v0, v2, v0

    if-lez v0, :cond_2

    .line 150
    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, v14

    sub-double/2addr v0, v10

    goto :goto_2

    :cond_2
    mul-double v0, v2, v16

    :goto_2
    const-wide v2, 0x406fe00000000000L    # 255.0

    mul-double/2addr v4, v2

    mul-double/2addr v6, v2

    mul-double/2addr v0, v2

    move-wide/from16 p0, v4

    move-wide/from16 p2, v6

    move-wide/from16 p4, v0

    .line 159
    invoke-static/range {p0 .. p5}, Lorg/apache/commons/imaging/color/ColorConversions;->convertRGBtoRGB(DDD)I

    move-result v0

    return v0
.end method

.method public static convertXYZtoRGB(Lorg/apache/commons/imaging/color/ColorXyz;)I
    .locals 6

    .line 126
    iget-wide v0, p0, Lorg/apache/commons/imaging/color/ColorXyz;->X:D

    iget-wide v2, p0, Lorg/apache/commons/imaging/color/ColorXyz;->Y:D

    iget-wide v4, p0, Lorg/apache/commons/imaging/color/ColorXyz;->Z:D

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/imaging/color/ColorConversions;->convertXYZtoRGB(DDD)I

    move-result p0

    return p0
.end method

.method private static cube(D)D
    .locals 2

    mul-double v0, p0, p0

    mul-double/2addr v0, p0

    return-wide v0
.end method

.method public static degree_2_radian(D)D
    .locals 2

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p0, v0

    const-wide v0, 0x4066800000000000L    # 180.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static radian_2_degree(D)D
    .locals 2

    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double/2addr p0, v0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p0, v0

    return-wide p0
.end method

.method private static square(D)D
    .locals 0

    mul-double/2addr p0, p0

    return-wide p0
.end method
