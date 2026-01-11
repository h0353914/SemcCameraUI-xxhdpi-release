.class Lcom/sonyericsson/android/camera/view/blur/BlurProcess;
.super Ljava/lang/Object;
.source "BlurProcess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/blur/BlurProcess$BlurTask;
    }
.end annotation


# static fields
.field private static final stackblur_mul:[S

.field private static final stackblur_shr:[B


# direct methods
.method static bridge synthetic -$$Nest$smblurIteration([IIIIIII)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/sonyericsson/android/camera/view/blur/BlurProcess;->blurIteration([IIIIIII)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xff

    .line 35
    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonyericsson/android/camera/view/blur/BlurProcess;->stackblur_mul:[S

    const/16 v0, 0xff

    .line 57
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sonyericsson/android/camera/view/blur/BlurProcess;->stackblur_shr:[B

    return-void

    nop

    :array_0
    .array-data 2
        0x200s
        0x200s
        0x1c8s
        0x200s
        0x148s
        0x1c8s
        0x14fs
        0x200s
        0x195s
        0x148s
        0x10fs
        0x1c8s
        0x184s
        0x14fs
        0x124s
        0x200s
        0x1c6s
        0x195s
        0x16cs
        0x148s
        0x12as
        0x10fs
        0x1f0s
        0x1c8s
        0x1a4s
        0x184s
        0x168s
        0x14fs
        0x138s
        0x124s
        0x111s
        0x200s
        0x1e2s
        0x1c6s
        0x1acs
        0x195s
        0x17fs
        0x16cs
        0x159s
        0x148s
        0x138s
        0x12as
        0x11cs
        0x10fs
        0x103s
        0x1f0s
        0x1dbs
        0x1c8s
        0x1b5s
        0x1a4s
        0x194s
        0x184s
        0x176s
        0x168s
        0x15bs
        0x14fs
        0x143s
        0x138s
        0x12es
        0x124s
        0x11as
        0x111s
        0x109s
        0x200s
        0x1f1s
        0x1e2s
        0x1d4s
        0x1c6s
        0x1b9s
        0x1acs
        0x1a1s
        0x195s
        0x18as
        0x17fs
        0x175s
        0x16cs
        0x162s
        0x159s
        0x151s
        0x148s
        0x140s
        0x138s
        0x131s
        0x12as
        0x123s
        0x11cs
        0x116s
        0x10fs
        0x109s
        0x103s
        0x1fbs
        0x1f0s
        0x1e5s
        0x1dbs
        0x1d1s
        0x1c8s
        0x1bes
        0x1b5s
        0x1acs
        0x1a4s
        0x19cs
        0x194s
        0x18cs
        0x184s
        0x17ds
        0x176s
        0x16fs
        0x168s
        0x162s
        0x15bs
        0x155s
        0x14fs
        0x149s
        0x143s
        0x13es
        0x138s
        0x133s
        0x12es
        0x129s
        0x124s
        0x11fs
        0x11as
        0x116s
        0x111s
        0x10ds
        0x109s
        0x105s
        0x200s
        0x1f9s
        0x1f1s
        0x1e9s
        0x1e2s
        0x1dbs
        0x1d4s
        0x1cds
        0x1c6s
        0x1bfs
        0x1b9s
        0x1b3s
        0x1acs
        0x1a6s
        0x1a1s
        0x19bs
        0x195s
        0x18fs
        0x18as
        0x185s
        0x17fs
        0x17as
        0x175s
        0x170s
        0x16cs
        0x167s
        0x162s
        0x15es
        0x159s
        0x155s
        0x151s
        0x14cs
        0x148s
        0x144s
        0x140s
        0x13cs
        0x138s
        0x135s
        0x131s
        0x12ds
        0x12as
        0x126s
        0x123s
        0x11fs
        0x11cs
        0x119s
        0x116s
        0x112s
        0x10fs
        0x10cs
        0x109s
        0x106s
        0x103s
        0x101s
        0x1fbs
        0x1f5s
        0x1f0s
        0x1ebs
        0x1e5s
        0x1e0s
        0x1dbs
        0x1d6s
        0x1d1s
        0x1ccs
        0x1c8s
        0x1c3s
        0x1bes
        0x1bas
        0x1b5s
        0x1b1s
        0x1acs
        0x1a8s
        0x1a4s
        0x1a0s
        0x19cs
        0x198s
        0x194s
        0x190s
        0x18cs
        0x188s
        0x184s
        0x181s
        0x17ds
        0x179s
        0x176s
        0x172s
        0x16fs
        0x16bs
        0x168s
        0x165s
        0x162s
        0x15es
        0x15bs
        0x158s
        0x155s
        0x152s
        0x14fs
        0x14cs
        0x149s
        0x146s
        0x143s
        0x140s
        0x13es
        0x13bs
        0x138s
        0x136s
        0x133s
        0x130s
        0x12es
        0x12bs
        0x129s
        0x126s
        0x124s
        0x121s
        0x11fs
        0x11ds
        0x11as
        0x118s
        0x116s
        0x113s
        0x111s
        0x10fs
        0x10ds
        0x10bs
        0x109s
        0x107s
        0x105s
        0x103s
    .end array-data

    nop

    :array_1
    .array-data 1
        0x9t
        0xbt
        0xct
        0xdt
        0xdt
        0xet
        0xet
        0xft
        0xft
        0xft
        0xft
        0x10t
        0x10t
        0x10t
        0x10t
        0x11t
        0x11t
        0x11t
        0x11t
        0x11t
        0x11t
        0x11t
        0x12t
        0x12t
        0x12t
        0x12t
        0x12t
        0x12t
        0x12t
        0x12t
        0x12t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blurIteration([IIIIIII)V
    .locals 43

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p6

    add-int/lit8 v4, v0, -0x1

    add-int/lit8 v5, v1, -0x1

    mul-int/lit8 v6, v2, 0x2

    const/4 v7, 0x1

    add-int/2addr v6, v7

    .line 121
    sget-object v8, Lcom/sonyericsson/android/camera/view/blur/BlurProcess;->stackblur_mul:[S

    aget-short v8, v8, v2

    .line 122
    sget-object v9, Lcom/sonyericsson/android/camera/view/blur/BlurProcess;->stackblur_shr:[B

    aget-byte v9, v9, v2

    .line 123
    new-array v10, v6, [I

    const/16 v16, 0x10

    const-wide/16 v17, 0x0

    if-ne v3, v7, :cond_8

    mul-int v3, p5, v1

    .line 126
    div-int v3, v3, p4

    add-int/lit8 v5, p5, 0x1

    mul-int/2addr v5, v1

    .line 127
    div-int v5, v5, p4

    :goto_0
    if-ge v3, v5, :cond_11

    mul-int v1, v0, v3

    move-wide/from16 v19, v17

    move-wide/from16 v21, v19

    move-wide/from16 v23, v21

    move-wide/from16 v25, v23

    move-wide/from16 v27, v25

    move-wide/from16 v29, v27

    const/4 v14, 0x0

    :goto_1
    if-gt v14, v2, :cond_0

    .line 144
    aget v31, p0, v1

    aput v31, v10, v14

    .line 145
    aget v7, p0, v1

    ushr-int/lit8 v15, v7, 0x10

    and-int/lit16 v15, v15, 0xff

    add-int/lit8 v14, v14, 0x1

    mul-int/2addr v15, v14

    int-to-long v12, v15

    add-long v19, v19, v12

    ushr-int/lit8 v12, v7, 0x8

    and-int/lit16 v12, v12, 0xff

    mul-int/2addr v12, v14

    int-to-long v12, v12

    add-long v21, v21, v12

    and-int/lit16 v12, v7, 0xff

    mul-int/2addr v12, v14

    int-to-long v12, v12

    add-long v23, v23, v12

    ushr-int/lit8 v12, v7, 0x10

    and-int/lit16 v12, v12, 0xff

    int-to-long v12, v12

    add-long v25, v25, v12

    ushr-int/lit8 v12, v7, 0x8

    and-int/lit16 v12, v12, 0xff

    int-to-long v12, v12

    add-long v27, v27, v12

    and-int/lit16 v7, v7, 0xff

    int-to-long v12, v7

    add-long v29, v29, v12

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    move v12, v1

    move-wide/from16 v13, v17

    move-wide/from16 v35, v13

    move-wide/from16 v37, v35

    const/4 v7, 0x1

    :goto_2
    if-gt v7, v2, :cond_2

    if-gt v7, v4, :cond_1

    add-int/lit8 v12, v12, 0x1

    :cond_1
    add-int v15, v7, v2

    .line 157
    aget v39, p0, v12

    aput v39, v10, v15

    .line 158
    aget v15, p0, v12

    ushr-int/lit8 v11, v15, 0x10

    and-int/lit16 v11, v11, 0xff

    add-int/lit8 v40, v2, 0x1

    sub-int v40, v40, v7

    mul-int v11, v11, v40

    move/from16 p2, v12

    int-to-long v11, v11

    add-long v19, v19, v11

    ushr-int/lit8 v11, v15, 0x8

    and-int/lit16 v11, v11, 0xff

    mul-int v11, v11, v40

    int-to-long v11, v11

    add-long v21, v21, v11

    and-int/lit16 v11, v15, 0xff

    mul-int v11, v11, v40

    int-to-long v11, v11

    add-long v23, v23, v11

    ushr-int/lit8 v11, v15, 0x10

    and-int/lit16 v11, v11, 0xff

    int-to-long v11, v11

    add-long/2addr v13, v11

    ushr-int/lit8 v11, v15, 0x8

    and-int/lit16 v11, v11, 0xff

    int-to-long v11, v11

    add-long v35, v35, v11

    and-int/lit16 v11, v15, 0xff

    int-to-long v11, v11

    add-long v37, v37, v11

    add-int/lit8 v7, v7, 0x1

    move/from16 v12, p2

    goto :goto_2

    :cond_2
    if-le v2, v4, :cond_3

    move v7, v4

    goto :goto_3

    :cond_3
    move v7, v2

    :goto_3
    add-int v11, v7, v1

    move v15, v2

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v0, :cond_7

    .line 173
    aget v40, p0, v1

    move/from16 p2, v5

    const/high16 v39, -0x1000000

    and-int v5, v40, v39

    move-wide/from16 p4, v13

    move v14, v12

    int-to-long v12, v5

    move v5, v3

    move/from16 v40, v4

    int-to-long v3, v8

    mul-long v41, v19, v3

    ushr-long v41, v41, v9

    const-wide/16 v33, 0xff

    and-long v41, v41, v33

    shl-long v41, v41, v16

    or-long v12, v12, v41

    mul-long v41, v21, v3

    ushr-long v41, v41, v9

    and-long v41, v41, v33

    const/16 v32, 0x8

    shl-long v41, v41, v32

    or-long v12, v12, v41

    mul-long v3, v3, v23

    ushr-long/2addr v3, v9

    and-long v3, v3, v33

    or-long/2addr v3, v12

    long-to-int v3, v3

    aput v3, p0, v1

    const/4 v3, 0x1

    add-int/2addr v1, v3

    sub-long v19, v19, v25

    sub-long v21, v21, v27

    sub-long v23, v23, v29

    add-int v3, v15, v6

    sub-int/2addr v3, v2

    if-lt v3, v6, :cond_4

    sub-int/2addr v3, v6

    .line 187
    :cond_4
    aget v4, v10, v3

    ushr-int/lit8 v12, v4, 0x10

    and-int/lit16 v12, v12, 0xff

    int-to-long v12, v12

    sub-long v25, v25, v12

    ushr-int/lit8 v12, v4, 0x8

    and-int/lit16 v12, v12, 0xff

    int-to-long v12, v12

    sub-long v27, v27, v12

    and-int/lit16 v4, v4, 0xff

    int-to-long v12, v4

    sub-long v29, v29, v12

    move/from16 v4, v40

    if-ge v7, v4, :cond_5

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v7, v7, 0x1

    .line 196
    :cond_5
    aget v12, p0, v11

    aput v12, v10, v3

    .line 198
    aget v3, p0, v11

    ushr-int/lit8 v12, v3, 0x10

    and-int/lit16 v12, v12, 0xff

    int-to-long v12, v12

    move-wide/from16 v40, p4

    add-long v12, v40, v12

    move/from16 p4, v1

    ushr-int/lit8 v1, v3, 0x8

    and-int/lit16 v1, v1, 0xff

    move/from16 p5, v7

    move/from16 v40, v8

    int-to-long v7, v1

    add-long v35, v35, v7

    and-int/lit16 v1, v3, 0xff

    int-to-long v7, v1

    add-long v37, v37, v7

    add-long v19, v19, v12

    add-long v21, v21, v35

    add-long v23, v23, v37

    add-int/lit8 v15, v15, 0x1

    if-lt v15, v6, :cond_6

    const/4 v15, 0x0

    .line 210
    :cond_6
    aget v1, v10, v15

    ushr-int/lit8 v3, v1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-long v7, v3

    add-long v25, v25, v7

    ushr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-long v7, v3

    add-long v27, v27, v7

    and-int/lit16 v3, v1, 0xff

    int-to-long v7, v3

    add-long v29, v29, v7

    ushr-int/lit8 v3, v1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-long v7, v3

    sub-long v7, v12, v7

    ushr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-long v12, v3

    sub-long v35, v35, v12

    and-int/lit16 v1, v1, 0xff

    int-to-long v12, v1

    sub-long v37, v37, v12

    add-int/lit8 v12, v14, 0x1

    move/from16 v1, p4

    move v3, v5

    move-wide v13, v7

    move/from16 v8, v40

    move/from16 v5, p2

    move/from16 v7, p5

    goto/16 :goto_4

    :cond_7
    move/from16 p2, v5

    move/from16 v40, v8

    move v5, v3

    add-int/lit8 v3, v5, 0x1

    move/from16 v5, p2

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_8
    move/from16 v40, v8

    const/4 v4, 0x2

    if-ne v3, v4, :cond_11

    mul-int v3, p5, v0

    .line 223
    div-int v3, v3, p4

    const/4 v4, 0x1

    add-int/lit8 v7, p5, 0x1

    mul-int/2addr v7, v0

    .line 224
    div-int v7, v7, p4

    :goto_5
    if-ge v3, v7, :cond_11

    move-wide/from16 v11, v17

    move-wide v13, v11

    move-wide/from16 v19, v13

    move-wide/from16 v21, v19

    move-wide/from16 v23, v21

    move-wide/from16 v25, v23

    const/4 v8, 0x0

    :goto_6
    if-gt v8, v2, :cond_9

    .line 240
    aget v15, p0, v3

    aput v15, v10, v8

    .line 241
    aget v15, p0, v3

    ushr-int/lit8 v4, v15, 0x10

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v8, v8, 0x1

    mul-int/2addr v4, v8

    move/from16 v27, v6

    move/from16 p4, v7

    int-to-long v6, v4

    add-long/2addr v11, v6

    ushr-int/lit8 v4, v15, 0x8

    and-int/lit16 v4, v4, 0xff

    mul-int/2addr v4, v8

    int-to-long v6, v4

    add-long/2addr v13, v6

    and-int/lit16 v4, v15, 0xff

    mul-int/2addr v4, v8

    int-to-long v6, v4

    add-long v19, v19, v6

    ushr-int/lit8 v4, v15, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-long v6, v4

    add-long v21, v21, v6

    ushr-int/lit8 v4, v15, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-long v6, v4

    add-long v23, v23, v6

    and-int/lit16 v4, v15, 0xff

    int-to-long v6, v4

    add-long v25, v25, v6

    move/from16 v7, p4

    move/from16 v6, v27

    const/4 v4, 0x1

    goto :goto_6

    :cond_9
    move/from16 v27, v6

    move/from16 p4, v7

    move v6, v3

    move-wide/from16 v7, v17

    move-wide/from16 v28, v7

    move-wide/from16 v35, v28

    const/4 v4, 0x1

    :goto_7
    if-gt v4, v2, :cond_b

    if-gt v4, v5, :cond_a

    add-int/2addr v6, v0

    :cond_a
    add-int v15, v4, v2

    .line 253
    aget v30, p0, v6

    aput v30, v10, v15

    .line 254
    aget v15, p0, v6

    move/from16 p5, v6

    ushr-int/lit8 v6, v15, 0x10

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v30, v2, 0x1

    sub-int v30, v30, v4

    mul-int v6, v6, v30

    move/from16 v37, v9

    move-object/from16 v38, v10

    int-to-long v9, v6

    add-long/2addr v11, v9

    ushr-int/lit8 v6, v15, 0x8

    and-int/lit16 v6, v6, 0xff

    mul-int v6, v6, v30

    int-to-long v9, v6

    add-long/2addr v13, v9

    and-int/lit16 v6, v15, 0xff

    mul-int v6, v6, v30

    int-to-long v9, v6

    add-long v19, v19, v9

    ushr-int/lit8 v6, v15, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-long v9, v6

    add-long/2addr v7, v9

    ushr-int/lit8 v6, v15, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-long v9, v6

    add-long v28, v28, v9

    and-int/lit16 v6, v15, 0xff

    int-to-long v9, v6

    add-long v35, v35, v9

    add-int/lit8 v4, v4, 0x1

    move/from16 v6, p5

    move/from16 v9, v37

    move-object/from16 v10, v38

    goto :goto_7

    :cond_b
    move/from16 v37, v9

    move-object/from16 v38, v10

    if-le v2, v5, :cond_c

    move v4, v5

    goto :goto_8

    :cond_c
    move v4, v2

    :goto_8
    mul-int v6, v4, v0

    add-int/2addr v6, v3

    move v15, v2

    move v10, v3

    const/4 v9, 0x0

    :goto_9
    if-ge v9, v1, :cond_10

    .line 269
    aget v30, p0, v10

    const/high16 v39, -0x1000000

    and-int v1, v30, v39

    move-wide/from16 p5, v7

    int-to-long v7, v1

    move/from16 v30, v3

    move/from16 v1, v40

    move/from16 v40, v4

    int-to-long v3, v1

    mul-long v41, v11, v3

    ushr-long v41, v41, v37

    const-wide/16 v33, 0xff

    and-long v41, v41, v33

    shl-long v41, v41, v16

    or-long v7, v7, v41

    mul-long v41, v13, v3

    ushr-long v41, v41, v37

    and-long v41, v41, v33

    const/16 v32, 0x8

    shl-long v41, v41, v32

    or-long v7, v7, v41

    mul-long v3, v3, v19

    ushr-long v3, v3, v37

    and-long v3, v3, v33

    or-long/2addr v3, v7

    long-to-int v3, v3

    aput v3, p0, v10

    add-int/2addr v10, v0

    sub-long v11, v11, v21

    sub-long v13, v13, v23

    sub-long v19, v19, v25

    add-int v3, v15, v27

    sub-int/2addr v3, v2

    move/from16 v4, v27

    if-lt v3, v4, :cond_d

    sub-int/2addr v3, v4

    .line 283
    :cond_d
    aget v7, v38, v3

    ushr-int/lit8 v8, v7, 0x10

    and-int/lit16 v8, v8, 0xff

    move/from16 v27, v1

    int-to-long v1, v8

    sub-long v21, v21, v1

    ushr-int/lit8 v1, v7, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-long v1, v1

    sub-long v23, v23, v1

    and-int/lit16 v1, v7, 0xff

    int-to-long v1, v1

    sub-long v25, v25, v1

    move/from16 v1, v40

    if-ge v1, v5, :cond_e

    add-int/2addr v6, v0

    add-int/lit8 v1, v1, 0x1

    .line 292
    :cond_e
    aget v2, p0, v6

    aput v2, v38, v3

    .line 294
    aget v2, p0, v6

    ushr-int/lit8 v3, v2, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-long v7, v3

    move-wide/from16 v40, p5

    add-long v7, v40, v7

    ushr-int/lit8 v3, v2, 0x8

    and-int/lit16 v3, v3, 0xff

    move/from16 p5, v1

    int-to-long v0, v3

    add-long v28, v28, v0

    and-int/lit16 v0, v2, 0xff

    int-to-long v0, v0

    add-long v35, v35, v0

    add-long/2addr v11, v7

    add-long v13, v13, v28

    add-long v19, v19, v35

    add-int/lit8 v15, v15, 0x1

    if-lt v15, v4, :cond_f

    const/4 v15, 0x0

    .line 306
    :cond_f
    aget v0, v38, v15

    ushr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-long v1, v1

    add-long v21, v21, v1

    ushr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-long v1, v1

    add-long v23, v23, v1

    and-int/lit16 v1, v0, 0xff

    int-to-long v1, v1

    add-long v25, v25, v1

    ushr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-long v1, v1

    sub-long/2addr v7, v1

    ushr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-long v1, v1

    sub-long v28, v28, v1

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    sub-long v35, v35, v0

    add-int/lit8 v9, v9, 0x1

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v40, v27

    move/from16 v3, v30

    move/from16 v27, v4

    move/from16 v4, p5

    goto/16 :goto_9

    :cond_10
    move/from16 v30, v3

    move/from16 v4, v27

    move/from16 v27, v40

    const/16 v32, 0x8

    const-wide/16 v33, 0xff

    const/high16 v39, -0x1000000

    add-int/lit8 v3, v30, 0x1

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v7, p4

    move v6, v4

    move/from16 v9, v37

    move-object/from16 v10, v38

    const/4 v4, 0x1

    goto/16 :goto_5

    :cond_11
    return-void
.end method


# virtual methods
.method public blur(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 18

    .line 75
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 76
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v0, v8, v9

    .line 77
    new-array v10, v0, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p1

    move-object v1, v10

    move v3, v8

    move v6, v8

    move v7, v9

    .line 78
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 79
    sget v11, Lcom/sonyericsson/android/camera/view/blur/StackBlurManager;->EXECUTOR_THREADS:I

    .line 81
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 82
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v11}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    move v14, v0

    :goto_0
    if-ge v14, v11, :cond_0

    .line 84
    new-instance v15, Lcom/sonyericsson/android/camera/view/blur/BlurProcess$BlurTask;

    move/from16 v7, p2

    float-to-int v6, v7

    const/16 v16, 0x1

    move-object v0, v15

    move-object v1, v10

    move v2, v8

    move v3, v9

    move v4, v6

    move v5, v11

    move/from16 v17, v6

    move v6, v14

    move/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/android/camera/view/blur/BlurProcess$BlurTask;-><init>([IIIIIII)V

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v15, Lcom/sonyericsson/android/camera/view/blur/BlurProcess$BlurTask;

    const/4 v7, 0x2

    move-object v0, v15

    move/from16 v4, v17

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/android/camera/view/blur/BlurProcess$BlurTask;-><init>([IIIIIII)V

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 91
    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/camera/view/blur/StackBlurManager;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v12}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :try_start_1
    sget-object v1, Lcom/sonyericsson/android/camera/view/blur/StackBlurManager;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v13}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 102
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 103
    invoke-static {v10, v8, v9, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :catch_0
    return-object v0
.end method
