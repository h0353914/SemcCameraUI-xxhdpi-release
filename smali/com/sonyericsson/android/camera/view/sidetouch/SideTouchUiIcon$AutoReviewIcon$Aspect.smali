.class public final enum Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;
.super Ljava/lang/Enum;
.source "SideTouchUiIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Aspect"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;

.field public static final enum PHONE_16_9:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;

.field public static final enum PHONE_1_1:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;

.field public static final enum PHONE_4_3:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;

.field public static final enum TABLET_16_9:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;

.field public static final enum TABLET_1_1:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;

.field public static final enum TABLET_4_3:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;


# instance fields
.field final resource_height:I

.field final resource_width:I


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;
    .locals 6

    .line 248
    sget-object v0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;->TABLET_1_1:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;

    sget-object v1, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;->TABLET_4_3:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;

    sget-object v2, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;->TABLET_16_9:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;

    sget-object v3, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;->PHONE_1_1:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;

    sget-object v4, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;->PHONE_4_3:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;

    sget-object v5, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;->PHONE_16_9:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;

    filled-new-array/range {v0 .. v5}, [Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 249
    new-instance v0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;

    const v1, 0x7f070060

    const v2, 0x7f07005e

    const-string v3, "TABLET_1_1"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;->TABLET_1_1:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;

    .line 252
    new-instance v0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;

    const v1, 0x7f070066

    const v2, 0x7f070064

    const-string v3, "TABLET_4_3"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;->TABLET_4_3:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;

    .line 255
    new-instance v0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;

    const v1, 0x7f07005a

    const v2, 0x7f070058

    const-string v3, "TABLET_16_9"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;->TABLET_16_9:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;

    .line 258
    new-instance v0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;

    const v1, 0x7f07005f

    const v2, 0x7f07005d

    const-string v3, "PHONE_1_1"

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;->PHONE_1_1:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;

    .line 261
    new-instance v0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;

    const v1, 0x7f070065

    const v2, 0x7f070063

    const-string v3, "PHONE_4_3"

    const/4 v4, 0x4

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;->PHONE_4_3:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;

    .line 264
    new-instance v0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;

    const v1, 0x7f070059

    const v2, 0x7f070057

    const-string v3, "PHONE_16_9"

    const/4 v4, 0x5

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;->PHONE_16_9:Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;

    .line 248
    invoke-static {}, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;->$values()[Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;->$VALUES:[Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 271
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 272
    iput p3, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;->resource_width:I

    .line 273
    iput p4, p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;->resource_height:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;
    .locals 1

    .line 248
    const-class v0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;
    .locals 1

    .line 248
    sget-object v0, Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;->$VALUES:[Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUiIcon$AutoReviewIcon$Aspect;

    return-object v0
.end method
