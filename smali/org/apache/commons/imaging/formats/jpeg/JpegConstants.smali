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
    .locals 7

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

    .line 120
    new-array v0, v3, [Ljava/lang/Integer;

    const/16 v3, 0xe0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v0, v5

    const v3, 0xffe0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v0, v6

    const v5, 0xffe1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    const v4, 0xffe2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v0, v5

    const v4, 0xffed

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v2

    const v2, 0xffee

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const v1, 0xffef

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const v1, 0xffc0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const v1, 0xffc1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const v1, 0xffc2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const v1, 0xffc3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const v1, 0xffc4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const v1, 0xffc5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0xd

    aput-object v1, v0, v3

    const v1, 0xffc6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0xe

    aput-object v1, v0, v3

    const v1, 0xffc7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v4, 0xf

    aput-object v1, v0, v4

    const v1, 0xffc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v4, 0x10

    aput-object v1, v0, v4

    const v1, 0xffc9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v4, 0x11

    aput-object v1, v0, v4

    const v1, 0xffca

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v4, 0x12

    aput-object v1, v0, v4

    const v1, 0xffcb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v4, 0x13

    aput-object v1, v0, v4

    const v1, 0xffcc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v4, 0x14

    aput-object v1, v0, v4

    const v1, 0xffcd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v4, 0x15

    aput-object v1, v0, v4

    const v1, 0xffce

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v4, 0x16

    aput-object v1, v0, v4

    const v1, 0xffcf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v4, 0x17

    aput-object v1, v0, v4

    const v1, 0xffd9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v4, 0x18

    aput-object v1, v0, v4

    const v1, 0xffda

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v4, 0x19

    aput-object v1, v0, v4

    const v1, 0xffdb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v4, 0x1a

    aput-object v1, v0, v4

    const v1, 0xffdc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v4, 0x1b

    aput-object v1, v0, v4

    const v1, 0xfffe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v4, 0x1c

    aput-object v1, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->MARKERS:Ljava/util/List;

    .line 130
    new-instance v0, Lorg/apache/commons/imaging/common/BinaryConstant;

    new-array v1, v2, [B

    fill-array-data v1, :array_6

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/common/BinaryConstant;-><init>([B)V

    sput-object v0, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->ICC_PROFILE_LABEL:Lorg/apache/commons/imaging/common/BinaryConstant;

    .line 134
    new-instance v0, Lorg/apache/commons/imaging/common/BinaryConstant;

    new-array v1, v3, [B

    fill-array-data v1, :array_7

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/common/BinaryConstant;-><init>([B)V

    sput-object v0, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->PHOTOSHOP_IDENTIFICATION_STRING:Lorg/apache/commons/imaging/common/BinaryConstant;

    const/16 v0, 0x38

    const/16 v1, 0x42

    const/16 v2, 0x49

    const/16 v3, 0x4d

    .line 149
    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->charsToQuad(CCCC)I

    move-result v0

    sput v0, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->CONST_8BIM:I

    return-void

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
