.class final enum Lorg/apache/commons/imaging/formats/icns/IcnsType;
.super Ljava/lang/Enum;
.source "IcnsType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/imaging/formats/icns/IcnsType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field private static final ALL_IMAGE_TYPES:[Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field private static final ALL_MASK_TYPES:[Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_128x128_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_128x128_8BIT_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_16x12_1BIT_IMAGE_AND_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_16x12_4BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_16x12_8BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_16x16_1BIT_IMAGE_AND_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_16x16_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_16x16_4BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_16x16_8BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_16x16_8BIT_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_256x256_32BIT_ARGB_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_32x32_1BIT_IMAGE_AND_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_32x32_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_32x32_4BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_32x32_8BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_32x32_8BIT_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_48x48_1BIT_IMAGE_AND_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_48x48_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_48x48_4BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_48x48_8BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_48x48_8BIT_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

.field public static final enum ICNS_512x512_32BIT_ARGB_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;


# instance fields
.field private final bitsPerPixel:I

.field private final hasMask:Z

.field private final height:I

.field private final type:I

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 23
    new-instance v8, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v1, "ICNS_16x12_1BIT_IMAGE_AND_MASK"

    const-string v3, "icm#"

    const/4 v2, 0x0

    const/16 v4, 0x10

    const/16 v5, 0xc

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v8, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x12_1BIT_IMAGE_AND_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 24
    new-instance v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v10, "ICNS_16x12_4BIT_IMAGE"

    const-string v12, "icm4"

    const/4 v11, 0x1

    const/16 v13, 0x10

    const/16 v14, 0xc

    const/4 v15, 0x4

    const/16 v16, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x12_4BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 25
    new-instance v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v2, "ICNS_16x12_8BIT_IMAGE"

    const-string v4, "icm8"

    const/4 v3, 0x2

    const/16 v5, 0x10

    const/16 v6, 0xc

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x12_8BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 27
    new-instance v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v10, "ICNS_16x16_8BIT_MASK"

    const-string v12, "s8mk"

    const/4 v11, 0x3

    const/16 v14, 0x10

    const/16 v15, 0x8

    const/16 v16, 0x1

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x16_8BIT_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 28
    new-instance v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v2, "ICNS_16x16_1BIT_IMAGE_AND_MASK"

    const-string v4, "ics#"

    const/4 v3, 0x4

    const/16 v6, 0x10

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x16_1BIT_IMAGE_AND_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 29
    new-instance v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v10, "ICNS_16x16_4BIT_IMAGE"

    const-string v12, "ics4"

    const/4 v11, 0x5

    const/4 v15, 0x4

    const/16 v16, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x16_4BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 30
    new-instance v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v2, "ICNS_16x16_8BIT_IMAGE"

    const-string v4, "ics8"

    const/4 v3, 0x6

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x16_8BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 31
    new-instance v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v10, "ICNS_16x16_32BIT_IMAGE"

    const-string v12, "is32"

    const/4 v11, 0x7

    const/16 v15, 0x20

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x16_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 33
    new-instance v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v2, "ICNS_32x32_8BIT_MASK"

    const-string v4, "l8mk"

    const/16 v3, 0x8

    const/16 v5, 0x20

    const/16 v6, 0x20

    const/4 v8, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_32x32_8BIT_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 34
    new-instance v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v10, "ICNS_32x32_1BIT_IMAGE_AND_MASK"

    const-string v12, "ICN#"

    const/16 v11, 0x9

    const/16 v13, 0x20

    const/16 v14, 0x20

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_32x32_1BIT_IMAGE_AND_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 35
    new-instance v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v2, "ICNS_32x32_4BIT_IMAGE"

    const-string v4, "icl4"

    const/16 v3, 0xa

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_32x32_4BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 36
    new-instance v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v10, "ICNS_32x32_8BIT_IMAGE"

    const-string v12, "icl8"

    const/16 v11, 0xb

    const/16 v15, 0x8

    const/16 v16, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_32x32_8BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 37
    new-instance v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v2, "ICNS_32x32_32BIT_IMAGE"

    const-string v4, "il32"

    const/16 v3, 0xc

    const/16 v7, 0x20

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_32x32_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 39
    new-instance v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v10, "ICNS_48x48_8BIT_MASK"

    const-string v12, "h8mk"

    const/16 v11, 0xd

    const/16 v13, 0x30

    const/16 v14, 0x30

    const/16 v16, 0x1

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_48x48_8BIT_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 40
    new-instance v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v2, "ICNS_48x48_1BIT_IMAGE_AND_MASK"

    const-string v4, "ich#"

    const/16 v3, 0xe

    const/16 v5, 0x30

    const/16 v6, 0x30

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_48x48_1BIT_IMAGE_AND_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 41
    new-instance v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v10, "ICNS_48x48_4BIT_IMAGE"

    const-string v12, "ich4"

    const/16 v11, 0xf

    const/4 v15, 0x4

    const/16 v16, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_48x48_4BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 42
    new-instance v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v2, "ICNS_48x48_8BIT_IMAGE"

    const-string v4, "ich8"

    const/16 v3, 0x10

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_48x48_8BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 43
    new-instance v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v10, "ICNS_48x48_32BIT_IMAGE"

    const-string v12, "ih32"

    const/16 v11, 0x11

    const/16 v15, 0x20

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_48x48_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 45
    new-instance v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v2, "ICNS_128x128_8BIT_MASK"

    const-string v4, "t8mk"

    const/16 v3, 0x12

    const/16 v5, 0x80

    const/16 v6, 0x80

    const/4 v8, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_128x128_8BIT_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 46
    new-instance v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v10, "ICNS_128x128_32BIT_IMAGE"

    const-string v12, "it32"

    const/16 v11, 0x13

    const/16 v13, 0x80

    const/16 v14, 0x80

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_128x128_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 48
    new-instance v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v2, "ICNS_256x256_32BIT_ARGB_IMAGE"

    const-string v4, "ic08"

    const/16 v3, 0x14

    const/16 v5, 0x100

    const/16 v6, 0x100

    const/16 v7, 0x20

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_256x256_32BIT_ARGB_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 50
    new-instance v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const-string v10, "ICNS_512x512_32BIT_ARGB_IMAGE"

    const-string v12, "ic09"

    const/16 v11, 0x15

    const/16 v13, 0x200

    const/16 v14, 0x200

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_512x512_32BIT_ARGB_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const/16 v0, 0x16

    .line 21
    new-array v0, v0, [Lorg/apache/commons/imaging/formats/icns/IcnsType;

    sget-object v1, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x12_1BIT_IMAGE_AND_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x12_4BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x12_8BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x16_8BIT_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x16_1BIT_IMAGE_AND_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x16_4BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const/4 v7, 0x5

    aput-object v1, v0, v7

    sget-object v1, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x16_8BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const/4 v8, 0x6

    aput-object v1, v0, v8

    sget-object v1, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x16_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const/4 v9, 0x7

    aput-object v1, v0, v9

    sget-object v1, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_32x32_8BIT_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const/16 v10, 0x8

    aput-object v1, v0, v10

    sget-object v1, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_32x32_1BIT_IMAGE_AND_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const/16 v11, 0x9

    aput-object v1, v0, v11

    sget-object v1, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_32x32_4BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const/16 v12, 0xa

    aput-object v1, v0, v12

    sget-object v1, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_32x32_8BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const/16 v13, 0xb

    aput-object v1, v0, v13

    sget-object v1, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_32x32_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const/16 v14, 0xc

    aput-object v1, v0, v14

    sget-object v1, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_48x48_8BIT_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const/16 v15, 0xd

    aput-object v1, v0, v15

    sget-object v1, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_48x48_1BIT_IMAGE_AND_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const/16 v16, 0xe

    aput-object v1, v0, v16

    sget-object v1, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_48x48_4BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const/16 v17, 0xf

    aput-object v1, v0, v17

    sget-object v1, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_48x48_8BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const/16 v17, 0x10

    aput-object v1, v0, v17

    sget-object v1, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_48x48_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const/16 v17, 0x11

    aput-object v1, v0, v17

    sget-object v1, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_128x128_8BIT_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const/16 v17, 0x12

    aput-object v1, v0, v17

    sget-object v1, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_128x128_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const/16 v17, 0x13

    aput-object v1, v0, v17

    sget-object v1, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_256x256_32BIT_ARGB_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const/16 v17, 0x14

    aput-object v1, v0, v17

    sget-object v1, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_512x512_32BIT_ARGB_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const/16 v17, 0x15

    aput-object v1, v0, v17

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->$VALUES:[Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const/16 v0, 0x12

    .line 52
    new-array v0, v0, [Lorg/apache/commons/imaging/formats/icns/IcnsType;

    sget-object v1, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x12_1BIT_IMAGE_AND_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x12_4BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x12_8BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x16_1BIT_IMAGE_AND_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x16_4BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x16_8BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v1, v0, v7

    sget-object v1, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x16_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v1, v0, v8

    sget-object v1, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_32x32_1BIT_IMAGE_AND_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v1, v0, v9

    sget-object v1, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_32x32_4BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v1, v0, v10

    sget-object v1, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_32x32_8BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v1, v0, v11

    sget-object v1, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_32x32_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v1, v0, v12

    sget-object v1, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_48x48_1BIT_IMAGE_AND_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v1, v0, v13

    sget-object v1, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_48x48_4BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v1, v0, v14

    sget-object v1, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_48x48_8BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v1, v0, v15

    sget-object v1, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_48x48_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v1, v0, v16

    sget-object v1, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_128x128_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const/16 v11, 0xf

    aput-object v1, v0, v11

    sget-object v1, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_256x256_32BIT_ARGB_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const/16 v11, 0x10

    aput-object v1, v0, v11

    sget-object v1, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_512x512_32BIT_ARGB_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    const/16 v11, 0x11

    aput-object v1, v0, v11

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ALL_IMAGE_TYPES:[Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 72
    new-array v0, v10, [Lorg/apache/commons/imaging/formats/icns/IcnsType;

    sget-object v1, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x12_1BIT_IMAGE_AND_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x16_1BIT_IMAGE_AND_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x16_8BIT_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_32x32_1BIT_IMAGE_AND_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_32x32_8BIT_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_48x48_1BIT_IMAGE_AND_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v1, v0, v7

    sget-object v1, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_48x48_8BIT_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v1, v0, v8

    sget-object v1, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_128x128_8BIT_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    aput-object v1, v0, v9

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ALL_MASK_TYPES:[Lorg/apache/commons/imaging/formats/icns/IcnsType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIZ)V"
        }
    .end annotation

    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 89
    invoke-static {p3}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->typeAsInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->type:I

    .line 90
    iput p4, p0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->width:I

    .line 91
    iput p5, p0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->height:I

    .line 92
    iput p6, p0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->bitsPerPixel:I

    .line 93
    iput-boolean p7, p0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->hasMask:Z

    return-void
.end method

.method public static describeType(I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x4

    .line 185
    new-array v0, v0, [B

    shr-int/lit8 v1, p0, 0x18

    const/16 v2, 0xff

    and-int/2addr v1, v2

    int-to-byte v1, v1

    const/4 v3, 0x0

    aput-byte v1, v0, v3

    shr-int/lit8 v1, p0, 0x10

    and-int/2addr v1, v2

    int-to-byte v1, v1

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    shr-int/lit8 v1, p0, 0x8

    and-int/2addr v1, v2

    int-to-byte v1, v1

    const/4 v3, 0x2

    aput-byte v1, v0, v3

    and-int/2addr p0, v2

    int-to-byte p0, p0

    const/4 v1, 0x3

    aput-byte p0, v0, v1

    .line 191
    :try_start_0
    new-instance p0, Ljava/lang/String;

    const-string v1, "US-ASCII"

    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Your Java doesn\'t support US-ASCII"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static find1BPPMaskType(Lorg/apache/commons/imaging/formats/icns/IcnsType;)Lorg/apache/commons/imaging/formats/icns/IcnsType;
    .locals 6

    .line 158
    sget-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ALL_MASK_TYPES:[Lorg/apache/commons/imaging/formats/icns/IcnsType;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 159
    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getBitsPerPixel()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getHeight()I

    move-result v5

    if-ne v4, v5, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static find8BPPMaskType(Lorg/apache/commons/imaging/formats/icns/IcnsType;)Lorg/apache/commons/imaging/formats/icns/IcnsType;
    .locals 6

    .line 147
    sget-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ALL_MASK_TYPES:[Lorg/apache/commons/imaging/formats/icns/IcnsType;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 148
    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getBitsPerPixel()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getHeight()I

    move-result v5

    if-ne v4, v5, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static findAnyType(I)Lorg/apache/commons/imaging/formats/icns/IcnsType;
    .locals 6

    .line 124
    sget-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ALL_IMAGE_TYPES:[Lorg/apache/commons/imaging/formats/icns/IcnsType;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 125
    invoke-virtual {v4}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getType()I

    move-result v5

    if-ne v5, p0, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 129
    :cond_1
    sget-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ALL_MASK_TYPES:[Lorg/apache/commons/imaging/formats/icns/IcnsType;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 130
    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getType()I

    move-result v4

    if-ne v4, p0, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static findImageType(I)Lorg/apache/commons/imaging/formats/icns/IcnsType;
    .locals 5

    .line 138
    sget-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ALL_IMAGE_TYPES:[Lorg/apache/commons/imaging/formats/icns/IcnsType;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 139
    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getType()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static typeAsInt(Ljava/lang/String;)I
    .locals 3

    :try_start_0
    const-string v0, "US-ASCII"

    .line 171
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    array-length v0, p0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 176
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid ICNS type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    const/4 v0, 0x0

    .line 178
    aget-byte v0, p0, v0

    const/16 v1, 0xff

    and-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x18

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    and-int/2addr v2, v1

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    and-int/2addr v2, v1

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    const/4 v2, 0x3

    aget-byte p0, p0, v2

    and-int/2addr p0, v1

    or-int/2addr p0, v0

    return p0

    :catch_0
    move-exception p0

    .line 173
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Your Java doesn\'t support US-ASCII"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/imaging/formats/icns/IcnsType;
    .locals 1

    .line 21
    const-class v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/imaging/formats/icns/IcnsType;
    .locals 1

    .line 21
    sget-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->$VALUES:[Lorg/apache/commons/imaging/formats/icns/IcnsType;

    invoke-virtual {v0}, [Lorg/apache/commons/imaging/formats/icns/IcnsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/imaging/formats/icns/IcnsType;

    return-object v0
.end method


# virtual methods
.method public getBitsPerPixel()I
    .locals 0

    .line 109
    iget p0, p0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->bitsPerPixel:I

    return p0
.end method

.method public getHeight()I
    .locals 0

    .line 105
    iget p0, p0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->height:I

    return p0
.end method

.method public getType()I
    .locals 0

    .line 97
    iget p0, p0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->type:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    .line 101
    iget p0, p0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->width:I

    return p0
.end method

.method public hasMask()Z
    .locals 0

    .line 113
    iget-boolean p0, p0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->hasMask:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "bpp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->bitsPerPixel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "hasMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->hasMask:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
