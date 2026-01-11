.class public final Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;
.super Ljava/lang/Object;
.source "T4AndT6Compression.java"


# static fields
.field public static final BLACK:I = 0x1

.field private static final BLACK_RUN_LENGTHS:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final CONTROL_CODES:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree<",
            "Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;",
            ">;"
        }
    .end annotation
.end field

.field public static final WHITE:I

.field private static final WHITE_RUN_LENGTHS:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 28
    new-instance v0, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    invoke-direct {v0}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;-><init>()V

    sput-object v0, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->WHITE_RUN_LENGTHS:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    .line 29
    new-instance v0, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    invoke-direct {v0}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;-><init>()V

    sput-object v0, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->BLACK_RUN_LENGTHS:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    .line 30
    new-instance v0, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    invoke-direct {v0}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;-><init>()V

    sput-object v0, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->CONTROL_CODES:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    .line 37
    :try_start_0
    sget-object v0, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->WHITE_TERMINATING_CODES:[Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 38
    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->WHITE_RUN_LENGTHS:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    iget-object v6, v4, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    iget-object v4, v4, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->value:Ljava/lang/Integer;

    invoke-virtual {v5, v6, v4}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 40
    :cond_0
    sget-object v0, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->WHITE_MAKE_UP_CODES:[Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    array-length v1, v0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 41
    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->WHITE_RUN_LENGTHS:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    iget-object v6, v4, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    iget-object v4, v4, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->value:Ljava/lang/Integer;

    invoke-virtual {v5, v6, v4}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 43
    :cond_1
    sget-object v0, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->BLACK_TERMINATING_CODES:[Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    array-length v1, v0

    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 44
    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->BLACK_RUN_LENGTHS:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    iget-object v6, v4, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    iget-object v4, v4, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->value:Ljava/lang/Integer;

    invoke-virtual {v5, v6, v4}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 46
    :cond_2
    sget-object v0, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->BLACK_MAKE_UP_CODES:[Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    array-length v1, v0

    move v3, v2

    :goto_3
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 47
    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->BLACK_RUN_LENGTHS:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    iget-object v6, v4, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    iget-object v4, v4, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->value:Ljava/lang/Integer;

    invoke-virtual {v5, v6, v4}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 49
    :cond_3
    sget-object v0, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->ADDITIONAL_MAKE_UP_CODES:[Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    array-length v1, v0

    :goto_4
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 50
    sget-object v4, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->WHITE_RUN_LENGTHS:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    iget-object v5, v3, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    iget-object v6, v3, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->value:Ljava/lang/Integer;

    invoke-virtual {v4, v5, v6}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    sget-object v4, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->BLACK_RUN_LENGTHS:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    iget-object v5, v3, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    iget-object v3, v3, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->value:Ljava/lang/Integer;

    invoke-virtual {v4, v5, v3}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 53
    :cond_4
    sget-object v0, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->CONTROL_CODES:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v1, v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    sget-object v2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL13:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v1, v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    sget-object v2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL13:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL14:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v1, v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    sget-object v2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL14:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL15:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v1, v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    sget-object v2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL15:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL16:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v1, v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    sget-object v2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL16:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL17:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v1, v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    sget-object v2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL17:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL18:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v1, v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    sget-object v2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL18:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL19:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v1, v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    sget-object v2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL19:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->P:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v1, v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    sget-object v2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->P:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->H:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v1, v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    sget-object v2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->H:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->V0:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v1, v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    sget-object v2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->V0:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VL1:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v1, v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    sget-object v2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VL1:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VL2:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v1, v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    sget-object v2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VL2:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VL3:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v1, v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    sget-object v2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VL3:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VR1:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v1, v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    sget-object v2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VR1:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VR2:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v1, v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    sget-object v2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VR2:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VR3:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v1, v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    sget-object v2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VR3:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/commons/imaging/common/itu_t4/HuffmanTreeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 71
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static changingElementAt([II)I
    .locals 1

    if-ltz p1, :cond_1

    .line 731
    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 734
    :cond_0
    aget p0, p0, p1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static compress1DLine(Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;[II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v0, p3, :cond_2

    const/4 v3, 0x1

    .line 86
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->readBits(I)I

    move-result v4

    if-eqz p2, :cond_0

    .line 88
    aput v4, p2, v0

    :cond_0
    if-ne v2, v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 93
    :cond_1
    invoke-static {p1, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->writeRunLength(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    move v2, v4

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 98
    new-instance p1, Lorg/apache/commons/imaging/ImageWriteException;

    const-string p2, "Error reading image to compress"

    invoke-direct {p1, p2, p0}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 102
    :cond_2
    invoke-static {p1, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->writeRunLength(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;II)V

    return-void
.end method

.method public static compressModifiedHuffman([BII)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 118
    new-instance v0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;-><init>(Ljava/io/InputStream;)V

    .line 119
    new-instance p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;

    invoke-direct {p0}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    const/4 v2, 0x0

    .line 121
    invoke-static {v0, p0, v2, p1}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->compress1DLine(Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;[II)V

    .line 122
    invoke-virtual {v0}, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->flushCache()V

    .line 123
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->flush()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static compressT4_1D([BIIZ)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 180
    new-instance v0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;-><init>(Ljava/io/InputStream;)V

    .line 181
    new-instance p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;

    invoke-direct {p0}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;-><init>()V

    if-eqz p3, :cond_0

    .line 183
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL16:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v1, p0}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;)V

    goto :goto_0

    .line 185
    :cond_0
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v1, p0}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;)V

    :goto_0
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, p2, :cond_3

    const/4 v3, 0x0

    .line 189
    invoke-static {v0, p0, v3, p1}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->compress1DLine(Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;[II)V

    if-eqz p3, :cond_2

    .line 191
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->getBitsAvailableInCurrentByte()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    .line 194
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->flush()V

    const/16 v3, 0x8

    :cond_1
    :goto_2
    if-le v3, v4, :cond_2

    .line 198
    invoke-virtual {p0, v1}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->writeBit(I)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 201
    :cond_2
    sget-object v3, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v3, p0}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;)V

    .line 202
    invoke-virtual {v0}, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->flushCache()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 205
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static compressT4_2D([BIIZI)[B
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    move/from16 v0, p1

    .line 266
    new-instance v1, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    move-object/from16 v3, p0

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;-><init>(Ljava/io/InputStream;)V

    .line 267
    new-instance v2, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;

    invoke-direct {v2}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;-><init>()V

    .line 268
    new-array v3, v0, [I

    .line 269
    new-array v4, v0, [I

    if-eqz p3, :cond_0

    .line 272
    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL16:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v5, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;)V

    goto :goto_0

    .line 274
    :cond_0
    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v5, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;)V

    :goto_0
    const/4 v5, 0x0

    move/from16 v6, p2

    move v7, v5

    move v8, v7

    :goto_1
    if-ge v7, v6, :cond_10

    const/4 v9, 0x1

    if-lez v8, :cond_c

    .line 280
    invoke-virtual {v2, v5}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->writeBit(I)V

    move v10, v5

    :goto_2
    if-ge v10, v0, :cond_1

    .line 283
    :try_start_0
    invoke-virtual {v1, v9}, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->readBits(I)I

    move-result v11

    aput v11, v4, v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    .line 285
    new-instance v1, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v2, "Error reading image to compress"

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 290
    :cond_1
    invoke-static {v4, v5, v5}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v10

    .line 291
    invoke-static {v3, v5, v5}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v11

    add-int/lit8 v12, v11, 0x1

    .line 292
    invoke-static {v3, v9, v12}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v12

    move v13, v5

    move v14, v13

    :goto_3
    if-ge v13, v0, :cond_b

    if-ge v12, v10, :cond_2

    .line 295
    sget-object v10, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->P:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v10, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;)V

    :goto_4
    move v13, v12

    goto :goto_6

    :cond_2
    sub-int v11, v10, v11

    const/4 v12, -0x3

    if-gt v12, v11, :cond_9

    const/4 v15, 0x3

    if-gt v11, v15, :cond_9

    if-ne v11, v12, :cond_3

    .line 302
    sget-object v11, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VL3:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    goto :goto_5

    :cond_3
    const/4 v12, -0x2

    if-ne v11, v12, :cond_4

    .line 304
    sget-object v11, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VL2:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    goto :goto_5

    :cond_4
    const/4 v12, -0x1

    if-ne v11, v12, :cond_5

    .line 306
    sget-object v11, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VL1:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    goto :goto_5

    :cond_5
    if-nez v11, :cond_6

    .line 308
    sget-object v11, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->V0:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    goto :goto_5

    :cond_6
    if-ne v11, v9, :cond_7

    .line 310
    sget-object v11, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VR1:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    goto :goto_5

    :cond_7
    const/4 v12, 0x2

    if-ne v11, v12, :cond_8

    .line 312
    sget-object v11, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VR2:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    goto :goto_5

    .line 314
    :cond_8
    sget-object v11, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VR3:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    .line 316
    :goto_5
    invoke-virtual {v11, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;)V

    rsub-int/lit8 v14, v14, 0x1

    move v13, v10

    goto :goto_6

    :cond_9
    rsub-int/lit8 v11, v14, 0x1

    add-int/lit8 v12, v10, 0x1

    .line 320
    invoke-static {v4, v11, v12}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v12

    sub-int v13, v10, v13

    sub-int v10, v12, v10

    .line 323
    sget-object v15, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->H:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v15, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;)V

    .line 324
    invoke-static {v2, v13, v14}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->writeRunLength(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;II)V

    .line 325
    invoke-static {v2, v10, v11}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->writeRunLength(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;II)V

    goto :goto_4

    .line 329
    :goto_6
    invoke-static {v3, v13}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->changingElementAt([II)I

    move-result v10

    add-int/lit8 v11, v13, 0x1

    .line 330
    invoke-static {v4, v14, v11}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v12

    if-ne v14, v10, :cond_a

    .line 332
    invoke-static {v3, v10, v11}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v10

    goto :goto_7

    .line 334
    :cond_a
    invoke-static {v3, v10, v11}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v11

    rsub-int/lit8 v10, v10, 0x1

    add-int/2addr v11, v9

    .line 335
    invoke-static {v3, v10, v11}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v10

    :goto_7
    move v11, v10

    rsub-int/lit8 v10, v14, 0x1

    add-int/lit8 v15, v11, 0x1

    .line 337
    invoke-static {v3, v10, v15}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v10

    move/from16 v16, v12

    move v12, v10

    move/from16 v10, v16

    goto :goto_3

    :cond_b
    move-object/from16 v16, v4

    move-object v4, v3

    move-object/from16 v3, v16

    goto :goto_8

    .line 344
    :cond_c
    invoke-virtual {v2, v9}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->writeBit(I)V

    .line 345
    invoke-static {v1, v2, v3, v0}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->compress1DLine(Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;[II)V

    :goto_8
    if-eqz p3, :cond_e

    .line 348
    invoke-virtual {v2}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->getBitsAvailableInCurrentByte()I

    move-result v9

    const/4 v10, 0x4

    if-ge v9, v10, :cond_d

    .line 351
    invoke-virtual {v2}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->flush()V

    const/16 v9, 0x8

    :cond_d
    :goto_9
    if-le v9, v10, :cond_e

    .line 355
    invoke-virtual {v2, v5}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->writeBit(I)V

    add-int/lit8 v9, v9, -0x1

    goto :goto_9

    .line 358
    :cond_e
    sget-object v9, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v9, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;)V

    add-int/lit8 v8, v8, 0x1

    move/from16 v9, p4

    if-ne v8, v9, :cond_f

    move v8, v5

    .line 363
    :cond_f
    invoke-virtual {v1}, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->flushCache()V

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 366
    :cond_10
    invoke-virtual {v2}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static compressT6([BII)[B
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    move/from16 v0, p1

    .line 480
    const-string v1, "I/O error"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 483
    :try_start_0
    new-instance v5, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    move-object/from16 v7, p0

    invoke-direct {v6, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v5, v6}, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 484
    :try_start_1
    new-instance v3, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;

    invoke-direct {v3}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;-><init>()V

    .line 485
    new-array v6, v0, [I

    .line 486
    new-array v7, v0, [I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v8, p2

    move v9, v4

    :goto_0
    if-ge v9, v8, :cond_b

    move v10, v4

    :goto_1
    if-ge v10, v0, :cond_0

    .line 490
    :try_start_2
    invoke-virtual {v5, v2}, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->readBits(I)I

    move-result v11

    aput v11, v7, v10
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 492
    :try_start_3
    new-instance v3, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v6, "Error reading image to compress"

    invoke-direct {v3, v6, v0}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 497
    :cond_0
    invoke-static {v7, v4, v4}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v10

    .line 498
    invoke-static {v6, v4, v4}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v11

    add-int/lit8 v12, v11, 0x1

    .line 499
    invoke-static {v6, v2, v12}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v12

    move v13, v4

    move v14, v13

    :goto_2
    if-ge v13, v0, :cond_a

    if-ge v12, v10, :cond_1

    .line 502
    sget-object v10, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->P:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v10, v3}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;)V

    :goto_3
    move v13, v12

    goto :goto_5

    :cond_1
    sub-int v11, v10, v11

    const/4 v12, -0x3

    if-gt v12, v11, :cond_8

    const/4 v15, 0x3

    if-gt v11, v15, :cond_8

    if-ne v11, v12, :cond_2

    .line 509
    sget-object v11, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VL3:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    goto :goto_4

    :cond_2
    const/4 v12, -0x2

    if-ne v11, v12, :cond_3

    .line 511
    sget-object v11, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VL2:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    goto :goto_4

    :cond_3
    const/4 v12, -0x1

    if-ne v11, v12, :cond_4

    .line 513
    sget-object v11, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VL1:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    goto :goto_4

    :cond_4
    if-nez v11, :cond_5

    .line 515
    sget-object v11, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->V0:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    goto :goto_4

    :cond_5
    if-ne v11, v2, :cond_6

    .line 517
    sget-object v11, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VR1:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    goto :goto_4

    :cond_6
    const/4 v12, 0x2

    if-ne v11, v12, :cond_7

    .line 519
    sget-object v11, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VR2:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    goto :goto_4

    .line 521
    :cond_7
    sget-object v11, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VR3:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    .line 523
    :goto_4
    invoke-virtual {v11, v3}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;)V

    rsub-int/lit8 v14, v14, 0x1

    move v13, v10

    goto :goto_5

    :cond_8
    rsub-int/lit8 v11, v14, 0x1

    add-int/lit8 v12, v10, 0x1

    .line 527
    invoke-static {v7, v11, v12}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v12

    sub-int v13, v10, v13

    sub-int v10, v12, v10

    .line 530
    sget-object v15, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->H:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v15, v3}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;)V

    .line 531
    invoke-static {v3, v13, v14}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->writeRunLength(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;II)V

    .line 532
    invoke-static {v3, v10, v11}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->writeRunLength(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;II)V

    goto :goto_3

    .line 536
    :goto_5
    invoke-static {v6, v13}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->changingElementAt([II)I

    move-result v10

    add-int/lit8 v11, v13, 0x1

    .line 537
    invoke-static {v7, v14, v11}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v12

    if-ne v14, v10, :cond_9

    .line 539
    invoke-static {v6, v10, v11}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v10

    :goto_6
    move v11, v10

    goto :goto_7

    .line 541
    :cond_9
    invoke-static {v6, v10, v11}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v11

    rsub-int/lit8 v10, v10, 0x1

    add-int/2addr v11, v2

    .line 542
    invoke-static {v6, v10, v11}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v10

    goto :goto_6

    :goto_7
    rsub-int/lit8 v10, v14, 0x1

    add-int/lit8 v15, v11, 0x1

    .line 544
    invoke-static {v6, v10, v15}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v10

    move/from16 v16, v12

    move v12, v10

    move/from16 v10, v16

    goto/16 :goto_2

    .line 549
    :cond_a
    invoke-virtual {v5}, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->flushCache()V

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v16, v7

    move-object v7, v6

    move-object/from16 v6, v16

    goto/16 :goto_0

    .line 552
    :cond_b
    sget-object v0, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v0, v3}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;)V

    .line 553
    sget-object v0, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v0, v3}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;)V

    .line 554
    invoke-virtual {v3}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 559
    :try_start_4
    new-array v3, v2, [Ljava/io/Closeable;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    .line 561
    new-instance v2, Lorg/apache/commons/imaging/ImageWriteException;

    invoke-direct {v2, v1, v0}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catchall_0
    move-exception v0

    move-object v3, v5

    goto :goto_8

    :catchall_1
    move-exception v0

    .line 559
    :goto_8
    :try_start_5
    new-array v2, v2, [Ljava/io/Closeable;

    aput-object v3, v2, v4

    invoke-static {v4, v2}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 561
    throw v0

    :catch_2
    move-exception v0

    new-instance v2, Lorg/apache/commons/imaging/ImageWriteException;

    invoke-direct {v2, v1, v0}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static decompressModifiedHuffman([BII)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 141
    const-string v0, "I/O error"

    new-instance v1, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;-><init>(Ljava/io/InputStream;)V

    const/4 p0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 146
    :try_start_0
    new-instance v4, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;

    invoke-direct {v4}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v2, v3

    :goto_0
    if-ge v2, p2, :cond_4

    move v5, v3

    move v6, v5

    :goto_1
    if-ge v5, p1, :cond_1

    .line 151
    :try_start_1
    invoke-static {v1, v6}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->readTotalRunLength(Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;I)I

    move-result v7

    move v8, v3

    :goto_2
    if-ge v8, v7, :cond_0

    .line 153
    invoke-virtual {v4, v6}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->writeBit(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_0
    rsub-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v7

    goto :goto_1

    :cond_1
    if-ne v5, p1, :cond_2

    .line 160
    invoke-virtual {v1}, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->flushCache()V

    .line 161
    invoke-virtual {v4}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->flush()V

    goto :goto_3

    :cond_2
    if-gt v5, p1, :cond_3

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 163
    :cond_3
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecoverable row length error in image row "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 166
    :cond_4
    invoke-virtual {v4}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    :try_start_2
    new-array p2, p0, [Ljava/io/Closeable;

    aput-object v4, p2, v3

    invoke-static {p0, p2}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 173
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    invoke-direct {p1, v0, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catchall_0
    move-exception p1

    move-object v2, v4

    goto :goto_4

    :catchall_1
    move-exception p1

    .line 171
    :goto_4
    :try_start_3
    new-array p0, p0, [Ljava/io/Closeable;

    aput-object v2, p0, v3

    invoke-static {v3, p0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 173
    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    invoke-direct {p1, v0, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static decompressT4_1D([BIIZ)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 220
    const-string v0, "I/O error"

    new-instance v1, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;-><init>(Ljava/io/InputStream;)V

    const/4 p0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 224
    :try_start_0
    new-instance v4, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;

    invoke-direct {v4}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v2, v3

    :goto_0
    if-ge v2, p2, :cond_5

    .line 228
    :try_start_1
    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->CONTROL_CODES:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    invoke-virtual {v5, v1}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->decode(Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    .line 229
    invoke-static {v5, p3}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->isEOL(Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v3

    move v6, v5

    :goto_1
    if-ge v5, p1, :cond_1

    .line 234
    invoke-static {v1, v6}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->readTotalRunLength(Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;I)I

    move-result v7

    move v8, v3

    :goto_2
    if-ge v8, v7, :cond_0

    .line 236
    invoke-virtual {v4, v6}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->writeBit(I)V
    :try_end_1
    .catch Lorg/apache/commons/imaging/common/itu_t4/HuffmanTreeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_0
    rsub-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v7

    goto :goto_1

    :cond_1
    if-ne v5, p1, :cond_2

    .line 246
    :try_start_2
    invoke-virtual {v4}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->flush()V

    goto :goto_3

    :cond_2
    if-gt v5, p1, :cond_3

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 248
    :cond_3
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unrecoverable row length error in image row "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 230
    :cond_4
    :try_start_3
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string p2, "Expected EOL not found"

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Lorg/apache/commons/imaging/common/itu_t4/HuffmanTreeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    move-exception p1

    .line 242
    :try_start_4
    new-instance p2, Lorg/apache/commons/imaging/ImageReadException;

    const-string p3, "Decompression error"

    invoke-direct {p2, p3, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 251
    :cond_5
    invoke-virtual {v4}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 256
    :try_start_5
    new-array p2, p0, [Ljava/io/Closeable;

    aput-object v4, p2, v3

    invoke-static {p0, p2}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    return-object p1

    :catch_1
    move-exception p0

    .line 258
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    invoke-direct {p1, v0, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catchall_0
    move-exception p1

    move-object v2, v4

    goto :goto_4

    :catchall_1
    move-exception p1

    .line 256
    :goto_4
    :try_start_6
    new-array p0, p0, [Ljava/io/Closeable;

    aput-object v2, p0, v3

    invoke-static {v3, p0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 258
    throw p1

    :catch_2
    move-exception p0

    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    invoke-direct {p1, v0, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static decompressT4_2D([BIIZ)[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 383
    const-string v0, "Decompression error"

    new-instance v1, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;-><init>(Ljava/io/InputStream;)V

    .line 384
    new-instance p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;

    invoke-direct {p0}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;-><init>()V

    .line 385
    new-array v2, p1, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, p2, :cond_10

    .line 389
    :try_start_0
    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->CONTROL_CODES:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    invoke-virtual {v5, v1}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->decode(Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    .line 390
    invoke-static {v5, p3}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->isEOL(Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;Z)Z

    move-result v5

    if-eqz v5, :cond_f

    const/4 v5, 0x1

    .line 393
    invoke-virtual {v1, v5}, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->readBits(I)I

    move-result v6

    if-nez v6, :cond_a

    .line 398
    invoke-static {v2, v3, v3}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v6

    add-int/lit8 v7, v6, 0x1

    .line 399
    invoke-static {v2, v5, v7}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v7

    move v8, v3

    move v9, v8

    move v10, v9

    :goto_1
    if-ge v8, p1, :cond_c

    .line 403
    sget-object v9, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->CONTROL_CODES:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    invoke-virtual {v9, v1}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->decode(Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    .line 404
    sget-object v11, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->P:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-ne v9, v11, :cond_0

    .line 405
    invoke-static {p0, v2, v8, v7, v10}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->fillRange(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;[IIII)V

    :goto_2
    move v9, v7

    goto :goto_4

    .line 407
    :cond_0
    sget-object v7, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->H:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-ne v9, v7, :cond_1

    .line 408
    invoke-static {v1, v10}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->readTotalRunLength(Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;I)I

    move-result v6

    add-int/2addr v6, v8

    .line 410
    invoke-static {p0, v2, v8, v6, v10}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->fillRange(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;[IIII)V

    rsub-int/lit8 v7, v10, 0x1

    .line 411
    invoke-static {v1, v7}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->readTotalRunLength(Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;I)I

    move-result v8

    add-int/2addr v8, v6

    .line 413
    invoke-static {p0, v2, v6, v8, v7}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->fillRange(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;[IIII)V

    move v9, v8

    goto :goto_4

    .line 417
    :cond_1
    sget-object v7, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->V0:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-ne v9, v7, :cond_2

    move v7, v3

    goto :goto_3

    .line 419
    :cond_2
    sget-object v7, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VL1:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-ne v9, v7, :cond_3

    const/4 v7, -0x1

    goto :goto_3

    .line 421
    :cond_3
    sget-object v7, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VL2:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-ne v9, v7, :cond_4

    const/4 v7, -0x2

    goto :goto_3

    .line 423
    :cond_4
    sget-object v7, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VL3:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-ne v9, v7, :cond_5

    const/4 v7, -0x3

    goto :goto_3

    .line 425
    :cond_5
    sget-object v7, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VR1:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-ne v9, v7, :cond_6

    move v7, v5

    goto :goto_3

    .line 427
    :cond_6
    sget-object v7, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VR2:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-ne v9, v7, :cond_7

    const/4 v7, 0x2

    goto :goto_3

    .line 429
    :cond_7
    sget-object v7, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VR3:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-ne v9, v7, :cond_9

    const/4 v7, 0x3

    :goto_3
    add-int/2addr v7, v6

    .line 435
    invoke-static {p0, v2, v8, v7, v10}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->fillRange(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;[IIII)V

    rsub-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 439
    :goto_4
    invoke-static {v2, v9}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->changingElementAt([II)I

    move-result v6

    if-ne v10, v6, :cond_8

    add-int/lit8 v7, v9, 0x1

    .line 441
    invoke-static {v2, v6, v7}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v6

    goto :goto_5

    :cond_8
    add-int/lit8 v7, v9, 0x1

    .line 443
    invoke-static {v2, v6, v7}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v7

    rsub-int/lit8 v6, v6, 0x1

    add-int/2addr v7, v5

    .line 444
    invoke-static {v2, v6, v7}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v6

    :goto_5
    rsub-int/lit8 v7, v10, 0x1

    add-int/lit8 v8, v6, 0x1

    .line 446
    invoke-static {v2, v7, v8}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v7

    move v8, v9

    goto :goto_1

    .line 432
    :cond_9
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid/unknown T.4 control code "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, v9, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    move v5, v3

    move v9, v5

    :goto_6
    if-ge v9, p1, :cond_c

    .line 453
    invoke-static {v1, v5}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->readTotalRunLength(Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;I)I

    move-result v6

    move v7, v3

    :goto_7
    if-ge v7, v6, :cond_b

    .line 455
    invoke-virtual {p0, v5}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->writeBit(I)V

    add-int v8, v9, v7

    .line 456
    aput v5, v2, v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/commons/imaging/common/itu_t4/HuffmanTreeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_b
    rsub-int/lit8 v5, v5, 0x1

    add-int/2addr v9, v6

    goto :goto_6

    :cond_c
    if-ne v9, p1, :cond_d

    .line 469
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->flush()V

    goto :goto_8

    :cond_d
    if-gt v9, p1, :cond_e

    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 471
    :cond_e
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unrecoverable row length error in image row "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 391
    :cond_f
    :try_start_1
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    const-string p1, "Expected EOL not found"

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/commons/imaging/common/itu_t4/HuffmanTreeException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    .line 465
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    invoke-direct {p1, v0, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 463
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    invoke-direct {p1, v0, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 475
    :cond_10
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static decompressT6([BII)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 579
    new-instance v0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;-><init>(Ljava/io/InputStream;)V

    .line 580
    new-instance p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;

    invoke-direct {p0}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;-><init>()V

    .line 581
    new-array v1, p1, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p2, :cond_d

    .line 587
    :try_start_0
    invoke-static {v1, v2, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v4

    add-int/lit8 v5, v4, 0x1

    const/4 v6, 0x1

    .line 588
    invoke-static {v1, v6, v5}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v5

    move v7, v2

    move v8, v7

    move v9, v8

    :goto_1
    if-ge v7, p1, :cond_a

    .line 592
    sget-object v8, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->CONTROL_CODES:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    invoke-virtual {v8, v0}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->decode(Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    .line 593
    sget-object v10, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->P:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-ne v8, v10, :cond_0

    .line 594
    invoke-static {p0, v1, v7, v5, v9}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->fillRange(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;[IIII)V

    :goto_2
    move v8, v5

    goto :goto_4

    .line 596
    :cond_0
    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->H:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-ne v8, v5, :cond_1

    .line 597
    invoke-static {v0, v9}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->readTotalRunLength(Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;I)I

    move-result v4

    add-int/2addr v4, v7

    .line 599
    invoke-static {p0, v1, v7, v4, v9}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->fillRange(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;[IIII)V

    rsub-int/lit8 v5, v9, 0x1

    .line 600
    invoke-static {v0, v5}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->readTotalRunLength(Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;I)I

    move-result v7

    add-int/2addr v7, v4

    .line 602
    invoke-static {p0, v1, v4, v7, v5}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->fillRange(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;[IIII)V

    move v8, v7

    goto :goto_4

    .line 606
    :cond_1
    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->V0:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-ne v8, v5, :cond_2

    move v5, v2

    goto :goto_3

    .line 608
    :cond_2
    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VL1:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-ne v8, v5, :cond_3

    const/4 v5, -0x1

    goto :goto_3

    .line 610
    :cond_3
    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VL2:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-ne v8, v5, :cond_4

    const/4 v5, -0x2

    goto :goto_3

    .line 612
    :cond_4
    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VL3:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-ne v8, v5, :cond_5

    const/4 v5, -0x3

    goto :goto_3

    .line 614
    :cond_5
    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VR1:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-ne v8, v5, :cond_6

    move v5, v6

    goto :goto_3

    .line 616
    :cond_6
    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VR2:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-ne v8, v5, :cond_7

    const/4 v5, 0x2

    goto :goto_3

    .line 618
    :cond_7
    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VR3:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-ne v8, v5, :cond_9

    const/4 v5, 0x3

    :goto_3
    add-int/2addr v5, v4

    .line 624
    invoke-static {p0, v1, v7, v5, v9}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->fillRange(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;[IIII)V

    rsub-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 628
    :goto_4
    invoke-static {v1, v8}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->changingElementAt([II)I

    move-result v4

    if-ne v9, v4, :cond_8

    add-int/lit8 v5, v8, 0x1

    .line 630
    invoke-static {v1, v4, v5}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v4

    goto :goto_5

    :cond_8
    add-int/lit8 v5, v8, 0x1

    .line 632
    invoke-static {v1, v4, v5}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v5

    rsub-int/lit8 v4, v4, 0x1

    add-int/2addr v5, v6

    .line 633
    invoke-static {v1, v4, v5}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v4

    :goto_5
    rsub-int/lit8 v5, v9, 0x1

    add-int/lit8 v7, v4, 0x1

    .line 635
    invoke-static {v1, v5, v7}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v5

    move v7, v8

    goto :goto_1

    .line 621
    :cond_9
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid/unknown T.6 control code "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, v8, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lorg/apache/commons/imaging/common/itu_t4/HuffmanTreeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    if-ne v8, p1, :cond_b

    .line 643
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->flush()V

    goto :goto_6

    :cond_b
    if-gt v8, p1, :cond_c

    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 645
    :cond_c
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unrecoverable row length error in image row "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    .line 639
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string p2, "Decompression error"

    invoke-direct {p1, p2, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 649
    :cond_d
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private static fillRange(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;[IIII)V
    .locals 0

    :goto_0
    if-ge p2, p3, :cond_0

    .line 750
    aput p4, p1, p2

    .line 751
    invoke-virtual {p0, p4}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->writeBit(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static isEOL(Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;Z)Z
    .locals 2

    .line 653
    sget-object v0, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 657
    sget-object p1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL13:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-eq p0, p1, :cond_2

    sget-object p1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL14:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-eq p0, p1, :cond_2

    sget-object p1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL15:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-eq p0, p1, :cond_2

    sget-object p1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL16:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-eq p0, p1, :cond_2

    sget-object p1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL17:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-eq p0, p1, :cond_2

    sget-object p1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL18:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-eq p0, p1, :cond_2

    sget-object p1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL19:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :cond_2
    :goto_0
    return v1

    :cond_3
    return v0
.end method

.method private static lowerBound([Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;I)Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;
    .locals 5

    .line 695
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :cond_0
    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 698
    aget-object v3, p0, v2

    iget-object v3, v3, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->value:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt v3, p1, :cond_2

    add-int/lit8 v3, v2, 0x1

    array-length v4, p0

    if-ge v3, v4, :cond_1

    aget-object v3, p0, v3

    iget-object v3, v3, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->value:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge p1, v3, :cond_2

    .line 700
    :cond_1
    aget-object p0, p0, v2

    return-object p0

    .line 701
    :cond_2
    aget-object v3, p0, v2

    iget-object v3, v3, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->value:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, p1, :cond_3

    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    move v1, v2

    :goto_0
    if-lt v1, v0, :cond_0

    .line 708
    aget-object p0, p0, v1

    return-object p0
.end method

.method private static nextChangingElement([III)I
    .locals 1

    .line 740
    :goto_0
    array-length v0, p0

    if-ge p2, v0, :cond_0

    aget v0, p0, p2

    if-ne v0, p1, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 744
    :cond_0
    array-length p1, p0

    if-ge p2, p1, :cond_1

    goto :goto_1

    :cond_1
    array-length p2, p0

    :goto_1
    return p2
.end method

.method private static readTotalRunLength(Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 v0, 0x0

    :cond_0
    if-nez p1, :cond_1

    .line 718
    :try_start_0
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->WHITE_RUN_LENGTHS:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    invoke-virtual {v1, p0}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->decode(Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    goto :goto_0

    .line 720
    :cond_1
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->BLACK_RUN_LENGTHS:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    invoke-virtual {v1, p0}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->decode(Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 722
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v0, v2

    .line 723
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Lorg/apache/commons/imaging/common/itu_t4/HuffmanTreeException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x3f

    if-gt v1, v2, :cond_0

    return v0

    :catch_0
    move-exception p0

    .line 726
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string v0, "Decompression error"

    invoke-direct {p1, v0, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static writeRunLength(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;II)V
    .locals 2

    if-nez p2, :cond_0

    .line 672
    sget-object p2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->WHITE_MAKE_UP_CODES:[Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    .line 673
    sget-object v0, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->WHITE_TERMINATING_CODES:[Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    goto :goto_0

    .line 675
    :cond_0
    sget-object p2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->BLACK_MAKE_UP_CODES:[Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    .line 676
    sget-object v0, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->BLACK_TERMINATING_CODES:[Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    :goto_0
    const/16 v1, 0x700

    if-lt p1, v1, :cond_1

    .line 679
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->ADDITIONAL_MAKE_UP_CODES:[Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-static {v1, p1}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->lowerBound([Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;I)Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    move-result-object v1

    .line 681
    invoke-virtual {v1, p0}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;)V

    .line 682
    iget-object v1, v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->value:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr p1, v1

    goto :goto_0

    :cond_1
    :goto_1
    const/16 v1, 0x40

    if-lt p1, v1, :cond_2

    .line 685
    invoke-static {p2, p1}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->lowerBound([Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;I)Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    move-result-object v1

    .line 686
    invoke-virtual {v1, p0}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;)V

    .line 687
    iget-object v1, v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->value:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr p1, v1

    goto :goto_1

    .line 689
    :cond_2
    aget-object p1, v0, p1

    .line 690
    invoke-virtual {p1, p0}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;)V

    return-void
.end method
