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

    const-string v1, "UNKNOWN"

    const-string v2, "Unknown"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->UNKNOWN:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    .line 55
    new-instance v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    const-string v1, "NONE"

    const-string v2, "None"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->NONE:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    .line 56
    new-instance v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    const-string v1, "LZW"

    const-string v2, "LZW"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->LZW:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    .line 57
    new-instance v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    const-string v1, "PACKBITS"

    const-string v2, "PackBits"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->PACKBITS:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    .line 58
    new-instance v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    const-string v1, "JPEG"

    const-string v2, "JPEG"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->JPEG:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    .line 59
    new-instance v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    const-string v1, "RLE"

    const-string v2, "RLE: Run-Length Encoding"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->RLE:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    .line 60
    new-instance v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    const-string v1, "ADAPTIVE_RLE"

    const-string v2, "Adaptive RLE"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->ADAPTIVE_RLE:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    .line 61
    new-instance v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    const-string v1, "PSD"

    const-string v2, "Photoshop"

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2}, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->PSD:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    .line 62
    new-instance v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    const-string v1, "PNG_FILTER"

    const-string v2, "PNG Filter"

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v2}, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->PNG_FILTER:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    .line 63
    new-instance v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    const-string v1, "CCITT_GROUP_3"

    const-string v2, "CCITT Group 3 1-Dimensional Modified Huffman run-length encoding."

    const/16 v12, 0x9

    invoke-direct {v0, v1, v12, v2}, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->CCITT_GROUP_3:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    .line 64
    new-instance v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    const-string v1, "CCITT_GROUP_4"

    const-string v2, "CCITT Group 4"

    const/16 v13, 0xa

    invoke-direct {v0, v1, v13, v2}, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->CCITT_GROUP_4:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    .line 65
    new-instance v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    const-string v1, "CCITT_1D"

    const-string v2, "CCITT 1D"

    const/16 v14, 0xb

    invoke-direct {v0, v1, v14, v2}, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->CCITT_1D:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    const/16 v0, 0xc

    .line 53
    new-array v0, v0, [Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    sget-object v1, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->UNKNOWN:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->NONE:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->LZW:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->PACKBITS:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->JPEG:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    aput-object v1, v0, v7

    sget-object v1, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->RLE:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    aput-object v1, v0, v8

    sget-object v1, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->ADAPTIVE_RLE:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    aput-object v1, v0, v9

    sget-object v1, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->PSD:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    aput-object v1, v0, v10

    sget-object v1, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->PNG_FILTER:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    aput-object v1, v0, v11

    sget-object v1, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->CCITT_GROUP_3:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    aput-object v1, v0, v12

    sget-object v1, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->CCITT_GROUP_4:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    aput-object v1, v0, v13

    sget-object v1, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->CCITT_1D:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    aput-object v1, v0, v14

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
