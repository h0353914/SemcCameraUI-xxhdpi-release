.class public final enum Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface$HandStatus;
.super Ljava/lang/Enum;
.source "HandSignsDetectorInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HandStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface$HandStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface$HandStatus;

.field public static final enum NONE:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface$HandStatus;

.field public static final enum PALM:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface$HandStatus;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface$HandStatus;
    .locals 2

    .line 39
    sget-object v0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface$HandStatus;->NONE:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface$HandStatus;

    sget-object v1, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface$HandStatus;->PALM:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface$HandStatus;

    filled-new-array {v0, v1}, [Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface$HandStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 40
    new-instance v0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface$HandStatus;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface$HandStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface$HandStatus;->NONE:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface$HandStatus;

    .line 41
    new-instance v0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface$HandStatus;

    const-string v1, "PALM"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface$HandStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface$HandStatus;->PALM:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface$HandStatus;

    .line 39
    invoke-static {}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface$HandStatus;->$values()[Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface$HandStatus;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface$HandStatus;->$VALUES:[Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface$HandStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface$HandStatus;
    .locals 1

    .line 39
    const-class v0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface$HandStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface$HandStatus;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface$HandStatus;
    .locals 1

    .line 39
    sget-object v0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface$HandStatus;->$VALUES:[Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface$HandStatus;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface$HandStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/gestureshutter/HandSignsDetectorInterface$DetectResultInterface$HandStatus;

    return-object v0
.end method
