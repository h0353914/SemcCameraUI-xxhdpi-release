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

.field public static final enum EIGHTEEN_TO_NINE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

.field public static final enum FOUR_TO_THREE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

.field public static final enum ONE_TO_ONE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

.field public static final enum SIXTEEN_TO_NINE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

.field public static final TAG:Ljava/lang/String; = "AspectRatio"

.field public static final enum TWENTYONE_TO_NINE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

.field private static final sParameterTextId:I = 0x7f0f00ba


# instance fields
.field private final mIconId:I

.field private final mTextId:I


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;
    .locals 5

    .line 18
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->TWENTYONE_TO_NINE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->EIGHTEEN_TO_NINE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->SIXTEEN_TO_NINE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->FOUR_TO_THREE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->ONE_TO_ONE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 19
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    const v1, 0x7f0800ee

    const v2, 0x7f0f00b8

    const-string v3, "TWENTYONE_TO_NINE"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->TWENTYONE_TO_NINE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    .line 22
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    const v1, 0x7f0800eb

    const v2, 0x7f0f00b6

    const-string v3, "EIGHTEEN_TO_NINE"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->EIGHTEEN_TO_NINE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    .line 25
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    const v1, 0x7f0800ea

    const v2, 0x7f0f00b5

    const-string v3, "SIXTEEN_TO_NINE"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->SIXTEEN_TO_NINE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    .line 28
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    const v1, 0x7f0800ef

    const v2, 0x7f0f00b9

    const-string v3, "FOUR_TO_THREE"

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->FOUR_TO_THREE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    .line 31
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    const v1, 0x7f0800ed

    const v2, 0x7f0f00b7

    const-string v3, "ONE_TO_ONE"

    const/4 v4, 0x4

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->ONE_TO_ONE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    .line 18
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->$values()[Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    move-result-object v0

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

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->mIconId:I

    .line 55
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->mTextId:I

    return-void
.end method

.method public static getAspectRatio(II)Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_0

    .line 208
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    const/16 v2, 0x15

    const/4 v3, 0x0

    const/16 v4, 0x9

    invoke-direct {v1, v3, v3, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v1, p0, p1}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->checkAspectRatio(Landroid/graphics/Rect;II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->TWENTYONE_TO_NINE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    return-object p0

    .line 211
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    const/16 v2, 0x12

    invoke-direct {v1, v3, v3, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v1, p0, p1}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->checkAspectRatio(Landroid/graphics/Rect;II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 213
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->EIGHTEEN_TO_NINE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    return-object p0

    .line 214
    :cond_2
    new-instance v1, Landroid/graphics/Rect;

    const/16 v2, 0x10

    invoke-direct {v1, v3, v3, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v1, p0, p1}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->checkAspectRatio(Landroid/graphics/Rect;II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 216
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->SIXTEEN_TO_NINE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    return-object p0

    .line 217
    :cond_3
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x4

    const/4 v4, 0x3

    invoke-direct {v1, v3, v3, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v1, p0, p1}, Lcom/sonyericsson/android/camera/device/PlatformDependencyResolver;->checkAspectRatio(Landroid/graphics/Rect;II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 219
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->FOUR_TO_THREE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    return-object p0

    :cond_4
    if-ne p0, p1, :cond_5

    .line 221
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->ONE_TO_ONE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    return-object p0

    :cond_5
    :goto_0
    return-object v0
.end method

.method public static getDefaultValue(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;
    .locals 1

    .line 193
    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getDefaultValue(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object p0

    .line 194
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
    .locals 14

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 122
    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object p0

    .line 123
    array-length v1, p0

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_0
    if-ge v3, v1, :cond_5

    aget-object v9, p0, v3

    .line 124
    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 125
    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 126
    invoke-static {v10, v9}, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->getAspectRatio(II)Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    move-result-object v11

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->TWENTYONE_TO_NINE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    const/4 v13, 0x1

    if-ne v11, v12, :cond_0

    move v7, v13

    goto :goto_1

    .line 128
    :cond_0
    invoke-static {v10, v9}, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->getAspectRatio(II)Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    move-result-object v11

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->EIGHTEEN_TO_NINE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    if-ne v11, v12, :cond_1

    move v8, v13

    goto :goto_1

    .line 130
    :cond_1
    invoke-static {v10, v9}, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->getAspectRatio(II)Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    move-result-object v11

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->SIXTEEN_TO_NINE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    if-ne v11, v12, :cond_2

    move v5, v13

    goto :goto_1

    .line 132
    :cond_2
    invoke-static {v10, v9}, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->getAspectRatio(II)Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    move-result-object v11

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->FOUR_TO_THREE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    if-ne v11, v12, :cond_3

    move v4, v13

    goto :goto_1

    .line 134
    :cond_3
    invoke-static {v10, v9}, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->getAspectRatio(II)Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    move-result-object v9

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->ONE_TO_ONE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    if-ne v9, v10, :cond_4

    move v6, v13

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    if-eqz v4, :cond_6

    .line 147
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->FOUR_TO_THREE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    if-eqz v5, :cond_7

    .line 151
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->SIXTEEN_TO_NINE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    if-eqz v6, :cond_8

    .line 155
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->ONE_TO_ONE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    if-eqz v7, :cond_9

    .line 159
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->TWENTYONE_TO_NINE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    if-eqz v8, :cond_a

    .line 163
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->EIGHTEEN_TO_NINE:Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_a
    new-array p0, v2, [Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;
    .locals 1

    .line 18
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;
    .locals 1

    .line 18
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .locals 0

    .line 65
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;)V

    return-void
.end method

.method public getIconId()I
    .locals 0

    .line 83
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->mIconId:I

    return p0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .locals 0

    .line 73
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ASPECT_RATIO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method public getKeyTextId()I
    .locals 0

    const p0, 0x7f0f00ba

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 175
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextId()I
    .locals 0

    .line 93
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->mTextId:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 103
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
