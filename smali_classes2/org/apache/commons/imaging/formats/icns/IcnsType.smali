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
    .locals 65

    .line 23
    new-instance v48, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    move-object/from16 v30, v48

    move-object/from16 v8, v48

    const/4 v6, 0x1

    const/4 v7, 0x1

    const-string v1, "ICNS_16x12_1BIT_IMAGE_AND_MASK"

    const/4 v2, 0x0

    const-string v3, "icm#"

    const/16 v4, 0x10

    const/16 v5, 0xc

    move-object/from16 v0, v48

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v48, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x12_1BIT_IMAGE_AND_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 24
    new-instance v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    move-object/from16 v31, v0

    move-object v9, v0

    const/16 v16, 0x4

    const/16 v17, 0x0

    const-string v11, "ICNS_16x12_4BIT_IMAGE"

    const/4 v12, 0x1

    const-string v13, "icm4"

    const/16 v14, 0x10

    const/16 v15, 0xc

    move-object v10, v0

    invoke-direct/range {v10 .. v17}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x12_4BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 25
    new-instance v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    move-object/from16 v32, v0

    move-object v10, v0

    const/16 v24, 0x8

    const/16 v25, 0x0

    const-string v19, "ICNS_16x12_8BIT_IMAGE"

    const/16 v20, 0x2

    const-string v21, "icm8"

    const/16 v22, 0x10

    const/16 v23, 0xc

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v25}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x12_8BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 27
    new-instance v2, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    move-object v11, v2

    const/16 v39, 0x8

    const/16 v40, 0x1

    const-string v34, "ICNS_16x16_8BIT_MASK"

    const/16 v35, 0x3

    const-string v36, "s8mk"

    const/16 v37, 0x10

    const/16 v38, 0x10

    move-object/from16 v33, v2

    invoke-direct/range {v33 .. v40}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v2, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x16_8BIT_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 28
    new-instance v1, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    move-object/from16 v33, v1

    move-object v12, v1

    const/16 v19, 0x1

    const/16 v20, 0x1

    const-string v14, "ICNS_16x16_1BIT_IMAGE_AND_MASK"

    const/4 v15, 0x4

    const-string v16, "ics#"

    const/16 v17, 0x10

    const/16 v18, 0x10

    move-object v13, v1

    invoke-direct/range {v13 .. v20}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v1, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x16_1BIT_IMAGE_AND_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 29
    new-instance v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    move-object/from16 v34, v0

    move-object v13, v0

    const/16 v27, 0x4

    const/16 v28, 0x0

    const-string v22, "ICNS_16x16_4BIT_IMAGE"

    const/16 v23, 0x5

    const-string v24, "ics4"

    const/16 v25, 0x10

    const/16 v26, 0x10

    move-object/from16 v21, v0

    invoke-direct/range {v21 .. v28}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x16_4BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 30
    new-instance v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    move-object/from16 v35, v0

    move-object v14, v0

    const/16 v42, 0x8

    const/16 v43, 0x0

    const-string v37, "ICNS_16x16_8BIT_IMAGE"

    const/16 v38, 0x6

    const-string v39, "ics8"

    const/16 v40, 0x10

    const/16 v41, 0x10

    move-object/from16 v36, v0

    invoke-direct/range {v36 .. v43}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x16_8BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 31
    new-instance v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    move-object/from16 v36, v0

    move-object v15, v0

    const/16 v22, 0x20

    const/16 v23, 0x0

    const-string v17, "ICNS_16x16_32BIT_IMAGE"

    const/16 v18, 0x7

    const-string v19, "is32"

    const/16 v20, 0x10

    const/16 v21, 0x10

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v23}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x16_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 33
    new-instance v4, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    move-object/from16 v16, v4

    const/16 v43, 0x8

    const/16 v44, 0x1

    const-string v38, "ICNS_32x32_8BIT_MASK"

    const/16 v39, 0x8

    const-string v40, "l8mk"

    const/16 v41, 0x20

    const/16 v42, 0x20

    move-object/from16 v37, v4

    invoke-direct/range {v37 .. v44}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v4, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_32x32_8BIT_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 34
    new-instance v3, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    move-object/from16 v37, v3

    move-object/from16 v17, v3

    const/16 v24, 0x1

    const/16 v25, 0x1

    const-string v19, "ICNS_32x32_1BIT_IMAGE_AND_MASK"

    const/16 v20, 0x9

    const-string v21, "ICN#"

    const/16 v23, 0x20

    move-object/from16 v18, v3

    invoke-direct/range {v18 .. v25}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v3, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_32x32_1BIT_IMAGE_AND_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 35
    new-instance v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    move-object/from16 v38, v0

    move-object/from16 v18, v0

    const/16 v45, 0x4

    const/16 v46, 0x0

    const-string v40, "ICNS_32x32_4BIT_IMAGE"

    const/16 v41, 0xa

    const-string v42, "icl4"

    const/16 v43, 0x20

    const/16 v44, 0x20

    move-object/from16 v39, v0

    invoke-direct/range {v39 .. v46}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_32x32_4BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 36
    new-instance v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    move-object/from16 v39, v0

    move-object/from16 v19, v0

    const/16 v26, 0x8

    const/16 v27, 0x0

    const-string v21, "ICNS_32x32_8BIT_IMAGE"

    const/16 v22, 0xb

    const-string v23, "icl8"

    const/16 v24, 0x20

    const/16 v25, 0x20

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v27}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_32x32_8BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 37
    new-instance v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    move-object/from16 v40, v0

    move-object/from16 v20, v0

    const/16 v55, 0x20

    const/16 v56, 0x0

    const-string v50, "ICNS_32x32_32BIT_IMAGE"

    const/16 v51, 0xc

    const-string v52, "il32"

    const/16 v53, 0x20

    const/16 v54, 0x20

    move-object/from16 v49, v0

    invoke-direct/range {v49 .. v56}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_32x32_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 39
    new-instance v6, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    move-object/from16 v21, v6

    const/16 v28, 0x8

    const/16 v29, 0x1

    const-string v23, "ICNS_48x48_8BIT_MASK"

    const/16 v24, 0xd

    const-string v25, "h8mk"

    const/16 v26, 0x30

    const/16 v27, 0x30

    move-object/from16 v22, v6

    invoke-direct/range {v22 .. v29}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v6, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_48x48_8BIT_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 40
    new-instance v5, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    move-object/from16 v41, v5

    move-object/from16 v22, v5

    const/16 v55, 0x1

    const/16 v56, 0x1

    const-string v50, "ICNS_48x48_1BIT_IMAGE_AND_MASK"

    const/16 v51, 0xe

    const-string v52, "ich#"

    const/16 v53, 0x30

    const/16 v54, 0x30

    move-object/from16 v49, v5

    invoke-direct/range {v49 .. v56}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v5, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_48x48_1BIT_IMAGE_AND_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 41
    new-instance v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    move-object/from16 v42, v0

    move-object/from16 v23, v0

    const/16 v63, 0x4

    const/16 v64, 0x0

    const-string v58, "ICNS_48x48_4BIT_IMAGE"

    const/16 v59, 0xf

    const-string v60, "ich4"

    const/16 v61, 0x30

    const/16 v62, 0x30

    move-object/from16 v57, v0

    invoke-direct/range {v57 .. v64}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_48x48_4BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 42
    new-instance v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    move-object/from16 v43, v0

    move-object/from16 v24, v0

    const/16 v55, 0x8

    const/16 v56, 0x0

    const-string v50, "ICNS_48x48_8BIT_IMAGE"

    const/16 v51, 0x10

    const-string v52, "ich8"

    move-object/from16 v49, v0

    invoke-direct/range {v49 .. v56}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_48x48_8BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 43
    new-instance v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    move-object/from16 v44, v0

    move-object/from16 v25, v0

    const/16 v63, 0x20

    const-string v58, "ICNS_48x48_32BIT_IMAGE"

    const/16 v59, 0x11

    const-string v60, "ih32"

    move-object/from16 v57, v0

    invoke-direct/range {v57 .. v64}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_48x48_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 45
    new-instance v7, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    move-object/from16 v26, v7

    const/16 v56, 0x1

    const-string v50, "ICNS_128x128_8BIT_MASK"

    const/16 v51, 0x12

    const-string v52, "t8mk"

    const/16 v53, 0x80

    const/16 v54, 0x80

    move-object/from16 v49, v7

    invoke-direct/range {v49 .. v56}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v7, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_128x128_8BIT_MASK:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 46
    new-instance v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    move-object/from16 v45, v0

    move-object/from16 v27, v0

    const-string v58, "ICNS_128x128_32BIT_IMAGE"

    const/16 v59, 0x13

    const-string v60, "it32"

    const/16 v61, 0x80

    const/16 v62, 0x80

    move-object/from16 v57, v0

    invoke-direct/range {v57 .. v64}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_128x128_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 48
    new-instance v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    move-object/from16 v46, v0

    move-object/from16 v28, v0

    const/16 v55, 0x20

    const/16 v56, 0x0

    const-string v50, "ICNS_256x256_32BIT_ARGB_IMAGE"

    const/16 v51, 0x14

    const-string v52, "ic08"

    const/16 v53, 0x100

    const/16 v54, 0x100

    move-object/from16 v49, v0

    invoke-direct/range {v49 .. v56}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_256x256_32BIT_ARGB_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 50
    new-instance v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;

    move-object/from16 v47, v0

    move-object/from16 v29, v0

    const-string v58, "ICNS_512x512_32BIT_ARGB_IMAGE"

    const/16 v59, 0x15

    const-string v60, "ic09"

    const/16 v61, 0x200

    const/16 v62, 0x200

    move-object/from16 v57, v0

    invoke-direct/range {v57 .. v64}, Lorg/apache/commons/imaging/formats/icns/IcnsType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_512x512_32BIT_ARGB_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 21
    filled-new-array/range {v8 .. v29}, [Lorg/apache/commons/imaging/formats/icns/IcnsType;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->$VALUES:[Lorg/apache/commons/imaging/formats/icns/IcnsType;

    .line 52
    filled-new-array/range {v30 .. v47}, [Lorg/apache/commons/imaging/formats/icns/IcnsType;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ALL_IMAGE_TYPES:[Lorg/apache/commons/imaging/formats/icns/IcnsType;

    move-object/from16 v0, v48

    .line 72
    filled-new-array/range {v0 .. v7}, [Lorg/apache/commons/imaging/formats/icns/IcnsType;

    move-result-object v0

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
    .locals 5

    shr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v3, 0x4

    .line 189
    new-array v3, v3, [B

    const/4 v4, 0x0

    aput-byte v0, v3, v4

    const/4 v0, 0x1

    aput-byte v1, v3, v0

    const/4 v0, 0x2

    aput-byte v2, v3, v0

    const/4 v0, 0x3

    aput-byte p0, v3, v0

    .line 191
    :try_start_0
    new-instance p0, Ljava/lang/String;

    const-string v0, "US-ASCII"

    invoke-direct {p0, v3, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
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
    .locals 2

    .line 171
    :try_start_0
    const-string v0, "US-ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 178
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0

    .line 176
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid ICNS type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

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

    move-result-object v0

    const-string v1, "[width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",bpp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->bitsPerPixel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",hasMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean p0, p0, Lorg/apache/commons/imaging/formats/icns/IcnsType;->hasMask:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
