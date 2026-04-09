.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/Flash;
.super Ljava/lang/Enum;
.source "Flash.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/Flash;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

.field public static final enum AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

.field public static final enum LED_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

.field public static final enum LED_ON:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

.field public static final enum ON:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

.field public static final enum PHOTO_LIGHT_ON_AS_FLASH:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

.field public static final enum RED_EYE:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

.field public static final TAG:Ljava/lang/String; = "Flash"


# instance fields
.field private final mIconId:I

.field private final mIsSceneDependent:Z

.field private final mTextId:I

.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 22
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    const-string v1, "AUTO"

    const-string v5, "auto"

    const/4 v2, 0x0

    const v3, 0x7f080147

    const v4, 0x7f0f0282

    const/4 v6, 0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;-><init>(Ljava/lang/String;IIILjava/lang/String;Z)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    .line 26
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    const-string v9, "ON"

    const-string v13, "on"

    const/4 v10, 0x1

    const v11, 0x7f080148

    const v12, 0x7f0f016c

    const/4 v14, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;-><init>(Ljava/lang/String;IIILjava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    .line 30
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    const-string v2, "RED_EYE"

    const-string v6, "red-eye"

    const/4 v3, 0x2

    const v4, 0x7f08014a

    const v5, 0x7f0f016f

    const/4 v7, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;-><init>(Ljava/lang/String;IIILjava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->RED_EYE:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    .line 34
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    const-string v9, "OFF"

    const-string v13, "off"

    const/4 v10, 0x3

    const v11, 0x7f080149

    const v12, 0x7f0f0283

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;-><init>(Ljava/lang/String;IIILjava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    .line 38
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    const-string v2, "LED_ON"

    const-string v6, "torch"

    const/4 v3, 0x4

    const v4, 0x7f08014b

    const v5, 0x7f0f0171

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;-><init>(Ljava/lang/String;IIILjava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->LED_ON:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    .line 42
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    const-string v9, "LED_OFF"

    const-string v13, "off"

    const/4 v10, 0x5

    const v11, 0x7f08014c

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;-><init>(Ljava/lang/String;IIILjava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->LED_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    .line 48
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    const-string v2, "PHOTO_LIGHT_ON_AS_FLASH"

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    .line 49
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->getIconId()I

    move-result v4

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    .line 50
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->getTextId()I

    move-result v5

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    .line 51
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->getValue()Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x6

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;-><init>(Ljava/lang/String;IIILjava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->PHOTO_LIGHT_ON_AS_FLASH:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    const/4 v0, 0x7

    .line 21
    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->RED_EYE:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->LED_ON:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->LED_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->PHOTO_LIGHT_ON_AS_FLASH:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 78
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->mIconId:I

    .line 79
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->mTextId:I

    .line 80
    iput-object p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->mValue:Ljava/lang/String;

    .line 81
    iput-boolean p6, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->mIsSceneDependent:Z

    return-void
.end method

.method public static getDefaultValue()Lcom/sonyericsson/android/camera/configuration/parameters/Flash;
    .locals 1

    .line 188
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->getInstance()Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->getDefaultFlash()Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    move-result-object v0

    return-object v0
.end method

.method public static getFlashFromParameterString(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/Flash;
    .locals 5

    .line 177
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 178
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->getValue()Ljava/lang/String;

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

.method public static getOptions(Lcom/sonyericsson/android/camera/ActionMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/Flash;
    .locals 9

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 143
    iget v1, p0, Lcom/sonyericsson/android/camera/ActionMode;->mType:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 144
    iget-object v1, p0, Lcom/sonyericsson/android/camera/ActionMode;->mCameraId:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object v1

    iget-object v1, v1, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->FLASH:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    .line 145
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 146
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 147
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->getInstance()Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    move-result-object v3

    .line 148
    invoke-virtual {v3, p0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->getFlashOptions(Lcom/sonyericsson/android/camera/ActionMode;Ljava/util/List;)[Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    move-result-object p0

    .line 149
    array-length v3, p0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, p0, v4

    .line 150
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 151
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 152
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 159
    :cond_2
    new-array p0, v2, [Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    return-object p0
.end method

.method public static getParameterKeyTitleTextId()I
    .locals 1

    .line 192
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->getInstance()Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->getParameterKeyTitleTextId()I

    move-result v0

    return v0
.end method

.method public static isSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z
    .locals 0

    .line 163
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFlashModeSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/Flash;
    .locals 1

    .line 21
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/Flash;
    .locals 1

    .line 21
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .locals 0

    .line 91
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/Flash;)V

    return-void
.end method

.method public getIconId()I
    .locals 0

    .line 109
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->mIconId:I

    return p0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .locals 0

    .line 99
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method public getKeyTextId()I
    .locals 0

    .line 173
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->getInstance()Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->getParameterKeyTextId()I

    move-result p0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 168
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextId()I
    .locals 0

    .line 119
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->mTextId:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->mValue:Ljava/lang/String;

    return-object p0
.end method

.method public isSceneDependent()Z
    .locals 0

    .line 133
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->mIsSceneDependent:Z

    return p0
.end method
