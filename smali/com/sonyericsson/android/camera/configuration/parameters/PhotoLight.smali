.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;
.super Ljava/lang/Enum;
.source "PhotoLight.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

.field public static final enum ON:Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

.field public static final TAG:Ljava/lang/String; = "PhotoLight"

.field private static final sParameterTextId:I = 0x7f0f0232


# instance fields
.field private final mBooleanValue:Z

.field private final mIconId:I

.field private final mTextId:I

.field private final mValue:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;
    .locals 2

    .line 19
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    filled-new-array {v0, v1}, [Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 15

    .line 20
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    const-string/jumbo v5, "torch"

    const/4 v6, 0x1

    const-string v1, "ON"

    const/4 v2, 0x0

    const v3, 0x7f08017a

    const v4, 0x7f0f03bf

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;-><init>(Ljava/lang/String;IIILjava/lang/String;Z)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    .line 24
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    const-string v13, "off"

    const/4 v14, 0x0

    const-string v9, "OFF"

    const/4 v10, 0x1

    const v11, 0x7f08017b

    const v12, 0x7f0f03be

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;-><init>(Ljava/lang/String;IIILjava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    .line 19
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->$values()[Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

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

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 56
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->mIconId:I

    .line 57
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->mTextId:I

    .line 58
    iput-object p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->mValue:Ljava/lang/String;

    .line 59
    iput-boolean p6, p0, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->mBooleanValue:Z

    return-void
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/ActionMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;
    .locals 9

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    iget-object v1, p0, Lcom/sonyericsson/android/camera/ActionMode;->mCameraId:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 120
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object v1

    iget-object v1, v1, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->FLASH:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 121
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 122
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->getInstance()Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    move-result-object v2

    .line 123
    invoke-virtual {v2, p0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->getPhotoLightOptions(Lcom/sonyericsson/android/camera/ActionMode;Ljava/util/List;)[Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    move-result-object p0

    .line 124
    array-length v2, p0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, p0, v4

    .line 125
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 126
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 127
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 133
    :cond_2
    new-array p0, v3, [Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    return-object p0
.end method

.method public static getPhotoLightFromParameterString(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;
    .locals 5

    .line 151
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 152
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->getValue()Ljava/lang/String;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;
    .locals 1

    .line 19
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;
    .locals 1

    .line 19
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .locals 0

    .line 69
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;)V

    return-void
.end method

.method public getBooleanValue()Z
    .locals 0

    .line 142
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->mBooleanValue:Z

    return p0
.end method

.method public getIconId()I
    .locals 0

    .line 87
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->mIconId:I

    return p0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .locals 0

    .line 77
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PHOTO_LIGHT:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method public getKeyTextId()I
    .locals 0

    const p0, 0x7f0f0232

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 138
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextId()I
    .locals 0

    .line 97
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->mTextId:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->mValue:Ljava/lang/String;

    return-object p0
.end method
