.class final enum Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;
.super Ljava/lang/Enum;
.source "CameraParameterConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraParameterConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "FocusArea"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;

.field public static final enum CENTER:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;

.field public static final enum FACE:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;

.field public static final enum MULTI:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;

.field public static final enum USER:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;


# instance fields
.field private mApi1Value:Ljava/lang/String;

.field private mApi2Value:I


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;
    .locals 4

    .line 193
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;->CENTER:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;->FACE:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;

    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;->MULTI:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;

    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;->USER:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 194
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;

    const/4 v1, 0x0

    const-string v2, "center"

    const-string v3, "CENTER"

    invoke-direct {v0, v3, v1, v2, v1}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;->CENTER:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;

    .line 196
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;

    const-string v1, "FACE"

    const/4 v2, 0x1

    const-string v3, "face"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;->FACE:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;

    .line 198
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;

    const-string v1, "MULTI"

    const-string v3, "multi"

    invoke-direct {v0, v1, v4, v3, v2}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;->MULTI:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;

    .line 200
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;

    const/4 v1, 0x3

    const-string/jumbo v2, "user"

    const-string v3, "USER"

    invoke-direct {v0, v3, v1, v2, v1}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;->USER:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;

    .line 193
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;->$values()[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;

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

    .line 206
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 207
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;->mApi1Value:Ljava/lang/String;

    .line 208
    iput p4, p0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;->mApi2Value:I

    return-void
.end method

.method static getApi2Value(Ljava/lang/String;)I
    .locals 6

    .line 212
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;->values()[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 213
    iget-object v5, v4, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;->mApi1Value:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 214
    iget p0, v4, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;->mApi2Value:I

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;
    .locals 1

    .line 193
    const-class v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;
    .locals 1

    .line 193
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;

    return-object v0
.end method
