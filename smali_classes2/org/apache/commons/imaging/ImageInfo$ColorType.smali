.class public final enum Lorg/apache/commons/imaging/ImageInfo$ColorType;
.super Ljava/lang/Enum;
.source "ImageInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/ImageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ColorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/imaging/ImageInfo$ColorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/imaging/ImageInfo$ColorType;

.field public static final enum BW:Lorg/apache/commons/imaging/ImageInfo$ColorType;

.field public static final enum CMYK:Lorg/apache/commons/imaging/ImageInfo$ColorType;

.field public static final enum GRAYSCALE:Lorg/apache/commons/imaging/ImageInfo$ColorType;

.field public static final enum OTHER:Lorg/apache/commons/imaging/ImageInfo$ColorType;

.field public static final enum RGB:Lorg/apache/commons/imaging/ImageInfo$ColorType;

.field public static final enum UNKNOWN:Lorg/apache/commons/imaging/ImageInfo$ColorType;

.field public static final enum YCC:Lorg/apache/commons/imaging/ImageInfo$ColorType;

.field public static final enum YCCK:Lorg/apache/commons/imaging/ImageInfo$ColorType;

.field public static final enum YCbCr:Lorg/apache/commons/imaging/ImageInfo$ColorType;


# instance fields
.field private description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 31
    new-instance v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;

    const/4 v1, 0x0

    const-string v2, "Black and White"

    const-string v3, "BW"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/commons/imaging/ImageInfo$ColorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;->BW:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    .line 32
    new-instance v1, Lorg/apache/commons/imaging/ImageInfo$ColorType;

    const/4 v2, 0x1

    const-string v3, "Grayscale"

    const-string v4, "GRAYSCALE"

    invoke-direct {v1, v4, v2, v3}, Lorg/apache/commons/imaging/ImageInfo$ColorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/apache/commons/imaging/ImageInfo$ColorType;->GRAYSCALE:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    .line 33
    new-instance v2, Lorg/apache/commons/imaging/ImageInfo$ColorType;

    const-string v3, "RGB"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v3}, Lorg/apache/commons/imaging/ImageInfo$ColorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/apache/commons/imaging/ImageInfo$ColorType;->RGB:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    .line 34
    new-instance v3, Lorg/apache/commons/imaging/ImageInfo$ColorType;

    const-string v4, "CMYK"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v4}, Lorg/apache/commons/imaging/ImageInfo$ColorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/apache/commons/imaging/ImageInfo$ColorType;->CMYK:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    .line 35
    new-instance v4, Lorg/apache/commons/imaging/ImageInfo$ColorType;

    const-string v5, "YCbCr"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v5}, Lorg/apache/commons/imaging/ImageInfo$ColorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/apache/commons/imaging/ImageInfo$ColorType;->YCbCr:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    .line 36
    new-instance v5, Lorg/apache/commons/imaging/ImageInfo$ColorType;

    const-string v6, "YCCK"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v6}, Lorg/apache/commons/imaging/ImageInfo$ColorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lorg/apache/commons/imaging/ImageInfo$ColorType;->YCCK:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    .line 37
    new-instance v6, Lorg/apache/commons/imaging/ImageInfo$ColorType;

    const-string v7, "YCC"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v7}, Lorg/apache/commons/imaging/ImageInfo$ColorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lorg/apache/commons/imaging/ImageInfo$ColorType;->YCC:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    .line 38
    new-instance v7, Lorg/apache/commons/imaging/ImageInfo$ColorType;

    const/4 v8, 0x7

    const-string v9, "Other"

    const-string v10, "OTHER"

    invoke-direct {v7, v10, v8, v9}, Lorg/apache/commons/imaging/ImageInfo$ColorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lorg/apache/commons/imaging/ImageInfo$ColorType;->OTHER:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    .line 39
    new-instance v8, Lorg/apache/commons/imaging/ImageInfo$ColorType;

    const/16 v9, 0x8

    const-string v10, "Unknown"

    const-string v11, "UNKNOWN"

    invoke-direct {v8, v11, v9, v10}, Lorg/apache/commons/imaging/ImageInfo$ColorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lorg/apache/commons/imaging/ImageInfo$ColorType;->UNKNOWN:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    .line 30
    filled-new-array/range {v0 .. v8}, [Lorg/apache/commons/imaging/ImageInfo$ColorType;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;->$VALUES:[Lorg/apache/commons/imaging/ImageInfo$ColorType;

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

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput-object p3, p0, Lorg/apache/commons/imaging/ImageInfo$ColorType;->description:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/imaging/ImageInfo$ColorType;
    .locals 1

    .line 30
    const-class v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/imaging/ImageInfo$ColorType;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/imaging/ImageInfo$ColorType;
    .locals 1

    .line 30
    sget-object v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;->$VALUES:[Lorg/apache/commons/imaging/ImageInfo$ColorType;

    invoke-virtual {v0}, [Lorg/apache/commons/imaging/ImageInfo$ColorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/imaging/ImageInfo$ColorType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lorg/apache/commons/imaging/ImageInfo$ColorType;->description:Ljava/lang/String;

    return-object p0
.end method
