.class public final enum Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;
.super Ljava/lang/Enum;
.source "SideTouchUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

.field public static final enum AUTO_REVIEW:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

.field public static final enum CAPTURE_COUNTDOWN:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

.field public static final enum COVERING:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

.field public static final enum NONE:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

.field public static final enum RECORDING:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

.field public static final enum RECORDING_HDR:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

.field public static final enum RECORDING_HDR_PAUSE:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

.field public static final enum RECORDING_PAUSE:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

.field public static final enum SELF_TIMER_COUNTDOWN_CANCEL:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

.field public static final enum VIDEO_COUNTDOWN:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

.field public static final enum ZOOM_BAR:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;


# instance fields
.field final layer:I


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;
    .locals 11

    .line 421
    sget-object v0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;->NONE:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    sget-object v1, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;->CAPTURE_COUNTDOWN:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    sget-object v2, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;->VIDEO_COUNTDOWN:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    sget-object v3, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;->SELF_TIMER_COUNTDOWN_CANCEL:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    sget-object v4, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;->AUTO_REVIEW:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    sget-object v5, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;->RECORDING:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    sget-object v6, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;->RECORDING_HDR:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    sget-object v7, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;->RECORDING_PAUSE:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    sget-object v8, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;->RECORDING_HDR_PAUSE:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    sget-object v9, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;->ZOOM_BAR:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    sget-object v10, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;->COVERING:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    filled-new-array/range {v0 .. v10}, [Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 422
    new-instance v0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    const/4 v1, -0x1

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;->NONE:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    .line 423
    new-instance v0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    const-string v1, "CAPTURE_COUNTDOWN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;->CAPTURE_COUNTDOWN:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    .line 424
    new-instance v0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    const-string v1, "VIDEO_COUNTDOWN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;->VIDEO_COUNTDOWN:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    .line 425
    new-instance v0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    const-string v1, "SELF_TIMER_COUNTDOWN_CANCEL"

    const/4 v4, 0x3

    invoke-direct {v0, v1, v4, v3}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;->SELF_TIMER_COUNTDOWN_CANCEL:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    .line 426
    new-instance v0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    const-string v1, "AUTO_REVIEW"

    const/4 v4, 0x4

    invoke-direct {v0, v1, v4, v3}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;->AUTO_REVIEW:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    .line 427
    new-instance v0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    const-string v1, "RECORDING"

    const/4 v4, 0x5

    invoke-direct {v0, v1, v4, v3}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;->RECORDING:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    .line 428
    new-instance v0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    const-string v1, "RECORDING_HDR"

    const/4 v4, 0x6

    invoke-direct {v0, v1, v4, v3}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;->RECORDING_HDR:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    .line 429
    new-instance v0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    const-string v1, "RECORDING_PAUSE"

    const/4 v4, 0x7

    invoke-direct {v0, v1, v4, v3}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;->RECORDING_PAUSE:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    .line 430
    new-instance v0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    const-string v1, "RECORDING_HDR_PAUSE"

    const/16 v4, 0x8

    invoke-direct {v0, v1, v4, v3}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;->RECORDING_HDR_PAUSE:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    .line 431
    new-instance v0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    const-string v1, "ZOOM_BAR"

    const/16 v3, 0x9

    invoke-direct {v0, v1, v3, v2}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;->ZOOM_BAR:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    .line 432
    new-instance v0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    const-string v1, "COVERING"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;->COVERING:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    .line 421
    invoke-static {}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;->$values()[Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;->$VALUES:[Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 440
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 441
    iput p3, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;->layer:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;
    .locals 1

    .line 421
    const-class v0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;
    .locals 1

    .line 421
    sget-object v0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;->$VALUES:[Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Type;

    return-object v0
.end method
