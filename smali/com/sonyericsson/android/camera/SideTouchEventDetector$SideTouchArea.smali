.class public final enum Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;
.super Ljava/lang/Enum;
.source "SideTouchEventDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/SideTouchEventDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SideTouchArea"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

.field public static final enum BOTTOM:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

.field public static final enum LEFT:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

.field public static final enum RIGHT:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

.field public static final enum TOP:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

.field public static final enum UNKNOWN:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;
    .locals 5

    .line 36
    sget-object v0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->UNKNOWN:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    sget-object v1, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->TOP:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    sget-object v2, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->BOTTOM:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    sget-object v3, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->LEFT:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    sget-object v4, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->RIGHT:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smfromCode(I)Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;
    .locals 0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->fromCode(I)Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smfromMotionEvent(Landroid/view/MotionEvent;I)Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;
    .locals 0

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->fromMotionEvent(Landroid/view/MotionEvent;I)Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 37
    new-instance v0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->UNKNOWN:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    .line 38
    new-instance v0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    const-string v1, "TOP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->TOP:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    .line 39
    new-instance v0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    const-string v1, "BOTTOM"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->BOTTOM:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    .line 40
    new-instance v0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    const-string v1, "LEFT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->LEFT:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    .line 41
    new-instance v0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    const-string v1, "RIGHT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->RIGHT:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    .line 36
    invoke-static {}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->$values()[Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->$VALUES:[Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static fromCode(I)Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    .line 67
    sget-object p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->UNKNOWN:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    return-object p0

    .line 61
    :cond_0
    sget-object p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->BOTTOM:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    return-object p0

    .line 59
    :cond_1
    sget-object p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->TOP:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    return-object p0

    .line 65
    :cond_2
    sget-object p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->RIGHT:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    return-object p0

    .line 63
    :cond_3
    sget-object p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->LEFT:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    return-object p0
.end method

.method private static fromMotionEvent(Landroid/view/MotionEvent;I)Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;
    .locals 0

    .line 49
    invoke-static {p0, p1}, Lcom/sonymobile/sidetouchgesturedetector/SideTouchUtils;->getLogicalScreenSide(Landroid/view/MotionEvent;I)I

    move-result p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->fromCode(I)Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;
    .locals 1

    .line 36
    const-class v0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;
    .locals 1

    .line 36
    sget-object v0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->$VALUES:[Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    return-object v0
.end method
