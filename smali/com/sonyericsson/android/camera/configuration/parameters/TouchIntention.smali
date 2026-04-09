.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;
.super Ljava/lang/Enum;
.source "TouchIntention.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;

.field public static final enum FOCUS_AND_EXPOSURE:Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;

.field public static final enum FOCUS_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;

.field public static final enum OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;

.field public static final TAG:Ljava/lang/String; = "TouchIntention"

.field private static final sParameterTextId:I = 0x7f0f02d6


# instance fields
.field private final mIconId:I

.field private final mTextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 25
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;

    const-string v1, "OBJECT_TRACKING"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const v4, 0x7f0f0177

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;

    .line 28
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;

    const-string v1, "FOCUS_ONLY"

    const/4 v4, 0x1

    const v5, 0x7f0f02d5

    invoke-direct {v0, v1, v4, v3, v5}, Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;->FOCUS_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;

    .line 31
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;

    const-string v1, "FOCUS_AND_EXPOSURE"

    const/4 v5, 0x2

    const v6, 0x7f0f02d4

    invoke-direct {v0, v1, v5, v3, v6}, Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;->FOCUS_AND_EXPOSURE:Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;

    const/4 v0, 0x3

    .line 24
    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;->FOCUS_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;->FOCUS_AND_EXPOSURE:Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 56
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;->mIconId:I

    .line 57
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;->mTextId:I

    return-void
.end method

.method public static getDefaultValue(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;
    .locals 1

    .line 145
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    .line 146
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->METERING:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const-string v0, "user"

    .line 147
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 148
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;->FOCUS_AND_EXPOSURE:Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;

    return-object p0

    .line 150
    :cond_0
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;->FOCUS_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;

    return-object p0
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;
    .locals 5

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const/4 v2, 0x0

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, v1, :cond_0

    .line 117
    new-array p0, v2, [Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;

    return-object p0

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object v1

    .line 121
    iget-object v3, v1, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->METERING:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const-string v4, "user"

    .line 123
    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 124
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p0, v3, :cond_1

    iget-object p0, v1, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 125
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_1
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;->FOCUS_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;->FOCUS_AND_EXPOSURE:Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_2
    new-array p0, v2, [Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;
    .locals 1

    .line 24
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;
    .locals 1

    .line 24
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .locals 0

    .line 67
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;)V

    return-void
.end method

.method public getIconId()I
    .locals 0

    .line 85
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;->mIconId:I

    return p0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .locals 0

    .line 75
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->TOUCH_INTENTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method public getKeyTextId()I
    .locals 0

    const p0, 0x7f0f02d6

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 136
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextId()I
    .locals 0

    .line 95
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;->mTextId:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 105
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
