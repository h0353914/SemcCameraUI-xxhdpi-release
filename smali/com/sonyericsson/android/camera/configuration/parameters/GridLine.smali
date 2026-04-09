.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/GridLine;
.super Ljava/lang/Enum;
.source "GridLine.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/GridLine;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/GridLine;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/GridLine;

.field public static final enum ON:Lcom/sonyericsson/android/camera/configuration/parameters/GridLine;

.field public static final TAG:Ljava/lang/String; = "GridLine"

.field private static final sParameterTextId:I = 0x7f0f0189


# instance fields
.field private final mIconId:I

.field private final mTextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 15
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/GridLine;

    const-string v1, "ON"

    const/4 v2, -0x1

    const/4 v3, 0x0

    const v4, 0x7f0f0284

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/sonyericsson/android/camera/configuration/parameters/GridLine;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/GridLine;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/GridLine;

    .line 18
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/GridLine;

    const-string v1, "OFF"

    const/4 v4, 0x1

    const v5, 0x7f0f0283

    invoke-direct {v0, v1, v4, v2, v5}, Lcom/sonyericsson/android/camera/configuration/parameters/GridLine;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/GridLine;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/GridLine;

    const/4 v0, 0x2

    .line 14
    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/GridLine;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/GridLine;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/GridLine;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/GridLine;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/GridLine;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/GridLine;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/GridLine;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/GridLine;->mIconId:I

    .line 45
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/GridLine;->mTextId:I

    return-void
.end method

.method public static getDefaultValue()Lcom/sonyericsson/android/camera/configuration/parameters/GridLine;
    .locals 1

    .line 116
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/GridLine;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/GridLine;

    return-object v0
.end method

.method public static getOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/GridLine;
    .locals 1

    .line 102
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/GridLine;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/GridLine;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/GridLine;
    .locals 1

    .line 14
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/GridLine;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/GridLine;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/GridLine;
    .locals 1

    .line 14
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/GridLine;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/GridLine;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/GridLine;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/GridLine;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .locals 0

    .line 55
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/GridLine;)V

    return-void
.end method

.method public getIconId()I
    .locals 0

    .line 73
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/GridLine;->mIconId:I

    return p0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .locals 0

    .line 63
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->GRID_LINE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method public getKeyTextId()I
    .locals 0

    const p0, 0x7f0f0189

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 107
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextId()I
    .locals 0

    .line 83
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/GridLine;->mTextId:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 93
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/GridLine;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
