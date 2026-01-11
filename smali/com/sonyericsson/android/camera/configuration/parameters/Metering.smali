.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/Metering;
.super Ljava/lang/Enum;
.source "Metering.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/Metering;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

.field public static final enum AVERAGE:Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

.field public static final enum CENTER:Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

.field public static final enum FACE:Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

.field public static final enum MULTI:Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

.field public static final enum SPOT:Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

.field public static final TAG:Ljava/lang/String; = "Metering"

.field public static final enum TOUCH:Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

.field private static final sParameterTextId:I = 0x7f0f0322


# instance fields
.field private final mIconId:I

.field private final mTextId:I

.field private final mValue:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/configuration/parameters/Metering;
    .locals 6

    .line 24
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->FACE:Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->MULTI:Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->CENTER:Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->SPOT:Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->AVERAGE:Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->TOUCH:Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    filled-new-array/range {v0 .. v5}, [Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 13

    .line 25
    new-instance v6, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    const v4, 0x7f0f031d

    const-string v5, "face"

    const-string v1, "FACE"

    const/4 v2, 0x0

    const/4 v3, -0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->FACE:Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    .line 29
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    const v11, 0x7f0f02cf

    const-string v12, "multi"

    const-string v8, "MULTI"

    const/4 v9, 0x1

    const/4 v10, -0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->MULTI:Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    .line 33
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    const v5, 0x7f0f031c

    const-string v6, "center-weighted"

    const-string v2, "CENTER"

    const/4 v3, 0x2

    const/4 v4, -0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->CENTER:Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    .line 37
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    const v11, 0x7f0f031f

    const-string/jumbo v12, "spot"

    const-string v8, "SPOT"

    const/4 v9, 0x3

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->SPOT:Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    .line 41
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    const v5, 0x7f0f031b

    const-string v6, "frame-average"

    const-string v2, "AVERAGE"

    const/4 v3, 0x4

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->AVERAGE:Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    .line 46
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    const v11, 0x7f0f0321

    const-string v12, "face"

    const-string v8, "TOUCH"

    const/4 v9, 0x5

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->TOUCH:Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    .line 24
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->$values()[Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 75
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->mIconId:I

    .line 76
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->mTextId:I

    .line 77
    iput-object p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultValue(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/Metering;
    .locals 2

    .line 181
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    .line 182
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->METERING:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 184
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->FACE:Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    iget-object v1, v0, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->mValue:Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    .line 189
    :cond_0
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->CENTER:Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    return-object p0
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/Metering;
    .locals 7

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 138
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    .line 137
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object v1

    iget-object v1, v1, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->METERING:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    .line 138
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 139
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    .line 140
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, v2, :cond_2

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, v2, :cond_2

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, v2, :cond_2

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, v2, :cond_2

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, v2, :cond_2

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p0, v2, :cond_0

    goto :goto_1

    .line 148
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    move-result-object p0

    array-length v2, p0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, p0, v4

    .line 149
    invoke-static {v5, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->isParameterSupported(Lcom/sonyericsson/android/camera/configuration/parameters/Metering;Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 150
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 146
    :cond_2
    :goto_1
    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->getDefaultValue(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_3
    new-array p0, v3, [Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    return-object p0
.end method

.method private static isParameterSupported(Lcom/sonyericsson/android/camera/configuration/parameters/Metering;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/configuration/parameters/Metering;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 159
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->TOUCH:Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    return v1

    .line 162
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 163
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/Metering;
    .locals 1

    .line 24
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/Metering;
    .locals 1

    .line 24
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .locals 0

    .line 87
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/Metering;)V

    return-void
.end method

.method public getIconId()I
    .locals 0

    .line 105
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->mIconId:I

    return p0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .locals 0

    .line 95
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->METERING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method public getKeyTextId()I
    .locals 0

    const p0, 0x7f0f0322

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 172
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextId()I
    .locals 0

    .line 115
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->mTextId:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->mValue:Ljava/lang/String;

    return-object p0
.end method
