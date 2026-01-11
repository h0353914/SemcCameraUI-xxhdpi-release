.class public final Lorg/apache/commons/imaging/formats/png/PngConstants;
.super Ljava/lang/Object;
.source "PngConstants.java"


# static fields
.field public static final COMPRESSION_DEFLATE_INFLATE:I = 0x0

.field public static final COMPRESSION_TYPE_INFLATE_DEFLATE:B = 0x0t

.field public static final FILTER_METHOD_ADAPTIVE:B = 0x0t

.field public static final PARAM_KEY_PNG_BIT_DEPTH:Ljava/lang/String; = "PNG_BIT_DEPTH"

.field public static final PARAM_KEY_PNG_FORCE_INDEXED_COLOR:Ljava/lang/String; = "PNG_FORCE_INDEXED_COLOR"

.field public static final PARAM_KEY_PNG_FORCE_TRUE_COLOR:Ljava/lang/String; = "PNG_FORCE_TRUE_COLOR"

.field public static final PARAM_KEY_PNG_TEXT_CHUNKS:Ljava/lang/String; = "PNG_TEXT_CHUNKS"

.field public static final PNG_SIGNATURE:Lorg/apache/commons/imaging/common/BinaryConstant;

.field public static final XMP_KEYWORD:Ljava/lang/String; = "XML:com.adobe.xmp"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lorg/apache/commons/imaging/common/BinaryConstant;

    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/common/BinaryConstant;-><init>([B)V

    sput-object v0, Lorg/apache/commons/imaging/formats/png/PngConstants;->PNG_SIGNATURE:Lorg/apache/commons/imaging/common/BinaryConstant;

    return-void

    nop

    :array_0
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
