.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;
.super Ljava/lang/Enum;
.source "ObjectTracking.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;

.field public static final enum ON:Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;

.field public static final TAG:Ljava/lang/String; = "ObjectTracking"

.field private static final sParameterTextId:I = 0x7f0f0177


# instance fields
.field private final mFocusMode:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

.field private final mIconId:I

.field private final mTextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 23
    new-instance v6, Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;

    const-string v1, "ON"

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const v4, 0x7f0f0284

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;-><init>(Ljava/lang/String;IIILcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V

    sput-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;

    .line 27
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;

    const-string v8, "OFF"

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->FACE_DETECTION:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    const/4 v9, 0x1

    const/4 v10, -0x1

    const v11, 0x7f0f0283

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;-><init>(Ljava/lang/String;IIILcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;

    const/4 v0, 0x2

    .line 22
    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;",
            ")V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;->mIconId:I

    .line 58
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;->mTextId:I

    .line 59
    iput-object p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;->mFocusMode:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    return-void
.end method

.method public static getDefault(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;
    .locals 1

    .line 142
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object v0

    .line 143
    iget-object v0, v0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;

    return-object p0

    .line 147
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p0, v0, :cond_1

    .line 148
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;

    return-object p0

    .line 151
    :cond_1
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;

    return-object p0
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;
    .locals 1

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    .line 90
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 91
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_0
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    .line 94
    new-array p0, p0, [Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;
    .locals 1

    .line 22
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;
    .locals 1

    .line 22
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .locals 0

    .line 69
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;)V

    return-void
.end method

.method public getFocusMode()Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;->mFocusMode:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    return-object p0
.end method

.method public getIconId()I
    .locals 0

    .line 118
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;->mIconId:I

    return p0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .locals 0

    .line 77
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method public getKeyTextId()I
    .locals 0

    const p0, 0x7f0f0177

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextId()I
    .locals 0

    .line 128
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;->mTextId:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 138
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
