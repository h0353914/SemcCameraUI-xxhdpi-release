.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;
.super Ljava/lang/Enum;
.source "WhiteBalance.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

.field public static final enum AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

.field public static final enum CLOUDY_DAYLIGHT:Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

.field public static final enum DAYLIGHT:Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

.field public static final enum FLUORESCENT:Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

.field public static final enum INCANDESCENT:Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

.field public static final TAG:Ljava/lang/String; = "WhiteBalance"

.field private static final sParameterTextId:I = 0x7f0f04b3


# instance fields
.field private final mIconId:I

.field private final mTabIconId:I

.field private final mTextId:I

.field private final mValue:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;
    .locals 5

    .line 24
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->INCANDESCENT:Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->FLUORESCENT:Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->DAYLIGHT:Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->CLOUDY_DAYLIGHT:Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 15

    .line 25
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    const-string v5, "incandescent"

    const v6, 0x7f0801ab

    const-string v1, "INCANDESCENT"

    const/4 v2, 0x0

    const v3, 0x7f0801a6

    const v4, 0x7f0f04b1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->INCANDESCENT:Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    .line 30
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    const-string v13, "fluorescent"

    const v14, 0x7f0801aa

    const-string v9, "FLUORESCENT"

    const/4 v10, 0x1

    const v11, 0x7f0801a5

    const v12, 0x7f0f04b0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->FLUORESCENT:Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    .line 35
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    const-string v6, "daylight"

    const v7, 0x7f0801a9

    const-string v2, "DAYLIGHT"

    const/4 v3, 0x2

    const v4, 0x7f0801a4

    const v5, 0x7f0f04af

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->DAYLIGHT:Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    .line 40
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    const-string v13, "cloudy-daylight"

    const v14, 0x7f0801a8

    const-string v9, "CLOUDY_DAYLIGHT"

    const/4 v10, 0x3

    const v11, 0x7f0801a3

    const v12, 0x7f0f04ae

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->CLOUDY_DAYLIGHT:Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    .line 45
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    const-string v6, "auto"

    const v7, 0x7f0801a7

    const-string v2, "AUTO"

    const/4 v3, 0x4

    const v4, 0x7f0801a0

    const v5, 0x7f0f04ad

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    .line 24
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->$values()[Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 77
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->mIconId:I

    .line 78
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->mTextId:I

    .line 79
    iput-object p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->mValue:Ljava/lang/String;

    .line 80
    iput p6, p0, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->mTabIconId:I

    return-void
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;
    .locals 9

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 140
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    .line 139
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object v1

    iget-object v1, v1, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->WHITE_BALANCE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    .line 140
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 141
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_4

    .line 142
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, v2, :cond_3

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p0, v2, :cond_0

    goto :goto_1

    .line 145
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    move-result-object p0

    array-length v2, p0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, p0, v4

    .line 146
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 147
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 148
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 143
    :cond_3
    :goto_1
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_4
    new-array p0, v3, [Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;
    .locals 1

    .line 24
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;
    .locals 1

    .line 24
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .locals 0

    .line 90
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;)V

    return-void
.end method

.method public getIconId()I
    .locals 0

    .line 108
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->mIconId:I

    return p0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .locals 0

    .line 98
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->WHITE_BALANCE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method public getKeyTextId()I
    .locals 0

    const p0, 0x7f0f04b3

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 160
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTabIconId()I
    .locals 0

    .line 169
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->mTabIconId:I

    return p0
.end method

.method public getTextId()I
    .locals 0

    .line 118
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->mTextId:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->mValue:Ljava/lang/String;

    return-object p0
.end method
