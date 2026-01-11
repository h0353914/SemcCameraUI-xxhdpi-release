.class final enum Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;
.super Ljava/lang/Enum;
.source "KeyEventTranslator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "KeyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

.field public static final enum CAMERA_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

.field public static final enum NON:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

.field public static final enum VOLUME_DOWN_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

.field public static final enum VOLUME_UP_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;
    .locals 4

    .line 53
    sget-object v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->NON:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    sget-object v1, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->CAMERA_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    sget-object v2, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->VOLUME_UP_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    sget-object v3, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->VOLUME_DOWN_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 54
    new-instance v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    const-string v1, "NON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->NON:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    .line 55
    new-instance v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    const-string v1, "CAMERA_KEY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->CAMERA_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    .line 56
    new-instance v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    const-string v1, "VOLUME_UP_KEY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->VOLUME_UP_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    .line 57
    new-instance v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    const-string v1, "VOLUME_DOWN_KEY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->VOLUME_DOWN_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    .line 53
    invoke-static {}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->$values()[Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->$VALUES:[Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;
    .locals 1

    .line 53
    const-class v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;
    .locals 1

    .line 53
    sget-object v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->$VALUES:[Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$KeyType;

    return-object v0
.end method
