.class public final Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;
.super Ljava/lang/Object;
.source "JpegConstants.java"


# static fields
.field public static final COM_MARKER:I = 0xfffe

.field public static final CONST_8BIM:I

.field public static final DAC_MARKER:I = 0xffcc

.field public static final DHT_MARKER:I = 0xffc4

.field public static final DNL_MARKER:I = 0xffdc

.field public static final DQT_MARKER:I = 0xffdb

.field public static final EOI:Lorg/apache/commons/imaging/common/BinaryConstant;

.field public static final EOI_MARKER:I = 0xffd9

.field public static final EXIF_IDENTIFIER_CODE:Lorg/apache/commons/imaging/common/BinaryConstant;

.field public static final ICC_PROFILE_LABEL:Lorg/apache/commons/imaging/common/BinaryConstant;

.field public static final JFIF0_SIGNATURE:Lorg/apache/commons/imaging/common/BinaryConstant;

.field public static final JFIF0_SIGNATURE_ALTERNATIVE:Lorg/apache/commons/imaging/common/BinaryConstant;

.field public static final JFIF_MARKER:I = 0xffe0

.field public static final JPEG_APP0:I = 0xe0

.field public static final JPEG_APP0_MARKER:I = 0xffe0

.field public static final JPEG_APP13_MARKER:I = 0xffed

.field public static final JPEG_APP14_MARKER:I = 0xffee

.field public static final JPEG_APP15_MARKER:I = 0xffef

.field public static final JPEG_APP1_MARKER:I = 0xffe1

.field public static final JPEG_APP2_MARKER:I = 0xffe2

.field public static final MARKERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX_SEGMENT_SIZE:I = 0xffff

.field public static final PHOTOSHOP_IDENTIFICATION_STRING:Lorg/apache/commons/imaging/common/BinaryConstant;

.field public static final SOF0_MARKER:I = 0xffc0

.field public static final SOF10_MARKER:I = 0xffca

.field public static final SOF11_MARKER:I = 0xffcb

.field public static final SOF13_MARKER:I = 0xffcd

.field public static final SOF14_MARKER:I = 0xffce

.field public static final SOF15_MARKER:I = 0xffcf

.field public static final SOF1_MARKER:I = 0xffc1

.field public static final SOF2_MARKER:I = 0xffc2

.field public static final SOF3_MARKER:I = 0xffc3

.field public static final SOF5_MARKER:I = 0xffc5

.field public static final SOF6_MARKER:I = 0xffc6

.field public static final SOF7_MARKER:I = 0xffc7

.field public static final SOF8_MARKER:I = 0xffc8

.field public static final SOF9_MARKER:I = 0xffc9

.field public static final SOI:Lorg/apache/commons/imaging/common/BinaryConstant;

.field public static final SOS_MARKER:I = 0xffda

.field public static final XMP_IDENTIFIER:Lorg/apache/commons/imaging/common/BinaryConstant;


