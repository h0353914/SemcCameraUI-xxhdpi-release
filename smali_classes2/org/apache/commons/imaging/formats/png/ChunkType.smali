.class public final enum Lorg/apache/commons/imaging/formats/png/ChunkType;
.super Ljava/lang/Enum;
.source "ChunkType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/imaging/formats/png/ChunkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/imaging/formats/png/ChunkType;

.field public static final enum IDAT:Lorg/apache/commons/imaging/formats/png/ChunkType;

.field public static final enum IEND:Lorg/apache/commons/imaging/formats/png/ChunkType;

.field public static final enum IHDR:Lorg/apache/commons/imaging/formats/png/ChunkType;

.field public static final enum PLTE:Lorg/apache/commons/imaging/formats/png/ChunkType;

.field public static final enum bKGD:Lorg/apache/commons/imaging/formats/png/ChunkType;

.field public static final enum cHRM:Lorg/apache/commons/imaging/formats/png/ChunkType;

.field public static final enum gAMA:Lorg/apache/commons/imaging/formats/png/ChunkType;

.field public static final enum hIST:Lorg/apache/commons/imaging/formats/png/ChunkType;

.field public static final enum iCCP:Lorg/apache/commons/imaging/formats/png/ChunkType;

.field public static final enum iTXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

.field public static final enum pHYs:Lorg/apache/commons/imaging/formats/png/ChunkType;

.field public static final enum sBIT:Lorg/apache/commons/imaging/formats/png/ChunkType;

.field public static final enum sPLT:Lorg/apache/commons/imaging/formats/png/ChunkType;

.field public static final enum sRGB:Lorg/apache/commons/imaging/formats/png/ChunkType;

.field public static final enum tEXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

.field public static final enum tIME:Lorg/apache/commons/imaging/formats/png/ChunkType;

.field public static final enum tRNS:Lorg/apache/commons/imaging/formats/png/ChunkType;

.field public static final enum zTXt:Lorg/apache/commons/imaging/formats/png/ChunkType;


