.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;
.super Ljava/lang/Enum;
.source "ShutterSound.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingBooleanValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingBooleanValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

.field public static final enum SOUND1:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

.field public static final TAG:Ljava/lang/String; = "ShutterSound"

.field private static final sParameterTextId:I = 0x7f0f00e4


# instance fields
.field private final mBooleanValue:Ljava/lang/Boolean;

.field private final mDirectoryName:Ljava/lang/String;

.field private final mIconId:I

.field private final mTextId:I


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;
    .locals 2

    .line 16
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->SOUND1:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    filled-new-array {v0, v1}, [Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 15

    .line 17
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    const/4 v0, 0x1

    .line 20
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string/jumbo v6, "sound1/"

    const-string v1, "SOUND1"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const v4, 0x7f0f03bf

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;-><init>(Ljava/lang/String;IIILjava/lang/Boolean;Ljava/lang/String;)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->SOUND1:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    .line 21
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    const/4 v1, 0x0

    .line 24
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const-string/jumbo v14, "sound0/"

    const-string v9, "OFF"

    const/4 v10, 0x1

    const/4 v11, -0x1

    const v12, 0x7f0f03be

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;-><init>(Ljava/lang/String;IIILjava/lang/Boolean;Ljava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    .line 16
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->$values()[Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/Boolean;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->mIconId:I

    .line 55
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->mTextId:I

    .line 56
    iput-object p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->mBooleanValue:Ljava/lang/Boolean;

    .line 57
    iput-object p6, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->mDirectoryName:Ljava/lang/String;

    return-void
.end method

.method public static getOptions(Z)[Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;
    .locals 7

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    move-result-object v1

    .line 121
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 122
    iget-object v6, v5, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->mBooleanValue:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 123
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    if-eqz p0, :cond_1

    goto :goto_1

    .line 128
    :cond_1
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 132
    :cond_2
    new-array p0, v3, [Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;
    .locals 1

    .line 16
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;
    .locals 1

    .line 16
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .locals 0

    .line 67
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;)V

    return-void
.end method

.method public getBooleanValue()Z
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->mBooleanValue:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getDirectoryName()Ljava/lang/String;
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->mDirectoryName:Ljava/lang/String;

    return-object p0
.end method

.method public getIconId()I
    .locals 0

    .line 85
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->mIconId:I

    return p0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .locals 0

    .line 75
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_SOUND:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method public getKeyTextId()I
    .locals 0

    const p0, 0x7f0f00e4

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 137
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextId()I
    .locals 0

    .line 95
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->mTextId:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 105
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
