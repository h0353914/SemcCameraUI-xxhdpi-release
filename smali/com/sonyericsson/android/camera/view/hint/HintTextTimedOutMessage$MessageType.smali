.class public final enum Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;
.super Ljava/lang/Enum;
.source "HintTextTimedOutMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

.field public static final enum BURST_CHANGE_CAMERA_KEY_SETTING:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

.field public static final enum BURST_IMAGES_ARE_SAVED_TO_INTERNAL_STORAGE:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

.field public static final enum CANNOT_BURST_DUE_TO_BOKEH_MODE:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

.field public static final enum CANNOT_BURST_DUE_TO_FUSION_MODE:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

.field public static final enum CANNOT_BURST_DUE_TO_LOW_BATTERY:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

.field public static final enum CANNOT_BURST_IN_DARK_CONDITION:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

.field public static final enum CANNOT_BURST_USING_FRONT_CAMERA:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

.field public static final enum CANNOT_TOUCHFOCUS_DURING_MF:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

.field public static final enum CANNOT_ZOOM_UNDER_X1_4K_OR_FULL_HD:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

.field public static final enum EV_NOT_AVAILABLE:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

.field public static final enum FLASH_FORCED_CHANGE_TO_OFF:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

.field public static final enum ISO_CHANGED_BY_FUSION:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

.field public static final enum NIGHT_MODE_NOT_SUPPORTED_IN_BOKEH_EFFECT:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

.field public static final enum NIGHT_SHOOTING_FORCED_CHANGE_TO_AUTO:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

.field public static final enum ZOOM_NOT_AVAILABLE:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

.field public static final enum ZOOM_NOT_SUPPORTED_IN_BOKEH_EFFECT:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

.field public static final enum ZOOM_NOT_SUPPORTED_IN_FRONT:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;


# instance fields
.field private final mIsToast:Z

.field private final mMessageResourceId:I

.field private final mMessageString:Ljava/lang/String;

