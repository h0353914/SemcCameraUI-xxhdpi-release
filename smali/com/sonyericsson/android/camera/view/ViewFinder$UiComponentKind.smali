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

.field public static final enum NIGHT_MODE_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

.field public static final enum NOTICE_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

.field public static final enum OVERLAY_CONTROL_SEEKING:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

.field public static final enum REVIEW_WINDOW:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

.field public static final enum SELF_TIMER_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

.field public static final enum SETTING_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

.field public static final enum TUTORIAL:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

.field public static final enum VIDEO_HDR_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

.field public static final enum ZOOM_BAR:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;
    .locals 15

    .line 270
    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ZOOM_BAR:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->SETTING_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    sget-object v2, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->REVIEW_WINDOW:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    sget-object v3, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->OVERLAY_CONTROL_SEEKING:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    sget-object v4, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->FLASH_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    sget-object v5, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->TUTORIAL:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    sget-object v6, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->NOTICE_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    sget-object v7, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->FATAL_ALERT_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    sget-object v8, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->MODE_SELECTOR:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    sget-object v9, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->SELF_TIMER_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    sget-object v10, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ASPECT_RATIO_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    sget-object v11, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->FUSION_MODE_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    sget-object v12, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->VIDEO_HDR_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    sget-object v13, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->HDR_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    sget-object v14, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->NIGHT_MODE_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    filled-new-array/range {v0 .. v14}, [Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 271
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    const-string v1, "ZOOM_BAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ZOOM_BAR:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    .line 272
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    const-string v1, "SETTING_DIALOG"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->SETTING_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    .line 273
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    const-string v1, "REVIEW_WINDOW"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->REVIEW_WINDOW:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    .line 274
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    const-string v1, "OVERLAY_CONTROL_SEEKING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->OVERLAY_CONTROL_SEEKING:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    .line 275
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    const-string v1, "FLASH_DIALOG"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->FLASH_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    .line 276
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    const-string v1, "TUTORIAL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->TUTORIAL:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    .line 277
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    const-string v1, "NOTICE_DIALOG"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->NOTICE_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    .line 278
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    const-string v1, "FATAL_ALERT_DIALOG"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->FATAL_ALERT_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    .line 279
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    const-string v1, "MODE_SELECTOR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->MODE_SELECTOR:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    .line 280
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    const-string v1, "SELF_TIMER_DIALOG"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->SELF_TIMER_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    .line 281
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    const-string v1, "ASPECT_RATIO_DIALOG"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->ASPECT_RATIO_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    .line 282
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    const-string v1, "FUSION_MODE_DIALOG"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->FUSION_MODE_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    .line 283
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    const-string v1, "VIDEO_HDR_DIALOG"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->VIDEO_HDR_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    .line 284
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    const-string v1, "HDR_DIALOG"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->HDR_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    .line 285
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    const-string v1, "NIGHT_MODE_DIALOG"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->NIGHT_MODE_DIALOG:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    .line 270
    invoke-static {}, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->$values()[Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    move-result-object v0

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

    .line 270
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;
    .locals 1

    .line 270
    const-class v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;
    .locals 1

    .line 270
    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->$VALUES:[Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    return-object v0
.end method
