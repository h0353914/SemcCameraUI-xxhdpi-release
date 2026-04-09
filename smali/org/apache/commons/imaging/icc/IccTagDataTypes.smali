.class public abstract enum Lorg/apache/commons/imaging/icc/IccTagDataTypes;
.super Ljava/lang/Enum;
.source "IccTagDataTypes.java"

# interfaces
.implements Lorg/apache/commons/imaging/icc/IccTagDataType;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/imaging/icc/IccTagDataTypes;",
        ">;",
        "Lorg/apache/commons/imaging/icc/IccTagDataType;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/imaging/icc/IccTagDataTypes;

.field public static final enum DATA_TYPE:Lorg/apache/commons/imaging/icc/IccTagDataTypes;

.field public static final enum DESC_TYPE:Lorg/apache/commons/imaging/icc/IccTagDataTypes;

.field public static final enum MULTI_LOCALIZED_UNICODE_TYPE:Lorg/apache/commons/imaging/icc/IccTagDataTypes;

.field public static final enum SIGNATURE_TYPE:Lorg/apache/commons/imaging/icc/IccTagDataTypes;

.field public static final enum TEXT_TYPE:Lorg/apache/commons/imaging/icc/IccTagDataTypes;


# instance fields
.field public final name:Ljava/lang/String;

.field public final signature:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 30
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagDataTypes$1;

    const-string v1, "DESC_TYPE"

    const-string v2, "descType"

    const/4 v3, 0x0

    const v4, 0x64657363

    invoke-direct {v0, v1, v3, v2, v4}, Lorg/apache/commons/imaging/icc/IccTagDataTypes$1;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagDataTypes;->DESC_TYPE:Lorg/apache/commons/imaging/icc/IccTagDataTypes;

    .line 56
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagDataTypes$2;

    const-string v1, "DATA_TYPE"

    const-string v2, "dataType"

    const/4 v4, 0x1

    const v5, 0x64617461

    invoke-direct {v0, v1, v4, v2, v5}, Lorg/apache/commons/imaging/icc/IccTagDataTypes$2;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagDataTypes;->DATA_TYPE:Lorg/apache/commons/imaging/icc/IccTagDataTypes;

    .line 74
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagDataTypes$3;

    const-string v1, "MULTI_LOCALIZED_UNICODE_TYPE"

    const-string v2, "multiLocalizedUnicodeType"

    const/4 v5, 0x2

    const v6, 0x6d6c7563

    invoke-direct {v0, v1, v5, v2, v6}, Lorg/apache/commons/imaging/icc/IccTagDataTypes$3;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagDataTypes;->MULTI_LOCALIZED_UNICODE_TYPE:Lorg/apache/commons/imaging/icc/IccTagDataTypes;

    .line 92
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagDataTypes$4;

    const-string v1, "SIGNATURE_TYPE"

    const-string v2, "signatureType"

    const/4 v6, 0x3

    const v7, 0x73696720

    invoke-direct {v0, v1, v6, v2, v7}, Lorg/apache/commons/imaging/icc/IccTagDataTypes$4;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagDataTypes;->SIGNATURE_TYPE:Lorg/apache/commons/imaging/icc/IccTagDataTypes;

    .line 122
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagDataTypes$5;

    const-string v1, "TEXT_TYPE"

    const-string v2, "textType"

    const/4 v7, 0x4

    const v8, 0x74657874

    invoke-direct {v0, v1, v7, v2, v8}, Lorg/apache/commons/imaging/icc/IccTagDataTypes$5;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagDataTypes;->TEXT_TYPE:Lorg/apache/commons/imaging/icc/IccTagDataTypes;

    const/4 v0, 0x5

    .line 29
    new-array v0, v0, [Lorg/apache/commons/imaging/icc/IccTagDataTypes;

    sget-object v1, Lorg/apache/commons/imaging/icc/IccTagDataTypes;->DESC_TYPE:Lorg/apache/commons/imaging/icc/IccTagDataTypes;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/commons/imaging/icc/IccTagDataTypes;->DATA_TYPE:Lorg/apache/commons/imaging/icc/IccTagDataTypes;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/commons/imaging/icc/IccTagDataTypes;->MULTI_LOCALIZED_UNICODE_TYPE:Lorg/apache/commons/imaging/icc/IccTagDataTypes;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/commons/imaging/icc/IccTagDataTypes;->SIGNATURE_TYPE:Lorg/apache/commons/imaging/icc/IccTagDataTypes;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/commons/imaging/icc/IccTagDataTypes;->TEXT_TYPE:Lorg/apache/commons/imaging/icc/IccTagDataTypes;

    aput-object v1, v0, v7

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagDataTypes;->$VALUES:[Lorg/apache/commons/imaging/icc/IccTagDataTypes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 146
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 147
    iput-object p3, p0, Lorg/apache/commons/imaging/icc/IccTagDataTypes;->name:Ljava/lang/String;

    .line 148
    iput p4, p0, Lorg/apache/commons/imaging/icc/IccTagDataTypes;->signature:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;ILorg/apache/commons/imaging/icc/IccTagDataTypes$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/imaging/icc/IccTagDataTypes;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/imaging/icc/IccTagDataTypes;
    .locals 1

    .line 29
    const-class v0, Lorg/apache/commons/imaging/icc/IccTagDataTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/imaging/icc/IccTagDataTypes;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/imaging/icc/IccTagDataTypes;
    .locals 1

    .line 29
    sget-object v0, Lorg/apache/commons/imaging/icc/IccTagDataTypes;->$VALUES:[Lorg/apache/commons/imaging/icc/IccTagDataTypes;

    invoke-virtual {v0}, [Lorg/apache/commons/imaging/icc/IccTagDataTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/imaging/icc/IccTagDataTypes;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 152
    iget-object p0, p0, Lorg/apache/commons/imaging/icc/IccTagDataTypes;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getSignature()I
    .locals 0

    .line 156
    iget p0, p0, Lorg/apache/commons/imaging/icc/IccTagDataTypes;->signature:I

    return p0
.end method
