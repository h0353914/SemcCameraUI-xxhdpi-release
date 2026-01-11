.class final enum Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;
.super Ljava/lang/Enum;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "MultiFrameStreamSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

.field public static final enum ASPECT_16_9:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

.field public static final enum ASPECT_16_9_SMX2:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

.field public static final enum ASPECT_18_9:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

.field public static final enum ASPECT_1_1:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

.field public static final enum ASPECT_21_9:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

.field public static final enum ASPECT_21_9_FRONT:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

.field public static final enum ASPECT_21_9_SM23_DUAL:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

.field public static final enum ASPECT_4_3:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;


# instance fields
.field height:I

.field width:I


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;
    .locals 8

    .line 1891
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->ASPECT_21_9:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->ASPECT_21_9_SM23_DUAL:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->ASPECT_21_9_FRONT:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->ASPECT_18_9:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    sget-object v4, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->ASPECT_16_9:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    sget-object v5, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->ASPECT_16_9_SMX2:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    sget-object v6, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->ASPECT_4_3:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    sget-object v7, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->ASPECT_1_1:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    filled-new-array/range {v0 .. v7}, [Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1892
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    const/16 v1, 0xdc8

    const/16 v2, 0x5e8

    const-string v3, "ASPECT_21_9"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->ASPECT_21_9:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    .line 1893
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    const/16 v1, 0xe70

    const/16 v2, 0x630

    const-string v3, "ASPECT_21_9_SM23_DUAL"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->ASPECT_21_9_SM23_DUAL:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    .line 1894
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    const/16 v1, 0x578

    const-string v2, "ASPECT_21_9_FRONT"

    const/4 v3, 0x2

    const/16 v4, 0xcc0

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->ASPECT_21_9_FRONT:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    .line 1895
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    const/4 v1, 0x3

    const/16 v2, 0x660

    const-string v3, "ASPECT_18_9"

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->ASPECT_18_9:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    .line 1896
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    const/16 v1, 0xbe0

    const/16 v2, 0x6b0

    const-string v3, "ASPECT_16_9"

    const/4 v4, 0x4

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->ASPECT_16_9:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    .line 1897
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    const/16 v1, 0xc80

    const/16 v2, 0x710

    const-string v3, "ASPECT_16_9_SMX2"

    const/4 v4, 0x5

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->ASPECT_16_9_SMX2:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    .line 1898
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    const/16 v1, 0xa20

    const/16 v2, 0x798

    const-string v3, "ASPECT_4_3"

    const/4 v4, 0x6

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->ASPECT_4_3:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    .line 1899
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    const/4 v1, 0x7

    const/16 v2, 0x8f0

    const-string v3, "ASPECT_1_1"

    invoke-direct {v0, v3, v1, v2, v2}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->ASPECT_1_1:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    .line 1891
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->$values()[Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 1904
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1905
    iput p3, p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->width:I

    .line 1906
    iput p4, p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->height:I

    return-void
.end method

.method public static get(Landroid/graphics/Rect;ZZ)Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;
    .locals 2

    .line 1924
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " invoke isFront : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraController"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1925
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->getAspectRatio(II)Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;

    move-result-object v0

    .line 1926
    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraController$22;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$AspectRatio:[I

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/AspectRatio;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 p1, 0x2

    if-eq v0, p1, :cond_4

    const/4 p1, 0x3

    if-eq v0, p1, :cond_3

    const/4 p1, 0x4

    if-eq v0, p1, :cond_2

    const/4 p1, 0x5

    if-ne v0, p1, :cond_1

    .line 1943
    sget-object p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->ASPECT_1_1:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    return-object p0

    .line 1945
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unsupported picture size for multi-frame capture : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1941
    :cond_2
    sget-object p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->ASPECT_4_3:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    return-object p0

    .line 1939
    :cond_3
    sget-object p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->ASPECT_16_9:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    return-object p0

    .line 1937
    :cond_4
    sget-object p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->ASPECT_18_9:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    return-object p0

    :cond_5
    if-eqz p1, :cond_6

    .line 1929
    sget-object p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->ASPECT_21_9_FRONT:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    return-object p0

    :cond_6
    if-eqz p2, :cond_7

    .line 1932
    sget-object p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->ASPECT_21_9_SM23_DUAL:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    return-object p0

    .line 1934
    :cond_7
    sget-object p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->ASPECT_21_9:Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    return-object p0
.end method

.method private getRect()Landroid/graphics/Rect;
    .locals 3

    .line 1910
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->width:I

    iget p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->height:I

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;
    .locals 1

    .line 1891
    const-class v0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;
    .locals 1

    .line 1891
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/device/CameraController$MultiFrameStreamSize;

    return-object v0
.end method
