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
.method static constructor <clinit>()V
    .locals 10

    .line 708
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    const-string v1, "TOUCH_UP"

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;->TOUCH_UP:Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;-><init>(Ljava/lang/String;ILcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->TOUCH_UP:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    .line 709
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    const-string v1, "TOUCH_UP_CAPTURE"

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;->TOUCH_UP:Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;-><init>(Ljava/lang/String;ILcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->TOUCH_UP_CAPTURE:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    .line 710
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    const-string v1, "HW_CAMERA_KEY"

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;->HW_CAMERA_KEY:Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;-><init>(Ljava/lang/String;ILcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->HW_CAMERA_KEY:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    .line 711
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    const-string v1, "VOLUME_KEY_SHUTTER"

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;->VOLUME_KEY:Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;-><init>(Ljava/lang/String;ILcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->VOLUME_KEY_SHUTTER:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    .line 712
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    const-string v1, "VOLUME_KEY_ZOOM"

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;->VOLUME_KEY:Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;-><init>(Ljava/lang/String;ILcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->VOLUME_KEY_ZOOM:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    .line 713
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    const-string v1, "SIDE_SENSING"

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;->SIDE_SENSING:Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;-><init>(Ljava/lang/String;ILcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->SIDE_SENSING:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    .line 714
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    const-string v1, "OTHER"

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;->OTHER:Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;-><init>(Ljava/lang/String;ILcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->OTHER:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    const/4 v0, 0x7

    .line 707
    new-array v0, v0, [Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->TOUCH_UP:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->TOUCH_UP_CAPTURE:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->HW_CAMERA_KEY:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->VOLUME_KEY_SHUTTER:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->VOLUME_KEY_ZOOM:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->SIDE_SENSING:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->OTHER:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    aput-object v1, v0, v9

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

    .line 718
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 719
    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->mAction:Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;
    .locals 1

    .line 707
    const-class v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;
    .locals 1

    .line 707
    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->$VALUES:[Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PredictiveLaunchHideTrigger;

    return-object v0
.end method
