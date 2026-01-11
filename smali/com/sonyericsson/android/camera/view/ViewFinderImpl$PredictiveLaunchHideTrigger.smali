.class public final enum Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;
.super Ljava/lang/Enum;
.source "ViewFinderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PredictiveLaunchHideTrigger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

.field public static final enum HW_CAMERA_KEY:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

.field public static final enum OTHER:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

.field public static final enum SIDE_SENSING:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

.field public static final enum TOUCH_UP:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

.field public static final enum TOUCH_UP_CAPTURE:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

.field public static final enum VOLUME_KEY_SHUTTER:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

.field public static final enum VOLUME_KEY_ZOOM:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;


# instance fields
.field public final mAction:Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;
    .locals 7

    .line 777
    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->TOUCH_UP:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->TOUCH_UP_CAPTURE:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    sget-object v2, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->HW_CAMERA_KEY:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    sget-object v3, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->VOLUME_KEY_SHUTTER:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    sget-object v4, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->VOLUME_KEY_ZOOM:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    sget-object v5, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->SIDE_SENSING:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    sget-object v6, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->OTHER:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    filled-new-array/range {v0 .. v6}, [Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 778
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    const/4 v1, 0x0

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;->TOUCH_UP:Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    const-string v3, "TOUCH_UP"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;-><init>(Ljava/lang/String;ILcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->TOUCH_UP:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    .line 779
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    const/4 v1, 0x1

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;->TOUCH_UP:Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    const-string v3, "TOUCH_UP_CAPTURE"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;-><init>(Ljava/lang/String;ILcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->TOUCH_UP_CAPTURE:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    .line 780
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    const/4 v1, 0x2

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;->HW_CAMERA_KEY:Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    const-string v3, "HW_CAMERA_KEY"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;-><init>(Ljava/lang/String;ILcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->HW_CAMERA_KEY:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    .line 781
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    const/4 v1, 0x3

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;->VOLUME_KEY:Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    const-string v3, "VOLUME_KEY_SHUTTER"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;-><init>(Ljava/lang/String;ILcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->VOLUME_KEY_SHUTTER:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    .line 782
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    const/4 v1, 0x4

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;->VOLUME_KEY:Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    const-string v3, "VOLUME_KEY_ZOOM"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;-><init>(Ljava/lang/String;ILcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->VOLUME_KEY_ZOOM:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    .line 783
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    const/4 v1, 0x5

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;->SIDE_SENSING:Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    const-string v3, "SIDE_SENSING"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;-><init>(Ljava/lang/String;ILcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->SIDE_SENSING:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    .line 784
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    const/4 v1, 0x6

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;->OTHER:Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    const-string v3, "OTHER"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;-><init>(Ljava/lang/String;ILcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->OTHER:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    .line 777
    invoke-static {}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->$values()[Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->$VALUES:[Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;",
            ")V"
        }
    .end annotation

    .line 788
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 789
    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->mAction:Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;
    .locals 1

    .line 777
    const-class v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;
    .locals 1

    .line 777
    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->$VALUES:[Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    return-object v0
.end method
