.class final enum Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;
.super Ljava/lang/Enum;
.source "FocusRectangles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ObJectTrackingFocusIconState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

.field public static final enum NOT_DISPLAY:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

.field public static final enum TOUCH_ICON:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

.field public static final enum TRACKING_ICON:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;
    .locals 3

    .line 2131
    sget-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;->NOT_DISPLAY:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    sget-object v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;->TOUCH_ICON:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    sget-object v2, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;->TRACKING_ICON:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    filled-new-array {v0, v1, v2}, [Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 2132
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    const-string v1, "NOT_DISPLAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;->NOT_DISPLAY:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    .line 2133
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    const-string v1, "TOUCH_ICON"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;->TOUCH_ICON:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    .line 2134
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    const-string v1, "TRACKING_ICON"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;->TRACKING_ICON:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    .line 2131
    invoke-static {}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;->$values()[Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;->$VALUES:[Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2131
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;
    .locals 1

    .line 2131
    const-class v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;
    .locals 1

    .line 2131
    sget-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;->$VALUES:[Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    return-object v0
.end method
