.class public final enum Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;
.super Ljava/lang/Enum;
.source "ShutterToneGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/ShutterToneGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

.field public static final enum SOUND_AF_SUCCESS:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

.field public static final enum SOUND_BURST_SHUTTER:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

.field public static final enum SOUND_FAST_CAPTURE_SHUTTER_DONE:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

.field public static final enum SOUND_OFF:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

.field public static final enum SOUND_SELFTIMER_10SEC:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

.field public static final enum SOUND_SELFTIMER_3SEC:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;


# instance fields
.field private mFileName:Ljava/lang/String;

.field private mIsCommonSound:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 26
    new-instance v0, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    const-string v1, "SOUND_AF_SUCCESS"

    const-string v2, "common/af_success.m4a"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->SOUND_AF_SUCCESS:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    .line 27
    new-instance v0, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    const-string v1, "SOUND_SELFTIMER_3SEC"

    const-string v2, "common/selftimer_3sec.m4a"

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->SOUND_SELFTIMER_3SEC:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    .line 28
    new-instance v0, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    const-string v1, "SOUND_SELFTIMER_10SEC"

    const-string v2, "common/selftimer_10sec.m4a"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->SOUND_SELFTIMER_10SEC:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    .line 29
    new-instance v0, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    const-string v1, "SOUND_OFF"

    const-string v2, "no_sound.m4a"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2, v4}, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->SOUND_OFF:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    .line 30
    new-instance v0, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    const-string v1, "SOUND_BURST_SHUTTER"

    const-string v2, "shutter_done.wav"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2, v4}, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->SOUND_BURST_SHUTTER:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    .line 31
    new-instance v0, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    const-string v1, "SOUND_FAST_CAPTURE_SHUTTER_DONE"

    const-string v2, "fastcapture_launch_and_capture_done.wav"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2, v4}, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->SOUND_FAST_CAPTURE_SHUTTER_DONE:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    const/4 v0, 0x6

    .line 25
    new-array v0, v0, [Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    sget-object v1, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->SOUND_AF_SUCCESS:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->SOUND_SELFTIMER_3SEC:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->SOUND_SELFTIMER_10SEC:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->SOUND_OFF:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->SOUND_BURST_SHUTTER:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->SOUND_FAST_CAPTURE_SHUTTER_DONE:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    aput-object v1, v0, v8

    sput-object v0, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->$VALUES:[Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p3, p0, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->mFileName:Ljava/lang/String;

    .line 37
    iput-boolean p4, p0, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->mIsCommonSound:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;
    .locals 1

    .line 25
    const-class v0, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;
    .locals 1

    .line 25
    sget-object v0, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->$VALUES:[Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    return-object v0
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->mFileName:Ljava/lang/String;

    return-object p0
.end method

.method public isCommonSound()Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->mIsCommonSound:Z

    return p0
.end method
