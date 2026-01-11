.class final enum Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;
.super Ljava/lang/Enum;
.source "CameraParameterConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraParameterConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "MeteringMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

.field public static final enum AVERAGE:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

.field public static final enum CENTER:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

.field public static final enum FACE:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

.field public static final enum MULTI:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

.field public static final enum SPOT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

.field public static final enum USER:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;


# instance fields
.field private mApi1Value:Ljava/lang/String;

.field private mApi2Value:I


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;
    .locals 6

    .line 247
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;->CENTER:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;->FACE:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;->AVERAGE:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;->MULTI:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

    sget-object v4, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;->SPOT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

    sget-object v5, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;->USER:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

    filled-new-array/range {v0 .. v5}, [Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 248
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

    const-string v1, "CENTER"

    const/4 v2, 0x0

    const-string v3, "center-weighted"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;->CENTER:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

    .line 250
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

    const-string v1, "face"

    const/4 v3, 0x7

    const-string v5, "FACE"

    invoke-direct {v0, v5, v4, v1, v3}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;->FACE:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

    .line 252
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

    const-string v1, "frame-average"

    const-string v3, "AVERAGE"

    const/4 v5, 0x2

    invoke-direct {v0, v3, v5, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;->AVERAGE:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

    .line 254
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

    const/4 v1, 0x3

    const-string v2, "multi"

    const-string v3, "MULTI"

    invoke-direct {v0, v3, v1, v2, v1}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;->MULTI:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

    .line 256
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

    const/4 v1, 0x4

    const-string/jumbo v2, "spot"

    const-string v3, "SPOT"

    invoke-direct {v0, v3, v1, v2, v5}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;->SPOT:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

    .line 258
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

    const/4 v1, 0x5

    const-string/jumbo v2, "user"

    const-string v3, "USER"

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;->USER:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

    .line 247
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;->$values()[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 264
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 265
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;->mApi1Value:Ljava/lang/String;

    .line 266
    iput p4, p0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;->mApi2Value:I

    return-void
.end method

.method static getApi2Value(Ljava/lang/String;)I
    .locals 5

    .line 270
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;->values()[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 271
    iget-object v4, v3, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;->mApi1Value:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 272
    iget p0, v3, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;->mApi2Value:I

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;
    .locals 1

    .line 247
    const-class v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;
    .locals 1

    .line 247
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/device/CameraParameterConverter$MeteringMode;

    return-object v0
.end method
