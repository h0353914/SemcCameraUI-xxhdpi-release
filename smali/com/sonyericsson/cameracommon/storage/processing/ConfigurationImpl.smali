.class enum Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;
.super Ljava/lang/Enum;
.source "ConfigurationImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;

.field public static final enum BADGE:Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;

.field public static final enum EDIT:Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;

.field public static final enum INTERACT:Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;

.field public static final enum LAUNCH:Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;
    .locals 4

    .line 8
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;->BADGE:Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;->EDIT:Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;

    sget-object v2, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;->INTERACT:Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;

    sget-object v3, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;->LAUNCH:Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smcheckArgument(ZLjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;->checkArgument(ZLjava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 10
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl$1;

    const-string v1, "BADGE"

    const/4 v2, 0x0

    const-string v3, "badge"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl$1;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl$1-IA;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;->BADGE:Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;

    .line 22
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl$2;

    const/4 v1, 0x1

    const-string v2, "edit"

    const-string v3, "EDIT"

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl$2;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl$2-IA;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;->EDIT:Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;

    .line 38
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl$3;

    const/4 v1, 0x2

    const-string v2, "interact"

    const-string v3, "INTERACT"

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl$3;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl$3-IA;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;->INTERACT:Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;

    .line 49
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl$4;

    const/4 v1, 0x3

    const-string v2, "launch"

    const-string v3, "LAUNCH"

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl$4;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl$4-IA;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;->LAUNCH:Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;

    .line 8
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;->$values()[Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;->$VALUES:[Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;

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

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;->key:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private static checkArgument(ZLjava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    .line 83
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static checkResourceId(ILjava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 78
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " must be a valid resource id"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;->checkArgument(ZLjava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;
    .locals 1

    .line 8
    const-class v0, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;
    .locals 1

    .line 8
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;->$VALUES:[Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;

    return-object v0
.end method


# virtual methods
.method getKey()Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;->key:Ljava/lang/String;

    return-object p0
.end method

.method validate(Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;)V
    .locals 1

    .line 72
    iget p0, p1, Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;->descriptionResourceId:I

    const-string v0, "description"

    invoke-static {p0, v0}, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;->checkResourceId(ILjava/lang/String;)V

    .line 73
    iget p0, p1, Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;->iconResourceId:I

    const-string v0, "icon"

    invoke-static {p0, v0}, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;->checkResourceId(ILjava/lang/String;)V

    .line 74
    iget p0, p1, Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;->nameResourceId:I

    const-string p1, "name"

    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/storage/processing/ConfigurationImpl;->checkResourceId(ILjava/lang/String;)V

    return-void
.end method
