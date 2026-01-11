.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;
.super Ljava/lang/Enum;
.source "ShutterSpeed.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

.field public static final enum AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

.field public static final enum D1:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

.field public static final enum D1000:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

.field public static final enum D125:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

.field public static final enum D15:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

.field public static final enum D2:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

.field public static final enum D2000:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

.field public static final enum D250:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

.field public static final enum D30:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

.field public static final enum D4:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

.field public static final enum D4000:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

.field public static final enum D500:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

.field public static final enum D60:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

.field public static final enum D8:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

.field private static final INVALID_VALUE:I = -0x1

.field private static mIndexOfDefault:I


# instance fields
.field private final mAeMode:Ljava/lang/String;

.field private final mIconId:I

.field private final mTextId:I

.field private final mValue:I


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;
    .locals 14

    .line 18
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->D1:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->D2:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->D4:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->D8:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->D15:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->D30:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->D60:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->D125:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->D250:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->D500:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    sget-object v11, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->D1000:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->D2000:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->D4000:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    filled-new-array/range {v0 .. v13}, [Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 15

    .line 19
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    const-string v5, "auto"

    const/4 v6, -0x1

    const-string v1, "AUTO"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const v4, 0x7f0f0272

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    .line 24
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    const-string/jumbo v13, "shutter-prio"

    const/4 v14, 0x1

    const-string v9, "D1"

    const/4 v10, 0x1

    const/4 v11, -0x1

    const v12, 0x7f0f0271

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->D1:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    .line 29
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    const-string/jumbo v6, "shutter-prio"

    const/4 v7, 0x2

    const-string v2, "D2"

    const/4 v3, 0x2

    const/4 v4, -0x1

    const v5, 0x7f0f0270

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->D2:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    .line 34
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    const-string/jumbo v13, "shutter-prio"

    const/4 v14, 0x4

    const-string v9, "D4"

    const/4 v10, 0x3

    const v12, 0x7f0f027a

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->D4:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    .line 39
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    const-string/jumbo v6, "shutter-prio"

    const/16 v7, 0x8

    const-string v2, "D8"

    const/4 v3, 0x4

    const v5, 0x7f0f027d

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->D8:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    .line 44
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    const-string/jumbo v13, "shutter-prio"

    const/16 v14, 0xf

    const-string v9, "D15"

    const/4 v10, 0x5

    const v12, 0x7f0f0275

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->D15:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    .line 49
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    const-string/jumbo v6, "shutter-prio"

    const/16 v7, 0x1e

    const-string v2, "D30"

    const/4 v3, 0x6

    const v5, 0x7f0f0278

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->D30:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    .line 54
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    const-string/jumbo v13, "shutter-prio"

    const/16 v14, 0x3c

    const-string v9, "D60"

    const/4 v10, 0x7

    const v12, 0x7f0f027c

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->D60:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    .line 59
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    const-string/jumbo v6, "shutter-prio"

    const/16 v7, 0x7d

    const-string v2, "D125"

    const/16 v3, 0x8

    const v5, 0x7f0f0274

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->D125:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    .line 64
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    const-string/jumbo v13, "shutter-prio"

    const/16 v14, 0xfa

    const-string v9, "D250"

    const/16 v10, 0x9

    const v12, 0x7f0f0277

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->D250:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    .line 69
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    const-string/jumbo v6, "shutter-prio"

    const/16 v7, 0x1f4

    const-string v2, "D500"

    const/16 v3, 0xa

    const v5, 0x7f0f027b

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->D500:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    .line 74
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    const-string/jumbo v13, "shutter-prio"

    const/16 v14, 0x3e8

    const-string v9, "D1000"

    const/16 v10, 0xb

    const v12, 0x7f0f0273

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->D1000:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    .line 79
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    const-string/jumbo v6, "shutter-prio"

    const/16 v7, 0x7d0

    const-string v2, "D2000"

    const/16 v3, 0xc

    const v5, 0x7f0f0276

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->D2000:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    .line 84
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    const-string/jumbo v13, "shutter-prio"

    const/16 v14, 0xfa0

    const-string v9, "D4000"

    const/16 v10, 0xd

    const v12, 0x7f0f0279

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->D4000:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    .line 18
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->$values()[Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    const/4 v0, 0x1

    .line 107
    sput v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->mIndexOfDefault:I

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

    .line 116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 117
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->mIconId:I

    .line 118
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->mTextId:I

    .line 119
    iput-object p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->mAeMode:Ljava/lang/String;

    .line 120
    iput p6, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->mValue:I

    return-void
.end method

.method public static getIndexOfDefault()I
    .locals 1

    .line 173
    sget v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->mIndexOfDefault:I

    return v0
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;
    .locals 8

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 180
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object v1

    .line 183
    iget-object v2, v1, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->AE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 184
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 185
    new-array p0, v4, [Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    return-object p0

    .line 186
    :cond_0
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 188
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, v2, :cond_1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, v2, :cond_1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, v2, :cond_1

    .line 191
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result p0

    const/4 v2, 0x2

    if-ne p0, v2, :cond_2

    .line 193
    :cond_1
    new-array p0, v4, [Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    return-object p0

    .line 204
    :cond_2
    iget-object p0, v1, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->SHUTTER_SPEED_VALUES:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 205
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    move-result-object v1

    array-length v2, v1

    move v3, v4

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v5, v1, v3

    .line 207
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->getShutterSpeedInNanoMillis()J

    move-result-wide v6

    .line 206
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 208
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->getShutterSpeedValue()I

    move-result v5

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->D125:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->getShutterSpeedValue()I

    move-result v6

    if-gt v5, v6, :cond_3

    .line 213
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    sput v5, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->mIndexOfDefault:I

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 218
    :cond_4
    new-array p0, v4, [Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;
    .locals 1

    .line 18
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;
    .locals 1

    .line 18
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .locals 0

    .line 125
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;)V

    return-void
.end method

.method public getIconId()I
    .locals 0

    .line 130
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->mIconId:I

    return p0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .locals 0

    .line 135
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_SPEED:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method public getKeyTextId()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 145
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getShutterSpeedInNanoMillis()J
    .locals 2

    const v0, 0x3b9aca00

    .line 163
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->mValue:I

    div-int/2addr v0, p0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getShutterSpeedValue()I
    .locals 0

    .line 159
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->mValue:I

    return p0
.end method

.method public getTextId()I
    .locals 0

    .line 150
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->mTextId:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->mAeMode:Ljava/lang/String;

    return-object p0
.end method
