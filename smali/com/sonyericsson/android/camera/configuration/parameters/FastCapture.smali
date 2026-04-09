.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;
.super Ljava/lang/Enum;
.source "FastCapture.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

.field public static final enum LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

.field public static final enum LAUNCH_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

.field public static final TAG:Ljava/lang/String; = "FastCapture"

.field private static final sParameterTextId:I = 0x7f0f0164


# instance fields
.field private final mBooleanValue:Z

.field private final mIconId:I

.field private final mTextId:I

.field private final mType:I

.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 22
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    const-string v1, "LAUNCH_AND_CAPTURE"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const v4, 0x7f0f015c

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;-><init>(Ljava/lang/String;IIIIZ)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    .line 27
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    const-string v9, "LAUNCH_ONLY"

    const/4 v10, 0x1

    const/4 v11, -0x1

    const v12, 0x7f0f015e

    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;-><init>(Ljava/lang/String;IIIIZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    .line 32
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    const-string v2, "OFF"

    const/4 v3, 0x2

    const/4 v4, -0x1

    const v5, 0x7f0f0283

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;-><init>(Ljava/lang/String;IIIIZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    const/4 v0, 0x3

    .line 21
    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIZ)V"
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 73
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->mIconId:I

    .line 74
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->mTextId:I

    .line 75
    iput p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->mType:I

    .line 76
    iput-boolean p6, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->mBooleanValue:Z

    return-void
.end method

.method public static getDefault()Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;
    .locals 1

    .line 173
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    return-object v0
.end method

.method public static getOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;
    .locals 2

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 157
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 160
    new-array v1, v1, [Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;
    .locals 1

    .line 21
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;
    .locals 1

    .line 21
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .locals 0

    .line 86
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;)V

    return-void
.end method

.method public getBooleanValue()Z
    .locals 0

    .line 142
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->mBooleanValue:Z

    return p0
.end method

.method public getCameraType()I
    .locals 0

    .line 123
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->mType:I

    return p0
.end method

.method public getIconId()I
    .locals 0

    .line 104
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->mIconId:I

    return p0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .locals 0

    .line 94
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FAST_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method public getKeyTextId()I
    .locals 0

    const p0, 0x7f0f0164

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 147
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getParameterkeyTitleTextId()I
    .locals 0

    const p0, 0x7f0f0163

    return p0
.end method

.method public getTextId()I
    .locals 0

    .line 114
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->mTextId:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->mValue:Ljava/lang/String;

    return-object p0
.end method
