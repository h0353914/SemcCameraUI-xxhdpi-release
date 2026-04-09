.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;
.super Ljava/lang/Enum;
.source "VolumeKey.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

.field public static final enum HW_CAMERA_KEY:Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

.field public static final TAG:Ljava/lang/String; = "VolumeKey"

.field public static final enum VOLUME:Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

.field public static final enum ZOOM:Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

.field private static final sParameterTextId:I = 0x7f0f030c


# instance fields
.field private final mIconId:I

.field private final mTextId:I

.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 17
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

    const-string v1, "ZOOM"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const v4, 0x7f0f030e

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;->ZOOM:Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

    .line 20
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

    const-string v1, "VOLUME"

    const/4 v4, 0x1

    const v5, 0x7f0f030d

    invoke-direct {v0, v1, v4, v3, v5}, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;->VOLUME:Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

    .line 23
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

    const-string v1, "HW_CAMERA_KEY"

    const/4 v5, 0x2

    const v6, 0x7f0f030b

    invoke-direct {v0, v1, v5, v3, v6}, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;->HW_CAMERA_KEY:Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

    const/4 v0, 0x3

    .line 16
    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;->ZOOM:Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;->VOLUME:Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;->HW_CAMERA_KEY:Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;->mIconId:I

    .line 52
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;->mTextId:I

    return-void
.end method

.method public static getDefault()Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;
    .locals 1

    .line 56
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;->ZOOM:Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

    return-object v0
.end method

.method public static getOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;
    .locals 2

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;->ZOOM:Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;->VOLUME:Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;->HW_CAMERA_KEY:Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 69
    new-array v1, v1, [Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;
    .locals 1

    .line 16
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;
    .locals 1

    .line 16
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .locals 0

    .line 79
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;)V

    return-void
.end method

.method public getIconId()I
    .locals 0

    .line 117
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;->mIconId:I

    return p0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .locals 0

    .line 87
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VOLUME_KEY:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method public getKeyTextId()I
    .locals 0

    const p0, 0x7f0f030c

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 97
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextId()I
    .locals 0

    .line 127
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;->mTextId:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;->mValue:Ljava/lang/String;

    return-object p0
.end method
