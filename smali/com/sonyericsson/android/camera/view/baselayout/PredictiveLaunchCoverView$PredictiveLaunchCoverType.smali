.class public final enum Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;
.super Ljava/lang/Enum;
.source "PredictiveLaunchCoverView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PredictiveLaunchCoverType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;

.field public static final enum TOUCH_TO_LAUNCH:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;

.field public static final enum TOUCH_TO_LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;


# instance fields
.field public final mDescriptionResourceId:I


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;
    .locals 2

    .line 286
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;->TOUCH_TO_LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;->TOUCH_TO_LAUNCH:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;

    filled-new-array {v0, v1}, [Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 287
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;

    const/4 v1, 0x0

    const v2, 0x7f0f032a

    const-string v3, "TOUCH_TO_LAUNCH_AND_CAPTURE"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;->TOUCH_TO_LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;

    .line 288
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;

    const/4 v1, 0x1

    const v2, 0x7f0f032d

    const-string v3, "TOUCH_TO_LAUNCH"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;->TOUCH_TO_LAUNCH:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;

    .line 286
    invoke-static {}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;->$values()[Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;->$VALUES:[Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 293
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 294
    iput p3, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;->mDescriptionResourceId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;
    .locals 1

    .line 286
    const-class v0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;
    .locals 1

    .line 286
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;->$VALUES:[Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;

    return-object v0
.end method
