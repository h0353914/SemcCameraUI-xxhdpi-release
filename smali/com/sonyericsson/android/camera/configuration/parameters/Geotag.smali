.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;
.super Ljava/lang/Enum;
.source "Geotag.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingBooleanValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingBooleanValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

.field public static final enum ON:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

.field public static final TAG:Ljava/lang/String; = "Geotag"

.field private static final sParameterTextId:I = 0x7f0f0247


# instance fields
.field private final mBooleanValue:Z

.field private final mIconId:I

.field private final mTextId:I


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;
    .locals 2

    .line 14
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    filled-new-array {v0, v1}, [Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 13

    .line 15
    new-instance v6, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    const v4, 0x7f0f03bf

    const/4 v5, 0x1

    const-string v1, "ON"

    const/4 v2, 0x0

    const/4 v3, -0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    .line 19
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    const v11, 0x7f0f03be

    const/4 v12, 0x0

    const-string v8, "OFF"

    const/4 v9, 0x1

    const/4 v10, -0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    .line 14
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->$values()[Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->mIconId:I

    .line 49
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->mTextId:I

    .line 50
    iput-boolean p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->mBooleanValue:Z

    return-void
.end method

.method public static getOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;
    .locals 2

    .line 117
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    filled-new-array {v0, v1}, [Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;
    .locals 1

    .line 14
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;
    .locals 1

    .line 14
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .locals 0

    .line 60
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;)V

    return-void
.end method

.method public getBooleanValue()Z
    .locals 0

    .line 108
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->mBooleanValue:Z

    return p0
.end method

.method public getIconId()I
    .locals 0

    .line 78
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->mIconId:I

    return p0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .locals 0

    .line 68
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->GEO_TAG:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method public getKeyTextId()I
    .locals 0

    const p0, 0x7f0f0247

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 122
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextId()I
    .locals 0

    .line 88
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->mTextId:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 98
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
