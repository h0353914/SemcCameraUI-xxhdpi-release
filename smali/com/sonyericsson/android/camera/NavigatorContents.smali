.class public final enum Lcom/sonyericsson/android/camera/NavigatorContents;
.super Ljava/lang/Enum;
.source "NavigatorContents.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/NavigatorContents;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/NavigatorContents;

.field public static final enum SUPERIOR_AUTO:Lcom/sonyericsson/android/camera/NavigatorContents;

.field public static final enum VIDEO:Lcom/sonyericsson/android/camera/NavigatorContents;


# instance fields
.field private final mIconId:I

.field private final mLargeIconId:I

.field private final mTextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 16
    new-instance v6, Lcom/sonyericsson/android/camera/NavigatorContents;

    const-string v1, "SUPERIOR_AUTO"

    const/4 v2, 0x0

    const v3, 0x7f0800d8

    const v4, 0x7f0800d9

    const v5, 0x7f0f00c4

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/NavigatorContents;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lcom/sonyericsson/android/camera/NavigatorContents;->SUPERIOR_AUTO:Lcom/sonyericsson/android/camera/NavigatorContents;

    .line 19
    new-instance v0, Lcom/sonyericsson/android/camera/NavigatorContents;

    const-string v8, "VIDEO"

    const/4 v9, 0x1

    const v10, 0x7f0800da

    const v11, 0x7f0800db

    const v12, 0x7f0f009f

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/NavigatorContents;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/sonyericsson/android/camera/NavigatorContents;->VIDEO:Lcom/sonyericsson/android/camera/NavigatorContents;

    const/4 v0, 0x2

    .line 15
    new-array v0, v0, [Lcom/sonyericsson/android/camera/NavigatorContents;

    sget-object v1, Lcom/sonyericsson/android/camera/NavigatorContents;->SUPERIOR_AUTO:Lcom/sonyericsson/android/camera/NavigatorContents;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/NavigatorContents;->VIDEO:Lcom/sonyericsson/android/camera/NavigatorContents;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/android/camera/NavigatorContents;->$VALUES:[Lcom/sonyericsson/android/camera/NavigatorContents;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput p3, p0, Lcom/sonyericsson/android/camera/NavigatorContents;->mIconId:I

    .line 26
    iput p4, p0, Lcom/sonyericsson/android/camera/NavigatorContents;->mLargeIconId:I

    .line 27
    iput p5, p0, Lcom/sonyericsson/android/camera/NavigatorContents;->mTextId:I

    return-void
.end method

.method public static indexOf(Lcom/sonyericsson/android/camera/NavigatorContents;)I
    .locals 2

    const/4 v0, 0x0

    .line 82
    :goto_0
    invoke-static {}, Lcom/sonyericsson/android/camera/NavigatorContents;->values()[Lcom/sonyericsson/android/camera/NavigatorContents;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 83
    invoke-static {}, Lcom/sonyericsson/android/camera/NavigatorContents;->values()[Lcom/sonyericsson/android/camera/NavigatorContents;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/NavigatorContents;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/NavigatorContents;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not NavigatorContents."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/NavigatorContents;
    .locals 1

    .line 92
    sget-object v0, Lcom/sonyericsson/android/camera/NavigatorContents$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 108
    sget-object p0, Lcom/sonyericsson/android/camera/NavigatorContents;->SUPERIOR_AUTO:Lcom/sonyericsson/android/camera/NavigatorContents;

    goto :goto_0

    .line 104
    :pswitch_0
    sget-object p0, Lcom/sonyericsson/android/camera/NavigatorContents;->VIDEO:Lcom/sonyericsson/android/camera/NavigatorContents;

    goto :goto_0

    .line 96
    :pswitch_1
    sget-object p0, Lcom/sonyericsson/android/camera/NavigatorContents;->SUPERIOR_AUTO:Lcom/sonyericsson/android/camera/NavigatorContents;

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/NavigatorContents;
    .locals 1

    .line 15
    const-class v0, Lcom/sonyericsson/android/camera/NavigatorContents;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/NavigatorContents;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/NavigatorContents;
    .locals 1

    .line 15
    sget-object v0, Lcom/sonyericsson/android/camera/NavigatorContents;->$VALUES:[Lcom/sonyericsson/android/camera/NavigatorContents;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/NavigatorContents;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/NavigatorContents;

    return-object v0
.end method


# virtual methods
.method public getIconId()I
    .locals 0

    .line 31
    iget p0, p0, Lcom/sonyericsson/android/camera/NavigatorContents;->mIconId:I

    return p0
.end method

.method public getLargeIconId()I
    .locals 0

    .line 35
    iget p0, p0, Lcom/sonyericsson/android/camera/NavigatorContents;->mLargeIconId:I

    return p0
.end method

.method public getText(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget p0, p0, Lcom/sonyericsson/android/camera/NavigatorContents;->mTextId:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextId()I
    .locals 0

    .line 39
    iget p0, p0, Lcom/sonyericsson/android/camera/NavigatorContents;->mTextId:I

    return p0
.end method

.method public hasNext()Z
    .locals 2

    .line 52
    invoke-static {p0}, Lcom/sonyericsson/android/camera/NavigatorContents;->indexOf(Lcom/sonyericsson/android/camera/NavigatorContents;)I

    move-result p0

    invoke-static {}, Lcom/sonyericsson/android/camera/NavigatorContents;->values()[Lcom/sonyericsson/android/camera/NavigatorContents;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasPrevious()Z
    .locals 0

    .line 48
    invoke-static {p0}, Lcom/sonyericsson/android/camera/NavigatorContents;->indexOf(Lcom/sonyericsson/android/camera/NavigatorContents;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()Lcom/sonyericsson/android/camera/NavigatorContents;
    .locals 1

    const/4 v0, 0x1

    .line 56
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/NavigatorContents;->next(I)Lcom/sonyericsson/android/camera/NavigatorContents;

    move-result-object p0

    return-object p0
.end method

.method public next(I)Lcom/sonyericsson/android/camera/NavigatorContents;
    .locals 0

    .line 64
    invoke-static {p0}, Lcom/sonyericsson/android/camera/NavigatorContents;->indexOf(Lcom/sonyericsson/android/camera/NavigatorContents;)I

    move-result p0

    add-int/2addr p0, p1

    .line 65
    invoke-static {}, Lcom/sonyericsson/android/camera/NavigatorContents;->values()[Lcom/sonyericsson/android/camera/NavigatorContents;

    move-result-object p1

    array-length p1, p1

    if-ge p0, p1, :cond_0

    .line 66
    invoke-static {}, Lcom/sonyericsson/android/camera/NavigatorContents;->values()[Lcom/sonyericsson/android/camera/NavigatorContents;

    move-result-object p1

    aget-object p0, p1, p0

    return-object p0

    .line 68
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/camera/NavigatorContents;->values()[Lcom/sonyericsson/android/camera/NavigatorContents;

    move-result-object p0

    invoke-static {}, Lcom/sonyericsson/android/camera/NavigatorContents;->values()[Lcom/sonyericsson/android/camera/NavigatorContents;

    move-result-object p1

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    aget-object p0, p0, p1

    return-object p0
.end method

.method public previous()Lcom/sonyericsson/android/camera/NavigatorContents;
    .locals 1

    const/4 v0, 0x1

    .line 60
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/NavigatorContents;->previous(I)Lcom/sonyericsson/android/camera/NavigatorContents;

    move-result-object p0

    return-object p0
.end method

.method public previous(I)Lcom/sonyericsson/android/camera/NavigatorContents;
    .locals 0

    .line 73
    invoke-static {p0}, Lcom/sonyericsson/android/camera/NavigatorContents;->indexOf(Lcom/sonyericsson/android/camera/NavigatorContents;)I

    move-result p0

    sub-int/2addr p0, p1

    if-ltz p0, :cond_0

    .line 75
    invoke-static {}, Lcom/sonyericsson/android/camera/NavigatorContents;->values()[Lcom/sonyericsson/android/camera/NavigatorContents;

    move-result-object p1

    aget-object p0, p1, p0

    return-object p0

    .line 77
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/camera/NavigatorContents;->values()[Lcom/sonyericsson/android/camera/NavigatorContents;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    return-object p0
.end method
