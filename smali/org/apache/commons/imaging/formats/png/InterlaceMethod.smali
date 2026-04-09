.class public final enum Lorg/apache/commons/imaging/formats/png/InterlaceMethod;
.super Ljava/lang/Enum;
.source "InterlaceMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/imaging/formats/png/InterlaceMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/imaging/formats/png/InterlaceMethod;

.field public static final enum ADAM7:Lorg/apache/commons/imaging/formats/png/InterlaceMethod;

.field public static final enum NONE:Lorg/apache/commons/imaging/formats/png/InterlaceMethod;


# instance fields
.field private final progressive:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 26
    new-instance v0, Lorg/apache/commons/imaging/formats/png/InterlaceMethod;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/commons/imaging/formats/png/InterlaceMethod;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lorg/apache/commons/imaging/formats/png/InterlaceMethod;->NONE:Lorg/apache/commons/imaging/formats/png/InterlaceMethod;

    .line 27
    new-instance v0, Lorg/apache/commons/imaging/formats/png/InterlaceMethod;

    const-string v1, "ADAM7"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lorg/apache/commons/imaging/formats/png/InterlaceMethod;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lorg/apache/commons/imaging/formats/png/InterlaceMethod;->ADAM7:Lorg/apache/commons/imaging/formats/png/InterlaceMethod;

    const/4 v0, 0x2

    .line 24
    new-array v0, v0, [Lorg/apache/commons/imaging/formats/png/InterlaceMethod;

    sget-object v1, Lorg/apache/commons/imaging/formats/png/InterlaceMethod;->NONE:Lorg/apache/commons/imaging/formats/png/InterlaceMethod;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/formats/png/InterlaceMethod;->ADAM7:Lorg/apache/commons/imaging/formats/png/InterlaceMethod;

    aput-object v1, v0, v3

    sput-object v0, Lorg/apache/commons/imaging/formats/png/InterlaceMethod;->$VALUES:[Lorg/apache/commons/imaging/formats/png/InterlaceMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput-boolean p3, p0, Lorg/apache/commons/imaging/formats/png/InterlaceMethod;->progressive:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/imaging/formats/png/InterlaceMethod;
    .locals 1

    .line 24
    const-class v0, Lorg/apache/commons/imaging/formats/png/InterlaceMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/imaging/formats/png/InterlaceMethod;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/imaging/formats/png/InterlaceMethod;
    .locals 1

    .line 24
    sget-object v0, Lorg/apache/commons/imaging/formats/png/InterlaceMethod;->$VALUES:[Lorg/apache/commons/imaging/formats/png/InterlaceMethod;

    invoke-virtual {v0}, [Lorg/apache/commons/imaging/formats/png/InterlaceMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/imaging/formats/png/InterlaceMethod;

    return-object v0
.end method


# virtual methods
.method public isProgressive()Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lorg/apache/commons/imaging/formats/png/InterlaceMethod;->progressive:Z

    return p0
.end method
