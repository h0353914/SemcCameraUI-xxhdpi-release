.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;
.super Ljava/lang/Enum;
.source "TouchCapture.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

.field public static final enum FRONT_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

.field public static final enum ON:Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

.field public static final TAG:Ljava/lang/String; = "TouchCapture"

.field private static final sParameterTextId:I = 0x7f0f02d2


# instance fields
.field private final mBooleanValue:Z

.field private final mIconId:I

.field private final mNotificationId:I

.field private final mTextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 16
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    const-string v1, "ON"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const v4, 0x7f0f0284

    const/4 v5, -0x1

    const/4 v6, 0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;-><init>(Ljava/lang/String;IIIIZ)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    .line 21
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    const-string v9, "FRONT_ONLY"

    const/4 v10, 0x1

    const/4 v11, -0x1

    const v12, 0x7f0f0228

    const/4 v13, -0x1

    const/4 v14, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;-><init>(Ljava/lang/String;IIIIZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->FRONT_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    .line 26
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    const-string v2, "OFF"

    const/4 v3, 0x2

    const/4 v4, -0x1

    const v5, 0x7f0f0283

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;-><init>(Ljava/lang/String;IIIIZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    const/4 v0, 0x3

    .line 14
    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->FRONT_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIZ)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 60
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->mIconId:I

    .line 61
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->mTextId:I

    .line 62
    iput p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->mNotificationId:I

    .line 63
    iput-boolean p6, p0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->mBooleanValue:Z

    return-void
.end method

.method public static getOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;
    .locals 1

    .line 120
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;
    .locals 1

    .line 14
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;
    .locals 1

    .line 14
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .locals 0

    .line 73
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;)V

    return-void
.end method

.method public getIconId()I
    .locals 0

    .line 91
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->mIconId:I

    return p0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .locals 0

    .line 81
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method public getKeyTextId()I
    .locals 0

    const p0, 0x7f0f02d2

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 125
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextId()I
    .locals 0

    .line 101
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->mTextId:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 111
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
