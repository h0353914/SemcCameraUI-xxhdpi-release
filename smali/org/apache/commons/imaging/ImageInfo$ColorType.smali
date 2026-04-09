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

    const-string v1, "BW"

    const-string v2, "Black and White"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/commons/imaging/ImageInfo$ColorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;->BW:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    .line 32
    new-instance v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;

    const-string v1, "GRAYSCALE"

    const-string v2, "Grayscale"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/commons/imaging/ImageInfo$ColorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;->GRAYSCALE:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    .line 33
    new-instance v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;

    const-string v1, "RGB"

    const-string v2, "RGB"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/commons/imaging/ImageInfo$ColorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;->RGB:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    .line 34
    new-instance v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;

    const-string v1, "CMYK"

    const-string v2, "CMYK"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/commons/imaging/ImageInfo$ColorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;->CMYK:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    .line 35
    new-instance v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;

    const-string v1, "YCbCr"

    const-string v2, "YCbCr"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/commons/imaging/ImageInfo$ColorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;->YCbCr:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    .line 36
    new-instance v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;

    const-string v1, "YCCK"

    const-string v2, "YCCK"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lorg/apache/commons/imaging/ImageInfo$ColorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;->YCCK:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    .line 37
    new-instance v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;

    const-string v1, "YCC"

    const-string v2, "YCC"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lorg/apache/commons/imaging/ImageInfo$ColorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;->YCC:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    .line 38
    new-instance v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;

    const-string v1, "OTHER"

    const-string v2, "Other"

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2}, Lorg/apache/commons/imaging/ImageInfo$ColorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;->OTHER:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    .line 39
    new-instance v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;

    const-string v1, "UNKNOWN"

    const-string v2, "Unknown"

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v2}, Lorg/apache/commons/imaging/ImageInfo$ColorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/ImageInfo$ColorType;->UNKNOWN:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    const/16 v0, 0x9

    .line 30
    new-array v0, v0, [Lorg/apache/commons/imaging/ImageInfo$ColorType;

    sget-object v1, Lorg/apache/commons/imaging/ImageInfo$ColorType;->BW:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/commons/imaging/ImageInfo$ColorType;->GRAYSCALE:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/commons/imaging/ImageInfo$ColorType;->RGB:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/commons/imaging/ImageInfo$ColorType;->CMYK:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/commons/imaging/ImageInfo$ColorType;->YCbCr:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    aput-object v1, v0, v7

    sget-object v1, Lorg/apache/commons/imaging/ImageInfo$ColorType;->YCCK:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    aput-object v1, v0, v8

    sget-object v1, Lorg/apache/commons/imaging/ImageInfo$ColorType;->YCC:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    aput-object v1, v0, v9

    sget-object v1, Lorg/apache/commons/imaging/ImageInfo$ColorType;->OTHER:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    aput-object v1, v0, v10

    sget-object v1, Lorg/apache/commons/imaging/ImageInfo$ColorType;->UNKNOWN:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    aput-object v1, v0, v11

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