.field private final mPriority:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;
    .locals 17

    .line 21
    sget-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->CANNOT_BURST_DUE_TO_LOW_BATTERY:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    sget-object v1, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->CANNOT_BURST_IN_DARK_CONDITION:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    sget-object v2, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->BURST_CHANGE_CAMERA_KEY_SETTING:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    sget-object v3, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->CANNOT_BURST_USING_FRONT_CAMERA:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    sget-object v4, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->CANNOT_BURST_DUE_TO_FUSION_MODE:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    sget-object v5, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->BURST_IMAGES_ARE_SAVED_TO_INTERNAL_STORAGE:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    sget-object v6, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->ZOOM_NOT_AVAILABLE:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    sget-object v7, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->ZOOM_NOT_SUPPORTED_IN_FRONT:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    sget-object v8, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->ISO_CHANGED_BY_FUSION:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    sget-object v9, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->CANNOT_TOUCHFOCUS_DURING_MF:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    sget-object v10, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->CANNOT_BURST_DUE_TO_BOKEH_MODE:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    sget-object v11, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->ZOOM_NOT_SUPPORTED_IN_BOKEH_EFFECT:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    sget-object v12, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->NIGHT_MODE_NOT_SUPPORTED_IN_BOKEH_EFFECT:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    sget-object v13, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->CANNOT_ZOOM_UNDER_X1_4K_OR_FULL_HD:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    sget-object v14, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->EV_NOT_AVAILABLE:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    sget-object v15, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->NIGHT_SHOOTING_FORCED_CHANGE_TO_AUTO:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    sget-object v16, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->FLASH_FORCED_CHANGE_TO_OFF:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    filled-new-array/range {v0 .. v16}, [Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetmIsToast(Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->mIsToast:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMessageResourceId(Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;)I
    .locals 0

    iget p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->mMessageResourceId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMessageString(Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->mMessageString:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPriority(Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;)Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->mPriority:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 15

    .line 22
    new-instance v7, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    sget-object v5, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGH:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const/4 v6, 0x1

    const-string v1, "CANNOT_BURST_DUE_TO_LOW_BATTERY"

    const/4 v2, 0x0

    const v3, 0x7f0f00d1

    const/4 v4, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V

    sput-object v7, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->CANNOT_BURST_DUE_TO_LOW_BATTERY:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    .line 27
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    sget-object v13, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGH:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const/4 v14, 0x1

    const-string v9, "CANNOT_BURST_IN_DARK_CONDITION"

    const/4 v10, 0x1

    const v11, 0x7f0f00d4

    const/4 v12, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->CANNOT_BURST_IN_DARK_CONDITION:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    .line 32
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    sget-object v6, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGH:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const/4 v7, 0x1

    const-string v2, "BURST_CHANGE_CAMERA_KEY_SETTING"

    const/4 v3, 0x2

    const v4, 0x7f0f00d2

    const/4 v5, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->BURST_CHANGE_CAMERA_KEY_SETTING:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    .line 37
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    sget-object v13, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGH:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const-string v9, "CANNOT_BURST_USING_FRONT_CAMERA"

    const/4 v10, 0x3

    const v11, 0x7f0f00d8

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->CANNOT_BURST_USING_FRONT_CAMERA:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    .line 42
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    sget-object v6, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGH:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const-string v2, "CANNOT_BURST_DUE_TO_FUSION_MODE"

    const/4 v3, 0x4

    const v4, 0x7f0f00d9

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->CANNOT_BURST_DUE_TO_FUSION_MODE:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    .line 47
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    sget-object v13, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGH:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const-string v9, "BURST_IMAGES_ARE_SAVED_TO_INTERNAL_STORAGE"

    const/4 v10, 0x5

    const v11, 0x7f0f00da

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->BURST_IMAGES_ARE_SAVED_TO_INTERNAL_STORAGE:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    .line 52
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    sget-object v6, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGH:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const-string v2, "ZOOM_NOT_AVAILABLE"

    const/4 v3, 0x6

    const v4, 0x7f0f04be

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->ZOOM_NOT_AVAILABLE:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    .line 57
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    sget-object v13, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGH:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const-string v9, "ZOOM_NOT_SUPPORTED_IN_FRONT"

    const/4 v10, 0x7

    const v11, 0x7f0f04bc

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->ZOOM_NOT_SUPPORTED_IN_FRONT:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    .line 62
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    sget-object v6, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGH:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const-string v2, "ISO_CHANGED_BY_FUSION"

    const/16 v3, 0x8

    const v4, 0x7f0f02b3

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->ISO_CHANGED_BY_FUSION:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    .line 67
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    sget-object v13, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGH:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const-string v9, "CANNOT_TOUCHFOCUS_DURING_MF"

    const/16 v10, 0x9

    const v11, 0x7f0f0355

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->CANNOT_TOUCHFOCUS_DURING_MF:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    .line 72
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    sget-object v6, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGH:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const-string v2, "CANNOT_BURST_DUE_TO_BOKEH_MODE"

    const/16 v3, 0xa

    const v4, 0x7f0f00d3

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->CANNOT_BURST_DUE_TO_BOKEH_MODE:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    .line 77
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    sget-object v13, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGH:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const-string v9, "ZOOM_NOT_SUPPORTED_IN_BOKEH_EFFECT"

    const/16 v10, 0xb

    const v11, 0x7f0f04bb

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->ZOOM_NOT_SUPPORTED_IN_BOKEH_EFFECT:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    .line 82
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    sget-object v6, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGH:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const-string v2, "NIGHT_MODE_NOT_SUPPORTED_IN_BOKEH_EFFECT"

    const/16 v3, 0xc

    const v4, 0x7f0f00ca

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->NIGHT_MODE_NOT_SUPPORTED_IN_BOKEH_EFFECT:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    .line 87
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    sget-object v13, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGH:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const-string v9, "CANNOT_ZOOM_UNDER_X1_4K_OR_FULL_HD"

    const/16 v10, 0xd

    const v11, 0x7f0f02f0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->CANNOT_ZOOM_UNDER_X1_4K_OR_FULL_HD:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    .line 92
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    sget-object v6, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGH:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const-string v2, "EV_NOT_AVAILABLE"

    const/16 v3, 0xe

    const v4, 0x7f0f0192

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->EV_NOT_AVAILABLE:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    .line 97
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    sget-object v13, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGH:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const-string v9, "NIGHT_SHOOTING_FORCED_CHANGE_TO_AUTO"

    const/16 v10, 0xf

    const v11, 0x7f0f0241

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->NIGHT_SHOOTING_FORCED_CHANGE_TO_AUTO:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    .line 102
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    sget-object v6, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGH:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const-string v2, "FLASH_FORCED_CHANGE_TO_OFF"

    const/16 v3, 0x10

    const v4, 0x7f0f0240

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->FLASH_FORCED_CHANGE_TO_OFF:Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    .line 21
    invoke-static {}, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->$values()[Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->$VALUES:[Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;",
            "Z)V"
        }
    .end annotation

    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 116
    iput p3, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->mMessageResourceId:I

    .line 117
    iput-object p4, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->mMessageString:Ljava/lang/String;

    .line 118
    iput-object p5, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->mPriority:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    .line 119
    iput-boolean p6, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->mIsToast:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;
    .locals 1

    .line 21
    const-class v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;
    .locals 1

    .line 21
    sget-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->$VALUES:[Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/hint/HintTextTimedOutMessage$MessageType;

    return-object v0
.end method
