.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;
.super Ljava/lang/Enum;
.source "SideSense.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingBooleanValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingBooleanValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;

.field public static final enum ON:Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;

.field public static final TAG:Ljava/lang/String; = "SideSense"

.field private static final sParameterTextId:I = 0x7f0f041c


# instance fields
.field private final mIconId:I

.field private final mTextId:I


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;
    .locals 2

    .line 14
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;

    filled-new-array {v0, v1}, [Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 15
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;

    const v1, 0x7f0f03bf

    const-string v2, "ON"

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;

    .line 18
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;

    const/4 v1, 0x1

    const v2, 0x7f0f03be

    const-string v3, "OFF"

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;

    .line 14
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;->$values()[Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;->mIconId:I

    .line 49
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;->mTextId:I

    return-void
.end method

.method public static getDefaultValue()Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;
    .locals 1

    .line 125
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;

    return-object v0
.end method

.method public static getOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;
    .locals 1

    .line 111
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;
    .locals 1

    .line 14
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;
    .locals 1

    .line 14
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .locals 0

    .line 59
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;)V

    return-void
.end method

.method public getBooleanValue()Z
    .locals 1

    .line 102
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getIconId()I
    .locals 0

    .line 77
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;->mIconId:I

    return p0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .locals 0

    .line 67
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method public getKeyTextId()I
    .locals 0

    const p0, 0x7f0f041c

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 116
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextId()I
    .locals 0

    .line 87
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;->mTextId:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 97
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
