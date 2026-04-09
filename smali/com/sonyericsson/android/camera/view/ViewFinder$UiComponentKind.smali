.class public final enum Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;
.super Ljava/lang/Enum;
.source "ViewFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/ViewFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UiComponentKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

.field public static final enum ASPECT_RATIO_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

.field public static final enum FATAL_ALERT_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

.field public static final enum FLASH_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

.field public static final enum FUSION_MODE_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

.field public static final enum HDR_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

.field public static final enum MODE_SELECTOR:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

.field public static final enum NOTICE_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

.field public static final enum OVERLAY_CONTROL_SEEKING:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

.field public static final enum REVIEW_WINDOW:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

.field public static final enum SELF_TIMER_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

.field public static final enum SETTING_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

.field public static final enum TUTORIAL:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

.field public static final enum VIDEO_HDR_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

.field public static final enum ZOOM_BAR:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 215
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    const-string v1, "ZOOM_BAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ZOOM_BAR:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    .line 216
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    const-string v1, "SETTING_DIALOG"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->SETTING_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    .line 217
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    const-string v1, "REVIEW_WINDOW"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->REVIEW_WINDOW:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    .line 218
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    const-string v1, "OVERLAY_CONTROL_SEEKING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->OVERLAY_CONTROL_SEEKING:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    .line 219
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    const-string v1, "FLASH_DIALOG"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->FLASH_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    .line 220
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    const-string v1, "TUTORIAL"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->TUTORIAL:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    .line 221
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    const-string v1, "NOTICE_DIALOG"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->NOTICE_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    .line 222
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    const-string v1, "FATAL_ALERT_DIALOG"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->FATAL_ALERT_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    .line 223
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    const-string v1, "MODE_SELECTOR"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->MODE_SELECTOR:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    .line 224
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    const-string v1, "SELF_TIMER_DIALOG"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->SELF_TIMER_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    .line 225
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    const-string v1, "ASPECT_RATIO_DIALOG"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ASPECT_RATIO_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    .line 226
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    const-string v1, "FUSION_MODE_DIALOG"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->FUSION_MODE_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    .line 227
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    const-string v1, "VIDEO_HDR_DIALOG"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->VIDEO_HDR_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    .line 228
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    const-string v1, "HDR_DIALOG"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->HDR_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    const/16 v0, 0xe

    .line 214
    new-array v0, v0, [Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ZOOM_BAR:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->SETTING_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->REVIEW_WINDOW:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->OVERLAY_CONTROL_SEEKING:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->FLASH_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->TUTORIAL:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->NOTICE_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->FATAL_ALERT_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    aput-object v1, v0, v9

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->MODE_SELECTOR:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    aput-object v1, v0, v10

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->SELF_TIMER_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    aput-object v1, v0, v11

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ASPECT_RATIO_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    aput-object v1, v0, v12

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->FUSION_MODE_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    aput-object v1, v0, v13

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->VIDEO_HDR_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    aput-object v1, v0, v14

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->HDR_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    aput-object v1, v0, v15

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->$VALUES:[Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 214
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;
    .locals 1

    .line 214
    const-class v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;
    .locals 1

    .line 214
    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->$VALUES:[Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    return-object v0
.end method
