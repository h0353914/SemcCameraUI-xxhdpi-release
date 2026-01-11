.class public final Lcom/sonyericsson/android/camera/util/ResourceConvertUtils$Companion;
.super Ljava/lang/Object;
.source "ResourceConvertUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/util/ResourceConvertUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0007J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0008H\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/sonyericsson/android/camera/util/ResourceConvertUtils$Companion;",
        "",
        "()V",
        "convertIso",
        "",
        "inputIso",
        "convertSs",
        "inputSs",
        "",
        "SemcCameraUI_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/util/ResourceConvertUtils$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final convertIso(I)I
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/16 p0, 0x8

    const/16 v0, 0xc

    if-gt p0, p1, :cond_0

    if-ge p1, v0, :cond_0

    const p0, 0x7f0f028a

    goto/16 :goto_0

    :cond_0
    const/16 p0, 0xf

    if-gt v0, p1, :cond_1

    if-ge p1, p0, :cond_1

    const p0, 0x7f0f0290

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0x12

    if-gt p0, p1, :cond_2

    if-ge p1, v0, :cond_2

    const p0, 0x7f0f0294

    goto/16 :goto_0

    :cond_2
    const/16 p0, 0x17

    if-gt v0, p1, :cond_3

    if-ge p1, p0, :cond_3

    const p0, 0x7f0f0298

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0x1d

    if-gt p0, p1, :cond_4

    if-ge p1, v0, :cond_4

    const p0, 0x7f0f029c

    goto/16 :goto_0

    :cond_4
    const/16 p0, 0x24

    if-gt v0, p1, :cond_5

    if-ge p1, p0, :cond_5

    const p0, 0x7f0f02a1

    goto/16 :goto_0

    :cond_5
    const/16 v0, 0x2d

    if-gt p0, p1, :cond_6

    if-ge p1, v0, :cond_6

    const p0, 0x7f0f02a5

    goto/16 :goto_0

    :cond_6
    const/16 p0, 0x39

    if-gt v0, p1, :cond_7

    if-ge p1, p0, :cond_7

    const p0, 0x7f0f02a8

    goto/16 :goto_0

    :cond_7
    const/16 v0, 0x48

    if-gt p0, p1, :cond_8

    if-ge p1, v0, :cond_8

    const p0, 0x7f0f02ad

    goto/16 :goto_0

    :cond_8
    const/16 p0, 0x5a

    if-gt v0, p1, :cond_9

    if-ge p1, p0, :cond_9

    const p0, 0x7f0f02b1

    goto/16 :goto_0

    :cond_9
    const/16 v0, 0x71

    if-gt p0, p1, :cond_a

    if-ge p1, v0, :cond_a

    const p0, 0x7f0f0289

    goto/16 :goto_0

    :cond_a
    const/16 p0, 0x8e

    if-gt v0, p1, :cond_b

    if-ge p1, p0, :cond_b

    const p0, 0x7f0f028e

    goto/16 :goto_0

    :cond_b
    const/16 v0, 0xb3

    if-gt p0, p1, :cond_c

    if-ge p1, v0, :cond_c

    const p0, 0x7f0f0293

    goto/16 :goto_0

    :cond_c
    const/16 p0, 0xe1

    if-gt v0, p1, :cond_d

    if-ge p1, p0, :cond_d

    const p0, 0x7f0f0297

    goto/16 :goto_0

    :cond_d
    const/16 v0, 0x11b

    if-gt p0, p1, :cond_e

    if-ge p1, v0, :cond_e

    const p0, 0x7f0f029a

    goto/16 :goto_0

    :cond_e
    const/16 p0, 0x165

    if-gt v0, p1, :cond_f

    if-ge p1, p0, :cond_f

    const p0, 0x7f0f02a0

    goto/16 :goto_0

    :cond_f
    const/16 v0, 0x1c2

    if-gt p0, p1, :cond_10

    if-ge p1, v0, :cond_10

    const p0, 0x7f0f02a4

    goto/16 :goto_0

    :cond_10
    const/16 p0, 0x236

    if-gt v0, p1, :cond_11

    if-ge p1, p0, :cond_11

    const p0, 0x7f0f02a7

    goto/16 :goto_0

    :cond_11
    const/16 v0, 0x2c9

    if-gt p0, p1, :cond_12

    if-ge p1, v0, :cond_12

    const p0, 0x7f0f02ac

    goto/16 :goto_0

    :cond_12
    const/16 p0, 0x37b

    if-gt v0, p1, :cond_13

    if-ge p1, p0, :cond_13

    const p0, 0x7f0f02b0

    goto/16 :goto_0

    :cond_13
    const/16 v0, 0x463

    if-gt p0, p1, :cond_14

    if-ge p1, v0, :cond_14

    const p0, 0x7f0f0288

    goto/16 :goto_0

    :cond_14
    const/16 p0, 0x587

    if-gt v0, p1, :cond_15

    if-ge p1, p0, :cond_15

    const p0, 0x7f0f028d

    goto/16 :goto_0

    :cond_15
    if-gt p0, p1, :cond_16

    const/16 p0, 0x6f7

    if-ge p1, p0, :cond_16

    const p0, 0x7f0f0292

    goto/16 :goto_0

    :cond_16
    const/16 p0, 0x6f7

    if-gt p0, p1, :cond_17

    const/16 p0, 0x8c6

    if-ge p1, p0, :cond_17

    const p0, 0x7f0f0296

    goto/16 :goto_0

    :cond_17
    const/16 p0, 0x8c6

    if-gt p0, p1, :cond_18

    const/16 p0, 0xb0d

    if-ge p1, p0, :cond_18

    const p0, 0x7f0f0299

    goto/16 :goto_0

    :cond_18
    const/16 p0, 0xb0d

    if-gt p0, p1, :cond_19

    const/16 p0, 0xded

    if-ge p1, p0, :cond_19

    const p0, 0x7f0f029f

    goto/16 :goto_0

    :cond_19
    const/16 p0, 0xded

    if-gt p0, p1, :cond_1a

    const/16 p0, 0x118b

    if-ge p1, p0, :cond_1a

    const p0, 0x7f0f02a3

    goto/16 :goto_0

    :cond_1a
    const/16 p0, 0x118b

    if-gt p0, p1, :cond_1b

    const/16 p0, 0x161a

    if-ge p1, p0, :cond_1b

    const p0, 0x7f0f02a6

    goto/16 :goto_0

    :cond_1b
    const/16 p0, 0x161a

    if-gt p0, p1, :cond_1c

    const/16 p0, 0x1bd8

    if-ge p1, p0, :cond_1c

    const p0, 0x7f0f02ab

    goto/16 :goto_0

    :cond_1c
    const/16 p0, 0x1bd8

    if-gt p0, p1, :cond_1d

    const/16 p0, 0x22ce

    if-ge p1, p0, :cond_1d

    const p0, 0x7f0f02af

    goto/16 :goto_0

    :cond_1d
    const/16 p0, 0x22ce

    if-gt p0, p1, :cond_1e

    const/16 p0, 0x2bda

    if-ge p1, p0, :cond_1e

    const p0, 0x7f0f0287

    goto/16 :goto_0

    :cond_1e
    const/16 p0, 0x2bda

    if-gt p0, p1, :cond_1f

    const/16 p0, 0x373f

    if-ge p1, p0, :cond_1f

    const p0, 0x7f0f028f

    goto :goto_0

    :cond_1f
    const/16 p0, 0x373f

    if-gt p0, p1, :cond_20

    const/16 p0, 0x459b

    if-ge p1, p0, :cond_20

    const p0, 0x7f0f0291

    goto :goto_0

    :cond_20
    const/16 p0, 0x459b

    if-gt p0, p1, :cond_21

    const/16 p0, 0x57b2

    if-ge p1, p0, :cond_21

    const p0, 0x7f0f0295

    goto :goto_0

    :cond_21
    const/16 p0, 0x57b2

    if-gt p0, p1, :cond_22

    const/16 p0, 0x6e7d

    if-ge p1, p0, :cond_22

    const p0, 0x7f0f029b

    goto :goto_0

    :cond_22
    const/16 p0, 0x6e7d

    if-gt p0, p1, :cond_23

    const p0, 0x8b35

    if-ge p1, p0, :cond_23

    const p0, 0x7f0f029e

    goto :goto_0

    :cond_23
    const p0, 0x8b35

    if-gt p0, p1, :cond_24

    const p0, 0xaf63

    if-ge p1, p0, :cond_24

    const p0, 0x7f0f02a2

    goto :goto_0

    :cond_24
    const p0, 0xaf63

    if-gt p0, p1, :cond_25

    const p0, 0xdcfa

    if-ge p1, p0, :cond_25

    const p0, 0x7f0f02a9

    goto :goto_0

    :cond_25
    const p0, 0xdcfa

    if-gt p0, p1, :cond_26

    const p0, 0x11669

    if-ge p1, p0, :cond_26

    const p0, 0x7f0f02aa

    goto :goto_0

    :cond_26
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public final convertSs(J)I
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-wide/16 v0, 0x1

    cmp-long p0, p1, v0

    if-nez p0, :cond_0

    const p0, 0x7f0f03d8

    goto/16 :goto_0

    :cond_0
    const-wide/16 v0, 0x2

    cmp-long p0, p1, v0

    if-nez p0, :cond_1

    const p0, 0x7f0f03fb

    goto/16 :goto_0

    :cond_1
    const-wide/16 v0, 0x3

    cmp-long p0, p1, v0

    if-nez p0, :cond_2

    const p0, 0x7f0f03f6

    goto/16 :goto_0

    :cond_2
    const-wide/16 v0, 0x4

    cmp-long p0, p1, v0

    if-nez p0, :cond_3

    const p0, 0x7f0f03f0

    goto/16 :goto_0

    :cond_3
    const-wide/16 v0, 0x5

    cmp-long p0, p1, v0

    if-nez p0, :cond_4

    const p0, 0x7f0f03eb

    goto/16 :goto_0

    :cond_4
    const-wide/16 v0, 0x6

    cmp-long p0, p1, v0

    if-nez p0, :cond_5

    const p0, 0x7f0f03e7

    goto/16 :goto_0

    :cond_5
    const-wide/16 v0, 0x7

    cmp-long p0, v0, p1

    const-wide/16 v0, 0x9

    if-gtz p0, :cond_6

    cmp-long p0, p1, v0

    if-gez p0, :cond_6

    const p0, 0x7f0f03e1

    goto/16 :goto_0

    :cond_6
    cmp-long p0, v0, p1

    const-wide/16 v0, 0xb

    if-gtz p0, :cond_7

    cmp-long p0, p1, v0

    if-gez p0, :cond_7

    const p0, 0x7f0f03d9

    goto/16 :goto_0

    :cond_7
    cmp-long p0, v0, p1

    const-wide/16 v0, 0xe

    if-gtz p0, :cond_8

    cmp-long p0, p1, v0

    if-gez p0, :cond_8

    const p0, 0x7f0f040b

    goto/16 :goto_0

    :cond_8
    cmp-long p0, v0, p1

    const-wide/16 v0, 0x12

    if-gtz p0, :cond_9

    cmp-long p0, p1, v0

    if-gez p0, :cond_9

    const p0, 0x7f0f0407

    goto/16 :goto_0

    :cond_9
    cmp-long p0, v0, p1

    const-wide/16 v0, 0x16

    if-gtz p0, :cond_a

    cmp-long p0, p1, v0

    if-gez p0, :cond_a

    const p0, 0x7f0f0401

    goto/16 :goto_0

    :cond_a
    cmp-long p0, v0, p1

    const-wide/16 v0, 0x1c

    if-gtz p0, :cond_b

    cmp-long p0, p1, v0

    if-gez p0, :cond_b

    const p0, 0x7f0f03fc

    goto/16 :goto_0

    :cond_b
    cmp-long p0, v0, p1

    const-wide/16 v0, 0x24

    if-gtz p0, :cond_c

    cmp-long p0, p1, v0

    if-gez p0, :cond_c

    const p0, 0x7f0f03f7

    goto/16 :goto_0

    :cond_c
    cmp-long p0, v0, p1

    const-wide/16 v0, 0x2d

    if-gtz p0, :cond_d

    cmp-long p0, p1, v0

    if-gez p0, :cond_d

    const p0, 0x7f0f03f1

    goto/16 :goto_0

    :cond_d
    cmp-long p0, v0, p1

    const-wide/16 v0, 0x39

    if-gtz p0, :cond_e

    cmp-long p0, p1, v0

    if-gez p0, :cond_e

    const p0, 0x7f0f03ec

    goto/16 :goto_0

    :cond_e
    cmp-long p0, v0, p1

    const-wide/16 v0, 0x47

    if-gtz p0, :cond_f

    cmp-long p0, p1, v0

    if-gez p0, :cond_f

    const p0, 0x7f0f03e8

    goto/16 :goto_0

    :cond_f
    cmp-long p0, v0, p1

    const-wide/16 v0, 0x59

    if-gtz p0, :cond_10

    cmp-long p0, p1, v0

    if-gez p0, :cond_10

    const p0, 0x7f0f03e2

    goto/16 :goto_0

    :cond_10
    cmp-long p0, v0, p1

    const-wide/16 v0, 0x70

    if-gtz p0, :cond_11

    cmp-long p0, p1, v0

    if-gez p0, :cond_11

    const p0, 0x7f0f03da

    goto/16 :goto_0

    :cond_11
    cmp-long p0, v0, p1

    const-wide/16 v0, 0x8d

    if-gtz p0, :cond_12

    cmp-long p0, p1, v0

    if-gez p0, :cond_12

    const p0, 0x7f0f040c

    goto/16 :goto_0

    :cond_12
    cmp-long p0, v0, p1

    const-wide/16 v0, 0xb2

    if-gtz p0, :cond_13

    cmp-long p0, p1, v0

    if-gez p0, :cond_13

    const p0, 0x7f0f0408

    goto/16 :goto_0

    :cond_13
    cmp-long p0, v0, p1

    const-wide/16 v0, 0xe1

    if-gtz p0, :cond_14

    cmp-long p0, p1, v0

    if-gez p0, :cond_14

    const p0, 0x7f0f0402

    goto/16 :goto_0

    :cond_14
    cmp-long p0, v0, p1

    const-wide/16 v0, 0x11b

    if-gtz p0, :cond_15

    cmp-long p0, p1, v0

    if-gez p0, :cond_15

    const p0, 0x7f0f03fd

    goto/16 :goto_0

    :cond_15
    cmp-long p0, v0, p1

    const-wide/16 v0, 0x164

    if-gtz p0, :cond_16

    cmp-long p0, p1, v0

    if-gez p0, :cond_16

    const p0, 0x7f0f03f8

    goto/16 :goto_0

    :cond_16
    cmp-long p0, v0, p1

    const-wide/16 v0, 0x1c1

    if-gtz p0, :cond_17

    cmp-long p0, p1, v0

    if-gez p0, :cond_17

    const p0, 0x7f0f03f2

    goto/16 :goto_0

    :cond_17
    cmp-long p0, v0, p1

    const-wide/16 v0, 0x236

    if-gtz p0, :cond_18

    cmp-long p0, p1, v0

    if-gez p0, :cond_18

    const p0, 0x7f0f03ed

    goto/16 :goto_0

    :cond_18
    cmp-long p0, v0, p1

    const-wide/16 v0, 0x2c9

    if-gtz p0, :cond_19

    cmp-long p0, p1, v0

    if-gez p0, :cond_19

    const p0, 0x7f0f03e9

    goto/16 :goto_0

    :cond_19
    cmp-long p0, v0, p1

    const-wide/16 v0, 0x37b

    if-gtz p0, :cond_1a

    cmp-long p0, p1, v0

    if-gez p0, :cond_1a

    const p0, 0x7f0f03e3

    goto/16 :goto_0

    :cond_1a
    cmp-long p0, v0, p1

    const-wide/16 v0, 0x462

    if-gtz p0, :cond_1b

    cmp-long p0, p1, v0

    if-gez p0, :cond_1b

    const p0, 0x7f0f03db

    goto/16 :goto_0

    :cond_1b
    cmp-long p0, v0, p1

    if-gtz p0, :cond_1c

    const-wide/16 v0, 0x586

    cmp-long p0, p1, v0

    if-gez p0, :cond_1c

    const p0, 0x7f0f040d

    goto/16 :goto_0

    :cond_1c
    const-wide/16 v0, 0x586

    cmp-long p0, v0, p1

    if-gtz p0, :cond_1d

    const-wide/16 v0, 0x6f6

    cmp-long p0, p1, v0

    if-gez p0, :cond_1d

    const p0, 0x7f0f0409

    goto/16 :goto_0

    :cond_1d
    const-wide/16 v0, 0x6f6

    cmp-long p0, v0, p1

    if-gtz p0, :cond_1e

    const-wide/16 v0, 0x8c5

    cmp-long p0, p1, v0

    if-gez p0, :cond_1e

    const p0, 0x7f0f0403

    goto/16 :goto_0

    :cond_1e
    const-wide/16 v0, 0x8c5

    cmp-long p0, v0, p1

    if-gtz p0, :cond_1f

    const-wide/16 v0, 0xb0c

    cmp-long p0, p1, v0

    if-gez p0, :cond_1f

    const p0, 0x7f0f03fe

    goto/16 :goto_0

    :cond_1f
    const-wide/16 v0, 0xb0c

    cmp-long p0, v0, p1

    if-gtz p0, :cond_20

    const-wide/16 v0, 0xdec

    cmp-long p0, p1, v0

    if-gez p0, :cond_20

    const p0, 0x7f0f03f9

    goto/16 :goto_0

    :cond_20
    const-wide/16 v0, 0xdec

    cmp-long p0, v0, p1

    if-gtz p0, :cond_21

    const-wide/16 v0, 0x118a

    cmp-long p0, p1, v0

    if-gez p0, :cond_21

    const p0, 0x7f0f03f3

    goto/16 :goto_0

    :cond_21
    const-wide/16 v0, 0x118a

    cmp-long p0, v0, p1

    if-gtz p0, :cond_22

    const-wide/16 v0, 0x1619

    cmp-long p0, p1, v0

    if-gez p0, :cond_22

    const p0, 0x7f0f03ee

    goto/16 :goto_0

    :cond_22
    const-wide/16 v0, 0x1619

    cmp-long p0, v0, p1

    if-gtz p0, :cond_23

    const-wide/16 v0, 0x1bd7

    cmp-long p0, p1, v0

    if-gez p0, :cond_23

    const p0, 0x7f0f03ea

    goto/16 :goto_0

    :cond_23
    const-wide/16 v0, 0x1bd7

    cmp-long p0, v0, p1

    if-gtz p0, :cond_24

    const-wide/16 v0, 0x22ce

    cmp-long p0, p1, v0

    if-gez p0, :cond_24

    const p0, 0x7f0f03e4

    goto/16 :goto_0

    :cond_24
    const-wide/16 v0, 0x22ce

    cmp-long p0, v0, p1

    if-gtz p0, :cond_25

    const-wide/16 v0, 0x2bd4

    cmp-long p0, p1, v0

    if-gez p0, :cond_25

    const p0, 0x7f0f03dc

    goto/16 :goto_0

    :cond_25
    const-wide/16 v0, 0x2bd4

    cmp-long p0, v0, p1

    if-gtz p0, :cond_26

    const-wide/16 v0, 0x373c

    cmp-long p0, p1, v0

    if-gez p0, :cond_26

    const p0, 0x7f0f040e

    goto/16 :goto_0

    :cond_26
    const-wide/16 v0, 0x373c

    cmp-long p0, v0, p1

    if-gtz p0, :cond_27

    const-wide/16 v0, 0x459c

    cmp-long p0, p1, v0

    if-gez p0, :cond_27

    const p0, 0x7f0f0406

    goto/16 :goto_0

    :cond_27
    const-wide/16 v0, 0x459c

    cmp-long p0, v0, p1

    if-gtz p0, :cond_28

    const-wide/16 v0, 0x57b2

    cmp-long p0, p1, v0

    if-gez p0, :cond_28

    const p0, 0x7f0f0404

    goto/16 :goto_0

    :cond_28
    const-wide/16 v0, 0x57b2

    cmp-long p0, v0, p1

    if-gtz p0, :cond_29

    const-wide/16 v0, 0x6e78

    cmp-long p0, p1, v0

    if-gez p0, :cond_29

    const p0, 0x7f0f03ff

    goto/16 :goto_0

    :cond_29
    const-wide/16 v0, 0x6e78

    cmp-long p0, v0, p1

    if-gtz p0, :cond_2a

    const-wide/32 v0, 0x8b38

    cmp-long p0, p1, v0

    if-gez p0, :cond_2a

    const p0, 0x7f0f03f5

    goto/16 :goto_0

    :cond_2a
    const-wide/32 v0, 0x8b38

    cmp-long p0, v0, p1

    if-gtz p0, :cond_2b

    const-wide/32 v0, 0xaf64

    cmp-long p0, p1, v0

    if-gez p0, :cond_2b

    const p0, 0x7f0f03f4

    goto/16 :goto_0

    :cond_2b
    const-wide/32 v0, 0xaf64

    cmp-long p0, v0, p1

    if-gtz p0, :cond_2c

    const-wide/32 v0, 0xdcfa

    cmp-long p0, p1, v0

    if-gez p0, :cond_2c

    const p0, 0x7f0f03ef

    goto/16 :goto_0

    :cond_2c
    const-wide/32 v0, 0xdcfa

    cmp-long p0, v0, p1

    if-gtz p0, :cond_2d

    const-wide/32 v0, 0x11666

    cmp-long p0, p1, v0

    if-gez p0, :cond_2d

    const p0, 0x7f0f03e6

    goto/16 :goto_0

    :cond_2d
    const-wide/32 v0, 0x11666

    cmp-long p0, v0, p1

    if-gtz p0, :cond_2e

    const-wide/32 v0, 0x15c0c

    cmp-long p0, p1, v0

    if-gez p0, :cond_2e

    const p0, 0x7f0f03e5

    goto/16 :goto_0

    :cond_2e
    const-wide/32 v0, 0x15c0c

    cmp-long p0, v0, p1

    if-gtz p0, :cond_2f

    const-wide/32 v0, 0x1b648

    cmp-long p0, p1, v0

    if-gez p0, :cond_2f

    const p0, 0x7f0f03dd

    goto/16 :goto_0

    :cond_2f
    const-wide/32 v0, 0x1b648

    cmp-long p0, v0, p1

    if-gtz p0, :cond_30

    const-wide/32 v0, 0x22858

    cmp-long p0, p1, v0

    if-gez p0, :cond_30

    const p0, 0x7f0f040f

    goto/16 :goto_0

    :cond_30
    const-wide/32 v0, 0x22858

    cmp-long p0, v0, p1

    if-gtz p0, :cond_31

    const-wide/32 v0, 0x2b818

    cmp-long p0, p1, v0

    if-gez p0, :cond_31

    const p0, 0x7f0f040a

    goto/16 :goto_0

    :cond_31
    const-wide/32 v0, 0x2b818

    cmp-long p0, v0, p1

    if-gtz p0, :cond_32

    const-wide/32 v0, 0x36cf4

    cmp-long p0, p1, v0

    if-gez p0, :cond_32

    const p0, 0x7f0f0405

    goto/16 :goto_0

    :cond_32
    const-wide/32 v0, 0x36cf4

    cmp-long p0, v0, p1

    if-gtz p0, :cond_33

    const-wide/32 v0, 0x450b0

    cmp-long p0, p1, v0

    if-gez p0, :cond_33

    const p0, 0x7f0f0400

    goto/16 :goto_0

    :cond_33
    const-wide/32 v0, 0x450b0

    cmp-long p0, v0, p1

    if-gtz p0, :cond_34

    const-wide/32 v0, 0x57030

    cmp-long p0, p1, v0

    if-gez p0, :cond_34

    const p0, 0x7f0f03fa

    goto/16 :goto_0

    :cond_34
    const-wide/32 v0, 0x57030

    cmp-long p0, v0, p1

    if-gtz p0, :cond_35

    const-wide/32 v0, 0x6d9e8

    cmp-long p0, p1, v0

    if-gez p0, :cond_35

    const p0, 0x7f0f03c4

    goto/16 :goto_0

    :cond_35
    const-wide/32 v0, 0x6d9e8

    cmp-long p0, v0, p1

    if-gtz p0, :cond_36

    const-wide/32 v0, 0x8a1c4

    cmp-long p0, p1, v0

    if-gez p0, :cond_36

    const p0, 0x7f0f03c5

    goto/16 :goto_0

    :cond_36
    const-wide/32 v0, 0x8a1c4

    cmp-long p0, v0, p1

    if-gtz p0, :cond_37

    const-wide/32 v0, 0xadffc

    cmp-long p0, p1, v0

    if-gez p0, :cond_37

    const p0, 0x7f0f03c6

    goto/16 :goto_0

    :cond_37
    const-wide/32 v0, 0xadffc

    cmp-long p0, v0, p1

    if-gtz p0, :cond_38

    const-wide/32 v0, 0xd9878

    cmp-long p0, p1, v0

    if-gez p0, :cond_38

    const p0, 0x7f0f03c7

    goto/16 :goto_0

    :cond_38
    const-wide/32 v0, 0xd9878

    cmp-long p0, v0, p1

    if-gtz p0, :cond_39

    const-wide/32 v0, 0x111ed0

    cmp-long p0, p1, v0

    if-gez p0, :cond_39

    const p0, 0x7f0f03cd

    goto :goto_0

    :cond_39
    const-wide/32 v0, 0x111ed0

    cmp-long p0, v0, p1

    if-gtz p0, :cond_3a

    const-wide/32 v0, 0x2fa350

    cmp-long p0, p1, v0

    if-gez p0, :cond_3a

    const p0, 0x7f0f03d1

    goto :goto_0

    :cond_3a
    const-wide/32 v0, 0x2fa350

    cmp-long p0, v0, p1

    if-gtz p0, :cond_3b

    const-wide/32 v0, 0x5d6a10

    cmp-long p0, p1, v0

    if-gez p0, :cond_3b

    const p0, 0x7f0f03d4

    goto :goto_0

    :cond_3b
    const-wide/32 v0, 0x5d6a10

    cmp-long p0, v0, p1

    if-gtz p0, :cond_3c

    const-wide/32 v0, 0xafcfd0

    cmp-long p0, p1, v0

    if-gez p0, :cond_3c

    const p0, 0x7f0f03d7

    goto :goto_0

    :cond_3c
    const-wide/32 v0, 0xafcfd0

    cmp-long p0, v0, p1

    if-gtz p0, :cond_3d

    const-wide/32 v0, 0x157a890

    cmp-long p0, p1, v0

    if-gez p0, :cond_3d

    const p0, 0x7f0f03ca

    goto :goto_0

    :cond_3d
    const-wide/32 v0, 0x157a890

    cmp-long p0, v0, p1

    if-gtz p0, :cond_3e

    const-wide/32 v0, 0x2366fd0

    cmp-long p0, p1, v0

    if-gez p0, :cond_3e

    const p0, 0x7f0f03d2

    goto :goto_0

    :cond_3e
    const/4 p0, -0x1

    :goto_0
    return p0
.end method