# instance fields
.field final array:[B

.field final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 31
    new-instance v1, Lorg/apache/commons/imaging/formats/png/ChunkType;

    move-object v0, v1

    const-string v2, "IHDR"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/imaging/formats/png/ChunkType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/commons/imaging/formats/png/ChunkType;->IHDR:Lorg/apache/commons/imaging/formats/png/ChunkType;

    .line 34
    new-instance v2, Lorg/apache/commons/imaging/formats/png/ChunkType;

    move-object v1, v2

    const-string v3, "PLTE"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/png/ChunkType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/commons/imaging/formats/png/ChunkType;->PLTE:Lorg/apache/commons/imaging/formats/png/ChunkType;

    .line 37
    new-instance v3, Lorg/apache/commons/imaging/formats/png/ChunkType;

    move-object v2, v3

    const-string v4, "IDAT"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/imaging/formats/png/ChunkType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/imaging/formats/png/ChunkType;->IDAT:Lorg/apache/commons/imaging/formats/png/ChunkType;

    .line 40
    new-instance v4, Lorg/apache/commons/imaging/formats/png/ChunkType;

    move-object v3, v4

    const-string v5, "IEND"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/imaging/formats/png/ChunkType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/apache/commons/imaging/formats/png/ChunkType;->IEND:Lorg/apache/commons/imaging/formats/png/ChunkType;

    .line 43
    new-instance v5, Lorg/apache/commons/imaging/formats/png/ChunkType;

    move-object v4, v5

    const-string v6, "tRNS"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7}, Lorg/apache/commons/imaging/formats/png/ChunkType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/commons/imaging/formats/png/ChunkType;->tRNS:Lorg/apache/commons/imaging/formats/png/ChunkType;

    .line 46
    new-instance v6, Lorg/apache/commons/imaging/formats/png/ChunkType;

    move-object v5, v6

    const-string v7, "cHRM"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8}, Lorg/apache/commons/imaging/formats/png/ChunkType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/apache/commons/imaging/formats/png/ChunkType;->cHRM:Lorg/apache/commons/imaging/formats/png/ChunkType;

    .line 49
    new-instance v7, Lorg/apache/commons/imaging/formats/png/ChunkType;

    move-object v6, v7

    const-string v8, "gAMA"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9}, Lorg/apache/commons/imaging/formats/png/ChunkType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/apache/commons/imaging/formats/png/ChunkType;->gAMA:Lorg/apache/commons/imaging/formats/png/ChunkType;

    .line 52
    new-instance v8, Lorg/apache/commons/imaging/formats/png/ChunkType;

    move-object v7, v8

    const-string v9, "iCCP"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10}, Lorg/apache/commons/imaging/formats/png/ChunkType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lorg/apache/commons/imaging/formats/png/ChunkType;->iCCP:Lorg/apache/commons/imaging/formats/png/ChunkType;

    .line 55
    new-instance v9, Lorg/apache/commons/imaging/formats/png/ChunkType;

    move-object v8, v9

    const-string v10, "sBIT"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11}, Lorg/apache/commons/imaging/formats/png/ChunkType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/apache/commons/imaging/formats/png/ChunkType;->sBIT:Lorg/apache/commons/imaging/formats/png/ChunkType;

    .line 58
    new-instance v10, Lorg/apache/commons/imaging/formats/png/ChunkType;

    move-object v9, v10

    const-string v11, "sRGB"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12}, Lorg/apache/commons/imaging/formats/png/ChunkType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lorg/apache/commons/imaging/formats/png/ChunkType;->sRGB:Lorg/apache/commons/imaging/formats/png/ChunkType;

    .line 61
    new-instance v11, Lorg/apache/commons/imaging/formats/png/ChunkType;

    move-object v10, v11

    const-string v12, "tEXt"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13}, Lorg/apache/commons/imaging/formats/png/ChunkType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/apache/commons/imaging/formats/png/ChunkType;->tEXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

    .line 64
    new-instance v12, Lorg/apache/commons/imaging/formats/png/ChunkType;

    move-object v11, v12

    const-string v13, "zTXt"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14}, Lorg/apache/commons/imaging/formats/png/ChunkType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lorg/apache/commons/imaging/formats/png/ChunkType;->zTXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

    .line 67
    new-instance v13, Lorg/apache/commons/imaging/formats/png/ChunkType;

    move-object v12, v13

    const-string v14, "iTXt"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15}, Lorg/apache/commons/imaging/formats/png/ChunkType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lorg/apache/commons/imaging/formats/png/ChunkType;->iTXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

    .line 70
    new-instance v14, Lorg/apache/commons/imaging/formats/png/ChunkType;

    move-object v13, v14

    const-string v15, "bKGD"

    move-object/from16 v18, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0}, Lorg/apache/commons/imaging/formats/png/ChunkType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lorg/apache/commons/imaging/formats/png/ChunkType;->bKGD:Lorg/apache/commons/imaging/formats/png/ChunkType;

    .line 73
    new-instance v0, Lorg/apache/commons/imaging/formats/png/ChunkType;

    move-object v14, v0

    const-string v15, "hIST"

    move-object/from16 v19, v1

    const/16 v1, 0xe

    invoke-direct {v0, v15, v1}, Lorg/apache/commons/imaging/formats/png/ChunkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/formats/png/ChunkType;->hIST:Lorg/apache/commons/imaging/formats/png/ChunkType;

    .line 76
    new-instance v0, Lorg/apache/commons/imaging/formats/png/ChunkType;

    move-object v15, v0

    const-string v1, "pHYs"

    move-object/from16 v20, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/png/ChunkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/formats/png/ChunkType;->pHYs:Lorg/apache/commons/imaging/formats/png/ChunkType;

    .line 79
    new-instance v0, Lorg/apache/commons/imaging/formats/png/ChunkType;

    move-object/from16 v16, v0

    const-string v1, "sPLT"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/png/ChunkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/formats/png/ChunkType;->sPLT:Lorg/apache/commons/imaging/formats/png/ChunkType;

    .line 82
    new-instance v0, Lorg/apache/commons/imaging/formats/png/ChunkType;

    move-object/from16 v17, v0

    const-string v1, "tIME"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/png/ChunkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/formats/png/ChunkType;->tIME:Lorg/apache/commons/imaging/formats/png/ChunkType;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    .line 28
    filled-new-array/range {v0 .. v17}, [Lorg/apache/commons/imaging/formats/png/ChunkType;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/png/ChunkType;->$VALUES:[Lorg/apache/commons/imaging/formats/png/ChunkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 88
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/png/ChunkType;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 90
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/png/ChunkType;->name()Ljava/lang/String;

    move-result-object p2

    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    iput-object p2, p0, Lorg/apache/commons/imaging/formats/png/ChunkType;->array:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p2, 0x0

    .line 95
    aget-char p2, p1, p2

    const/4 v0, 0x1

    aget-char v0, p1, v0

    const/4 v1, 0x2

    aget-char v1, p1, v1

    const/4 v2, 0x3

    aget-char p1, p1, v2

    invoke-static {p2, v0, v1, p1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->charsToQuad(CCCC)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/imaging/formats/png/ChunkType;->value:I

    return-void

    :catch_0
    move-exception p0

    .line 93
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/imaging/formats/png/ChunkType;
    .locals 1

    .line 28
    const-class v0, Lorg/apache/commons/imaging/formats/png/ChunkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/imaging/formats/png/ChunkType;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/imaging/formats/png/ChunkType;
    .locals 1

    .line 28
    sget-object v0, Lorg/apache/commons/imaging/formats/png/ChunkType;->$VALUES:[Lorg/apache/commons/imaging/formats/png/ChunkType;

    invoke-virtual {v0}, [Lorg/apache/commons/imaging/formats/png/ChunkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/imaging/formats/png/ChunkType;

    return-object v0
.end method
