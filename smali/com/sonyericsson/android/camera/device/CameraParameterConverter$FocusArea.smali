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
.method static constructor <clinit>()V
    .locals 7

    .line 188
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;

    const-string v1, "CENTER"

    const-string v2, "center"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;->CENTER:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;

    .line 190
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;

    const-string v1, "FACE"

    const-string v2, "face"

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-direct {v0, v1, v5, v2, v4}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;->FACE:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;

    .line 192
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;

    const-string v1, "MULTI"

    const-string v2, "multi"

    invoke-direct {v0, v1, v4, v2, v5}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;->MULTI:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;

    .line 194
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;

    const-string v1, "USER"

    const-string v2, "user"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2, v6}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;->USER:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;

    const/4 v0, 0x4

    .line 187
    new-array v0, v0, [Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;->CENTER:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;->FACE:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;->MULTI:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;->USER:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;

    aput-object v1, v0, v6

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

    .line 200
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 201
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;->mApi1Value:Ljava/lang/String;

    .line 202
    iput p4, p0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;->mApi2Value:I

    return-void
.end method

.method static getApi2Value(Ljava/lang/String;)I
    .locals 6

    .line 206
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;->values()[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 207
    iget-object v5, v4, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;->mApi1Value:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 208
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

    .line 187
    const-class v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;
    .locals 1

    .line 187
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/device/CameraParameterConverter$FocusArea;

    return-object v0
.end method
