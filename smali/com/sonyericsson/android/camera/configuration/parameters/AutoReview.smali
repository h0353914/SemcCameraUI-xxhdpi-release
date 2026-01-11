.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;
.super Ljava/lang/Enum;
.source "AutoReview.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

.field public static final enum ALWAYS:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

.field public static final enum FRONT_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

.field public static final TAG:Ljava/lang/String; = "AutoReview"

.field private static final sParameterTextId:I = 0x7f0f033a


# instance fields
.field private final mDuration:I

.field private final mIconId:I

.field private final mTextId:I


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;
    .locals 3

    .line 18
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->ALWAYS:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->FRONT_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    filled-new-array {v0, v1, v2}, [Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 13

    .line 19
    new-instance v6, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    const v4, 0x7f0f0336

    const/16 v5, 0xbb8

    const-string v1, "ALWAYS"

    const/4 v2, 0x0

    const/4 v3, -0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->ALWAYS:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    .line 23
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    const v11, 0x7f0f033d

    const/16 v12, 0xbb8

    const-string v8, "FRONT_ONLY"

    const/4 v9, 0x1

    const/4 v10, -0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->FRONT_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    .line 27
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    const v5, 0x7f0f03be

    const/4 v6, 0x0

    const-string v2, "OFF"

    const/4 v3, 0x2

    const/4 v4, -0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    .line 18
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->$values()[Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->mIconId:I

    .line 56
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->mTextId:I

    .line 57
    iput p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->mDuration:I

    return-void
.end method

.method public static getDefaultValue(Z)Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;
    .locals 0

    if-eqz p0, :cond_0

    .line 120
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    return-object p0

    .line 123
    :cond_0
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    return-object p0
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/ActionMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;
    .locals 0

    .line 111
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/ActionMode;->mIsOneShot:Z

    if-eqz p0, :cond_0

    .line 112
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    filled-new-array {p0}, [Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    move-result-object p0

    return-object p0

    .line 115
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;
    .locals 1

    .line 18
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;
    .locals 1

    .line 18
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .locals 0

    .line 62
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;)V

    return-void
.end method

.method public getDuration()I
    .locals 0

    .line 132
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->mDuration:I

    return p0
.end method

.method public getIconId()I
    .locals 0

    .line 87
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->mIconId:I

    return p0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .locals 0

    .line 67
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->AUTO_REVIEW:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method public getKeyTextId()I
    .locals 0

    const p0, 0x7f0f033a

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextId()I
    .locals 0

    .line 97
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->mTextId:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 107
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
