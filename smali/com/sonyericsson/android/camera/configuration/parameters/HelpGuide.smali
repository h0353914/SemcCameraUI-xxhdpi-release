.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/HelpGuide;
.super Ljava/lang/Enum;
.source "HelpGuide.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/HelpGuide;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/HelpGuide;

.field public static final enum DUMMY_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/HelpGuide;

.field public static final enum DUMMY_ON:Lcom/sonyericsson/android/camera/configuration/parameters/HelpGuide;

.field public static final TAG:Ljava/lang/String; = "HelpGuide"

.field private static final sParameterTextId:I = -0x1


# instance fields
.field private final mIconId:I

.field private final mTextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 15
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/HelpGuide;

    const-string v1, "DUMMY_ON"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/HelpGuide;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/HelpGuide;->DUMMY_ON:Lcom/sonyericsson/android/camera/configuration/parameters/HelpGuide;

    .line 18
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/HelpGuide;

    const-string v1, "DUMMY_OFF"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v3, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/HelpGuide;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/HelpGuide;->DUMMY_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/HelpGuide;

    const/4 v0, 0x2

    .line 14
    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/HelpGuide;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/HelpGuide;->DUMMY_ON:Lcom/sonyericsson/android/camera/configuration/parameters/HelpGuide;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/HelpGuide;->DUMMY_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/HelpGuide;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/HelpGuide;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/HelpGuide;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/HelpGuide;->mIconId:I

    .line 43
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/HelpGuide;->mTextId:I

    return-void
.end method

.method public static getDefaultValue()Lcom/sonyericsson/android/camera/configuration/parameters/HelpGuide;
    .locals 1

    .line 114
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/HelpGuide;->DUMMY_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/HelpGuide;

    return-object v0
.end method

.method public static getOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/HelpGuide;
    .locals 1

    .line 100
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/HelpGuide;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/HelpGuide;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/HelpGuide;
    .locals 1

    .line 14
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/HelpGuide;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/HelpGuide;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/HelpGuide;
    .locals 1

    .line 14
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/HelpGuide;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/HelpGuide;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/HelpGuide;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/HelpGuide;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .locals 0

    .line 53
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/HelpGuide;)V

    return-void
.end method

.method public getIconId()I
    .locals 0

    .line 71
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/HelpGuide;->mIconId:I

    return p0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .locals 0

    .line 61
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->HELP_GUIDE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method public getKeyTextId()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextId()I
    .locals 0

    .line 81
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/HelpGuide;->mTextId:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 91
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/HelpGuide;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
