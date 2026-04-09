.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;
.super Ljava/lang/Enum;
.source "AspectRatio.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

.field public static final enum FOUR_TO_THREE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

.field public static final enum ONE_TO_ONE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

.field public static final enum SIXTEEN_TO_NINE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

.field public static final TAG:Ljava/lang/String; = "AspectRatio"

.field private static final sParameterTextId:I = 0x7f0f00a9


# instance fields
.field private final mIconId:I

.field private final mTextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 16
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    const-string v1, "SIXTEEN_TO_NINE"

    const/4 v2, 0x0

    const v3, 0x7f0800e1

    const v4, 0x7f0f00a6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->SIXTEEN_TO_NINE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    .line 19
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    const-string v1, "FOUR_TO_THREE"

    const/4 v3, 0x1

    const v4, 0x7f0800e3

    const v5, 0x7f0f00a8

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->FOUR_TO_THREE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    .line 22
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    const-string v1, "ONE_TO_ONE"

    const/4 v4, 0x2

    const v5, 0x7f0800e2

    const v6, 0x7f0f00a7

    invoke-direct {v0, v1, v4, v5, v6}, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->ONE_TO_ONE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    const/4 v0, 0x3

    .line 15
    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->SIXTEEN_TO_NINE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->FOUR_TO_THREE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->ONE_TO_ONE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->mIconId:I

    .line 47
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->mTextId:I

    return-void
.end method

.method public static getAspectRatio(II)Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, p0, 0x9

    mul-int/lit8 v2, p1, 0x10

    if-ne v1, v2, :cond_1

    .line 178
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->SIXTEEN_TO_NINE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    return-object p0

    :cond_1
    mul-int/lit8 v1, p0, 0x3

    mul-int/lit8 v2, p1, 0x4

    if-ne v1, v2, :cond_2

    .line 180
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->FOUR_TO_THREE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    return-object p0

    :cond_2
    if-ne p0, p1, :cond_3

    .line 182
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->ONE_TO_ONE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    return-object p0

    :cond_3
    return-object v0

    :cond_4
    :goto_0
    return-object v0
.end method

.method public static getDefaultValue(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;
    .locals 1

    .line 162
    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getDefaultValue(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object p0

    .line 163
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->getAspectRatio(II)Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    move-result-object p0

    return-object p0
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;
    .locals 12

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_6

    .line 112
    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object p0

    .line 113
    array-length v1, p0

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v7, p0, v3

    .line 114
    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 115
    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 116
    invoke-static {v8, v7}, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->getAspectRatio(II)Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    move-result-object v9

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->SIXTEEN_TO_NINE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    const/4 v11, 0x1

    if-ne v9, v10, :cond_0

    move v4, v11

    goto :goto_1

    .line 118
    :cond_0
    invoke-static {v8, v7}, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->getAspectRatio(II)Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    move-result-object v9

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->FOUR_TO_THREE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    if-ne v9, v10, :cond_1

    move v5, v11

    goto :goto_1

    .line 120
    :cond_1
    invoke-static {v8, v7}, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->getAspectRatio(II)Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    move-result-object v7

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->ONE_TO_ONE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    if-ne v7, v8, :cond_2

    move v6, v11

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    .line 126
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->SIXTEEN_TO_NINE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz v5, :cond_5

    .line 129
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->FOUR_TO_THREE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz v6, :cond_6

    .line 132
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->ONE_TO_ONE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_6
    new-array p0, v2, [Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;
    .locals 1

    .line 15
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;
    .locals 1

    .line 15
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .locals 0

    .line 57
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;)V

    return-void
.end method

.method public getIconId()I
    .locals 0

    .line 75
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->mIconId:I

    return p0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .locals 0

    .line 65
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ASPECT_RATIO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method public getKeyTextId()I
    .locals 0

    const p0, 0x7f0f00a9

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 144
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextId()I
    .locals 0

    .line 85
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->mTextId:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 95
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
