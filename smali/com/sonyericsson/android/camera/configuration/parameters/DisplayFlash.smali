.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;
.super Ljava/lang/Enum;
.source "DisplayFlash.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

.field public static final enum DISPLAY_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

.field public static final enum DISPLAY_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

.field public static final enum DISPLAY_ON:Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

.field public static final TAG:Ljava/lang/String; = "DisplayFlash"


# instance fields
.field private final mIconId:I

.field private final mTextId:I

.field private final mValue:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;
    .locals 3

    .line 21
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->DISPLAY_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->DISPLAY_ON:Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->DISPLAY_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    filled-new-array {v0, v1, v2}, [Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 13

    .line 22
    new-instance v6, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    const v4, 0x7f0f03bd

    const-string v5, "display-auto"

    const-string v1, "DISPLAY_AUTO"

    const/4 v2, 0x0

    const v3, 0x7f080172

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->DISPLAY_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    .line 26
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    const v11, 0x7f0f03bf

    const-string v12, "display-on"

    const-string v8, "DISPLAY_ON"

    const/4 v9, 0x1

    const v10, 0x7f080174

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->DISPLAY_ON:Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    .line 30
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    const v5, 0x7f0f03be

    const-string v6, "off"

    const-string v2, "DISPLAY_OFF"

    const/4 v3, 0x2

    const v4, 0x7f080177

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->DISPLAY_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    .line 21
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->$values()[Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

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

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->mIconId:I

    .line 58
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->mTextId:I

    .line 59
    iput-object p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultValue()Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;
    .locals 1

    .line 166
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->getInstance()Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->getDefaultDisplayFlash()Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayFlashFromParameterString(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;
    .locals 5

    .line 155
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 156
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/ActionMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;
    .locals 9

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    iget v1, p0, Lcom/sonyericsson/android/camera/ActionMode;->mType:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    .line 120
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->DISPLAY_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->DISPLAY_ON:Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v1, p0, Lcom/sonyericsson/android/camera/ActionMode;->mCameraId:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object v1

    iget-object v1, v1, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->FLASH:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    .line 123
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 124
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 125
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->getInstance()Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    move-result-object v2

    .line 126
    invoke-virtual {v2, p0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->getDisplayFlashOptions(Lcom/sonyericsson/android/camera/ActionMode;Ljava/util/List;)[Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    move-result-object p0

    .line 127
    array-length v2, p0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, p0, v4

    .line 128
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 129
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 130
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 137
    :cond_2
    new-array p0, v3, [Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    return-object p0
.end method

.method public static getParameterKeyTitleTextId()I
    .locals 1

    .line 170
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->getInstance()Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->getParameterKeyTitleTextId()I

    move-result v0

    return v0
.end method

.method public static isSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z
    .locals 0

    .line 141
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isDisplayFlashModeSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;
    .locals 1

    .line 21
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;
    .locals 1

    .line 21
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .locals 0

    .line 69
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;)V

    return-void
.end method

.method public getIconId()I
    .locals 0

    .line 87
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->mIconId:I

    return p0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .locals 0

    .line 77
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DISPLAY_FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method public getKeyTextId()I
    .locals 0

    .line 151
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->getInstance()Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->getParameterKeyTextId()I

    move-result p0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 146
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextId()I
    .locals 0

    .line 97
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->mTextId:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/DisplayFlash;->mValue:Ljava/lang/String;

    return-object p0
.end method
