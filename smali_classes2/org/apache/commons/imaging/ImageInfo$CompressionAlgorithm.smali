.class public final enum Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;
.super Ljava/lang/Enum;
.source "ImageInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/ImageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CompressionAlgorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

.field public static final enum ADAPTIVE_RLE:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

.field public static final enum CCITT_1D:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

.field public static final enum CCITT_GROUP_3:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

.field public static final enum CCITT_GROUP_4:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

.field public static final enum JPEG:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

.field public static final enum LZW:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

.field public static final enum NONE:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

.field public static final enum PACKBITS:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

.field public static final enum PNG_FILTER:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

.field public static final enum PSD:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

.field public static final enum RLE:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

.field public static final enum UNKNOWN:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;


# instance fields
.field private description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 54
    new-instance v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    const/4 v1, 0x0

    const-string v2, "Unknown"

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->UNKNOWN:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    .line 55
    new-instance v1, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    const/4 v2, 0x1

    const-string v3, "None"

    const-string v4, "NONE"

    invoke-direct {v1, v4, v2, v3}, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->NONE:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    .line 56
    new-instance v2, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    const-string v3, "LZW"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v3}, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->LZW:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    .line 57
    new-instance v3, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    const/4 v4, 0x3

    const-string v5, "PackBits"

    const-string v6, "PACKBITS"

    invoke-direct {v3, v6, v4, v5}, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->PACKBITS:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    .line 58
    new-instance v4, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    const-string v5, "JPEG"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v5}, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->JPEG:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    .line 59
    new-instance v5, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    const/4 v6, 0x5

    const-string v7, "RLE: Run-Length Encoding"

    const-string v8, "RLE"

    invoke-direct {v5, v8, v6, v7}, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->RLE:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    .line 60
    new-instance v6, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    const/4 v7, 0x6

    const-string v8, "Adaptive RLE"

    const-string v9, "ADAPTIVE_RLE"

    invoke-direct {v6, v9, v7, v8}, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->ADAPTIVE_RLE:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    .line 61
    new-instance v7, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    const/4 v8, 0x7

    const-string v9, "Photoshop"

    const-string v10, "PSD"

    invoke-direct {v7, v10, v8, v9}, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->PSD:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    .line 62
    new-instance v8, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    const/16 v9, 0x8

    const-string v10, "PNG Filter"

    const-string v11, "PNG_FILTER"

    invoke-direct {v8, v11, v9, v10}, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->PNG_FILTER:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    .line 63
    new-instance v9, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    const/16 v10, 0x9

    const-string v11, "CCITT Group 3 1-Dimensional Modified Huffman run-length encoding."

    const-string v12, "CCITT_GROUP_3"

    invoke-direct {v9, v12, v10, v11}, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->CCITT_GROUP_3:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    .line 64
    new-instance v10, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    const/16 v11, 0xa

    const-string v12, "CCITT Group 4"

    const-string v13, "CCITT_GROUP_4"

    invoke-direct {v10, v13, v11, v12}, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->CCITT_GROUP_4:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    .line 65
    new-instance v11, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    const/16 v12, 0xb

    const-string v13, "CCITT 1D"

    const-string v14, "CCITT_1D"

    invoke-direct {v11, v14, v12, v13}, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->CCITT_1D:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    .line 53
    filled-new-array/range {v0 .. v11}, [Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->$VALUES:[Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 70
    iput-object p3, p0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->description:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;
    .locals 1

    .line 53
    const-class v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;
    .locals 1

    .line 53
    sget-object v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->$VALUES:[Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    invoke-virtual {v0}, [Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->description:Ljava/lang/String;

    return-object p0
.end method
