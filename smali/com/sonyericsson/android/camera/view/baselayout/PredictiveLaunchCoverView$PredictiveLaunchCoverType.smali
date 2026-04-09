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
.method static constructor <clinit>()V
    .locals 5

    .line 267
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;

    const-string v1, "TOUCH_TO_LAUNCH_AND_CAPTURE"

    const/4 v2, 0x0

    const v3, 0x7f0f0217

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;->TOUCH_TO_LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;

    .line 268
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;

    const-string v1, "TOUCH_TO_LAUNCH"

    const/4 v3, 0x1

    const v4, 0x7f0f021a

    invoke-direct {v0, v1, v3, v4}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;->TOUCH_TO_LAUNCH:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;

    const/4 v0, 0x2

    .line 266
    new-array v0, v0, [Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;->TOUCH_TO_LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;->TOUCH_TO_LAUNCH:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;

    aput-object v1, v0, v3

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

    .line 273
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 274
    iput p3, p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;->mDescriptionResourceId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;
    .locals 1

    .line 266
    const-class v0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;
    .locals 1

    .line 266
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;->$VALUES:[Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;

    return-object v0
.end method
