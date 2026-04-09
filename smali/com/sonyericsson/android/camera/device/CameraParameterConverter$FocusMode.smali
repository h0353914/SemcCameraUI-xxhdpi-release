.class final enum Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;
.super Ljava/lang/Enum;
.source "CameraParameterConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraParameterConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "FocusMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;

.field public static final enum AUTO:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;

.field public static final enum CONTINUOUS_PICTURE:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;

.field public static final enum CONTINUOUS_VIDEO:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;

.field public static final enum FIXED:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;

.field public static final enum INFINITY:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;

.field public static final enum MANUAL:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;


# instance fields
.field private mApi1Value:Ljava/lang/String;

.field private mApi2Value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 159
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;

    const-string v1, "AUTO"

    const-string v2, "auto"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;->AUTO:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;

    .line 160
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;

    const-string v1, "INFINITY"

    const-string v2, "infinity"

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;->INFINITY:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;

    .line 161
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;

    const-string v1, "FIXED"

    const-string v2, "fixed"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2, v4}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;->FIXED:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;

    .line 162
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;

    const-string v1, "CONTINUOUS_VIDEO"

    const-string v2, "continuous-video"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2, v6}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;->CONTINUOUS_VIDEO:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;

    .line 164
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;

    const-string v1, "CONTINUOUS_PICTURE"

    const-string v2, "continuous-picture"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2, v7}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;->CONTINUOUS_PICTURE:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;

    .line 166
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;

    const-string v1, "MANUAL"

    const-string v2, "manual"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2, v4}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;->MANUAL:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;

    const/4 v0, 0x6

    .line 158
    new-array v0, v0, [Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;->AUTO:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;->INFINITY:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;->FIXED:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;->CONTINUOUS_VIDEO:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;->CONTINUOUS_PICTURE:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;->MANUAL:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;

    aput-object v1, v0, v8

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;

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

    .line 171
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 172
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;->mApi1Value:Ljava/lang/String;

    .line 173
    iput p4, p0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;->mApi2Value:I

    return-void
.end method

.method static getApi2Value(Ljava/lang/String;)I
    .locals 5

    .line 177
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;->values()[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 178
    iget-object v4, v3, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;->mApi1Value:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 179
    iget p0, v3, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;->mApi2Value:I

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;
    .locals 1

    .line 158
    const-class v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;
    .locals 1

    .line 158
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusMode;

    return-object v0
.end method
