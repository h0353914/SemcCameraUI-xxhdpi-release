.class public final enum Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;
.super Ljava/lang/Enum;
.source "KeyEventTranslator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TranslatedKeyCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

.field public static final enum BACK:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

.field public static final enum ENTER:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

.field public static final enum FOCUS:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

.field public static final enum FOCUS_AND_SHUTTER_DOWN_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

.field public static final enum FOCUS_AND_SHUTTER_UP_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

.field public static final enum IGNORED:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

.field public static final enum MENU:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

.field public static final enum NON:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

.field public static final enum SHUTTER:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

.field public static final enum VOLUME:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

.field public static final enum ZOOM:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;
    .locals 11

    .line 39
    sget-object v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->NON:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    sget-object v1, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->ZOOM:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    sget-object v2, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->VOLUME:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    sget-object v3, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->FOCUS:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    sget-object v4, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->SHUTTER:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    sget-object v5, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->FOCUS_AND_SHUTTER_UP_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    sget-object v6, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->FOCUS_AND_SHUTTER_DOWN_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    sget-object v7, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->BACK:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    sget-object v8, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->MENU:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    sget-object v9, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->IGNORED:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    sget-object v10, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->ENTER:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    filled-new-array/range {v0 .. v10}, [Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 40
    new-instance v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    const-string v1, "NON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->NON:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    .line 41
    new-instance v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    const-string v1, "ZOOM"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->ZOOM:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    .line 42
    new-instance v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    const-string v1, "VOLUME"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->VOLUME:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    .line 43
    new-instance v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    const-string v1, "FOCUS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->FOCUS:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    .line 44
    new-instance v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    const-string v1, "SHUTTER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->SHUTTER:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    .line 45
    new-instance v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    const-string v1, "FOCUS_AND_SHUTTER_UP_KEY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->FOCUS_AND_SHUTTER_UP_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    .line 46
    new-instance v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    const-string v1, "FOCUS_AND_SHUTTER_DOWN_KEY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->FOCUS_AND_SHUTTER_DOWN_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    .line 47
    new-instance v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    const-string v1, "BACK"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->BACK:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    .line 48
    new-instance v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    const-string v1, "MENU"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->MENU:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    .line 49
    new-instance v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    const-string v1, "IGNORED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->IGNORED:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    .line 50
    new-instance v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    const-string v1, "ENTER"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->ENTER:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    .line 39
    invoke-static {}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->$values()[Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->$VALUES:[Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;
    .locals 1

    .line 39
    const-class v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;
    .locals 1

    .line 39
    sget-object v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->$VALUES:[Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    return-object v0
.end method
