.class final enum Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;
.super Ljava/lang/Enum;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AutoPowerOffType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

.field public static final enum DEFAULT:Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

.field public static final enum LIFT_TRIGGER:Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

.field public static final enum LIFT_TRIGGER_DIALOG:Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

.field public static final enum ON_LOCKSCREEN:Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;


# instance fields
.field private final mAction:Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;

.field private final mDuration:I

.field private final mReason:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 210
    new-instance v6, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

    const-string v1, "DEFAULT"

    const-string v4, "DEFAULT"

    sget-object v5, Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;->DEFAULT:Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;

    const/4 v2, 0x0

    const v3, 0x2bf20

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;)V

    sput-object v6, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->DEFAULT:Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

    .line 211
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

    const-string v8, "ON_LOCKSCREEN"

    const-string v11, "ON_LOCKSCREEN"

    sget-object v12, Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;->ON_LOCKSCREEN:Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;

    const/4 v9, 0x1

    const/16 v10, 0x7530

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;)V

    sput-object v0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->ON_LOCKSCREEN:Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

    .line 212
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

    const-string v2, "LIFT_TRIGGER"

    const-string v5, "LIFT_TRIGGER"

    sget-object v6, Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;->LIFT_TRIGGER:Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;

    const/4 v3, 0x2

    const/16 v4, 0x1388

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;)V

    sput-object v0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->LIFT_TRIGGER:Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

    .line 213
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

    const-string v8, "LIFT_TRIGGER_DIALOG"

    const-string v11, "LIFT_TRIGGER_DIALOG"

    sget-object v12, Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;->LIFT_TRIGGER_DIALOG:Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;

    const/4 v9, 0x3

    const/16 v10, 0x3a98

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;)V

    sput-object v0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->LIFT_TRIGGER_DIALOG:Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

    const/4 v0, 0x4

    .line 209
    new-array v0, v0, [Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->DEFAULT:Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->ON_LOCKSCREEN:Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->LIFT_TRIGGER:Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->LIFT_TRIGGER_DIALOG:Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->$VALUES:[Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;",
            ")V"
        }
    .end annotation

    .line 220
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 221
    iput p3, p0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->mDuration:I

    .line 222
    iput-object p4, p0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->mReason:Ljava/lang/String;

    .line 223
    iput-object p5, p0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->mAction:Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;
    .locals 1

    .line 209
    const-class v0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;
    .locals 1

    .line 209
    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->$VALUES:[Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;

    return-object v0
.end method


# virtual methods
.method public getAction()Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->mAction:Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;

    return-object p0
.end method

.method public getDuration()I
    .locals 0

    .line 227
    iget p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->mDuration:I

    return p0
.end method

.method public getReason()Ljava/lang/String;
    .locals 0

    .line 231
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffType;->mReason:Ljava/lang/String;

    return-object p0
.end method