# direct methods
.method static constructor <clinit>()V
    .locals 33

    .line 29
    new-instance v0, Lorg/apache/commons/imaging/common/BinaryConstant;

    const/4 v1, 0x5

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Lorg/apache/commons/imaging/common/BinaryConstant;-><init>([B)V

    sput-object v0, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->JFIF0_SIGNATURE:Lorg/apache/commons/imaging/common/BinaryConstant;

    .line 36
    new-instance v0, Lorg/apache/commons/imaging/common/BinaryConstant;

    new-array v2, v1, [B

    fill-array-data v2, :array_1

    invoke-direct {v0, v2}, Lorg/apache/commons/imaging/common/BinaryConstant;-><init>([B)V

    sput-object v0, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->JFIF0_SIGNATURE_ALTERNATIVE:Lorg/apache/commons/imaging/common/BinaryConstant;

    .line 44
    new-instance v0, Lorg/apache/commons/imaging/common/BinaryConstant;

    const/4 v2, 0x4

    new-array v3, v2, [B

    fill-array-data v3, :array_2

    invoke-direct {v0, v3}, Lorg/apache/commons/imaging/common/BinaryConstant;-><init>([B)V

    sput-object v0, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->EXIF_IDENTIFIER_CODE:Lorg/apache/commons/imaging/common/BinaryConstant;

    .line 51
    new-instance v0, Lorg/apache/commons/imaging/common/BinaryConstant;

    const/16 v3, 0x1d

    new-array v4, v3, [B

    fill-array-data v4, :array_3

    invoke-direct {v0, v4}, Lorg/apache/commons/imaging/common/BinaryConstant;-><init>([B)V

    sput-object v0, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->XMP_IDENTIFIER:Lorg/apache/commons/imaging/common/BinaryConstant;

    .line 83
    new-instance v0, Lorg/apache/commons/imaging/common/BinaryConstant;

    const/4 v4, 0x2

    new-array v5, v4, [B

    fill-array-data v5, :array_4

    invoke-direct {v0, v5}, Lorg/apache/commons/imaging/common/BinaryConstant;-><init>([B)V

    sput-object v0, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->SOI:Lorg/apache/commons/imaging/common/BinaryConstant;

    .line 85
    new-instance v0, Lorg/apache/commons/imaging/common/BinaryConstant;

    new-array v5, v4, [B

    fill-array-data v5, :array_5

    invoke-direct {v0, v5}, Lorg/apache/commons/imaging/common/BinaryConstant;-><init>([B)V

    sput-object v0, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->EOI:Lorg/apache/commons/imaging/common/BinaryConstant;

    const/16 v0, 0xe0

    .line 120
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v5, 0xffe0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0xffe1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v7, 0xffe2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v8, 0xffed

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v9, 0xffee

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const v10, 0xffef

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v11, 0xffc0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const v12, 0xffc1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const v13, 0xffc2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const v14, 0xffc3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const v15, 0xffc4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const v16, 0xffc5

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const v17, 0xffc6

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const v18, 0xffc7

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const v19, 0xffc8

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const v20, 0xffc9

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const v21, 0xffca

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const v22, 0xffcb

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const v23, 0xffcc

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const v24, 0xffcd

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const v25, 0xffce

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const v26, 0xffcf

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    const v27, 0xffd9

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    const v28, 0xffda

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const v29, 0xffdb

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    const v30, 0xffdc

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    const v31, 0xfffe

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    new-array v3, v3, [Ljava/lang/Integer;

    const/16 v32, 0x0

    aput-object v0, v3, v32

    const/4 v0, 0x1

    aput-object v5, v3, v0

    aput-object v6, v3, v4

    const/4 v0, 0x3

    aput-object v7, v3, v0

    aput-object v8, v3, v2

    aput-object v9, v3, v1

    const/4 v0, 0x6

    aput-object v10, v3, v0

    const/4 v0, 0x7

    aput-object v5, v3, v0

    const/16 v0, 0x8

    aput-object v11, v3, v0

    const/16 v0, 0x9

    aput-object v12, v3, v0

    const/16 v0, 0xa

    aput-object v13, v3, v0

    const/16 v0, 0xb

    aput-object v14, v3, v0

    const/16 v0, 0xc

    aput-object v15, v3, v0

    const/16 v0, 0xd

    aput-object v16, v3, v0

    const/16 v0, 0xe

    aput-object v17, v3, v0

    const/16 v0, 0xf

    aput-object v18, v3, v0

    const/16 v0, 0x10

    aput-object v19, v3, v0

    const/16 v0, 0x11

    aput-object v20, v3, v0

    const/16 v0, 0x12

    aput-object v21, v3, v0

    const/16 v0, 0x13

    aput-object v22, v3, v0

    const/16 v0, 0x14

    aput-object v23, v3, v0

    const/16 v0, 0x15

    aput-object v24, v3, v0

    const/16 v0, 0x16

    aput-object v25, v3, v0

    const/16 v0, 0x17

    aput-object v26, v3, v0

    const/16 v0, 0x18

    aput-object v27, v3, v0

    const/16 v0, 0x19

    aput-object v28, v3, v0

    const/16 v0, 0x1a

    aput-object v29, v3, v0

    const/16 v0, 0x1b

    aput-object v30, v3, v0

    const/16 v0, 0x1c

    aput-object v31, v3, v0

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->MARKERS:Ljava/util/List;

    .line 130
    new-instance v0, Lorg/apache/commons/imaging/common/BinaryConstant;

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_6

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/common/BinaryConstant;-><init>([B)V

    sput-object v0, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->ICC_PROFILE_LABEL:Lorg/apache/commons/imaging/common/BinaryConstant;

    .line 134
    new-instance v0, Lorg/apache/commons/imaging/common/BinaryConstant;

    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_7

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/common/BinaryConstant;-><init>([B)V

    sput-object v0, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->PHOTOSHOP_IDENTIFICATION_STRING:Lorg/apache/commons/imaging/common/BinaryConstant;

    const/16 v0, 0x42

    const/16 v1, 0x4d

    const/16 v2, 0x38

    const/16 v3, 0x49

    .line 149
    invoke-static {v2, v0, v3, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->charsToQuad(CCCC)I

    move-result v0

    sput v0, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->CONST_8BIM:I

    return-void

    nop

    :array_0
    .array-data 1
        0x4at
        0x46t
        0x49t
        0x46t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x4at
        0x46t
        0x49t
        0x46t
        0x20t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x45t
        0x78t
        0x69t
        0x66t
    .end array-data

    :array_3
    .array-data 1
        0x68t
        0x74t
        0x74t
        0x70t
        0x3at
        0x2ft
        0x2ft
        0x6et
        0x73t
        0x2et
        0x61t
        0x64t
        0x6ft
        0x62t
        0x65t
        0x2et
        0x63t
        0x6ft
        0x6dt
        0x2ft
        0x78t
        0x61t
        0x70t
        0x2ft
        0x31t
        0x2et
        0x30t
        0x2ft
        0x0t
    .end array-data

    nop

    :array_4
    .array-data 1
        -0x1t
        -0x28t
    .end array-data

    nop

    :array_5
    .array-data 1
        -0x1t
        -0x27t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x49t
        0x43t
        0x43t
        0x5ft
        0x50t
        0x52t
        0x4ft
        0x46t
        0x49t
        0x4ct
        0x45t
        0x0t
    .end array-data

    :array_7
    .array-data 1
        0x50t
        0x68t
        0x6ft
        0x74t
        0x6ft
        0x73t
        0x68t
        0x6ft
        0x70t
        0x20t
        0x33t
        0x2et
        0x30t
        0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
