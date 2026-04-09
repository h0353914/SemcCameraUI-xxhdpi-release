.class public final enum Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;
.super Ljava/lang/Enum;
.source "ViewFinderGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FinishReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;

.field public static final enum CANCEL:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;

.field public static final enum FLING:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;

.field public static final enum UP:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 54
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;

    const-string v1, "CANCEL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;->CANCEL:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;

    .line 55
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;

    const-string v1, "UP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;->UP:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;

    .line 56
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;

    const-string v1, "FLING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;->FLING:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;

    const/4 v0, 0x3

    .line 53
    new-array v0, v0, [Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;->CANCEL:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;->UP:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;->FLING:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;->$VALUES:[Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;
    .locals 1

    .line 53
    const-class v0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;
    .locals 1

    .line 53
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;->$VALUES:[Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$FinishReason;

    return-object v0
.end method
