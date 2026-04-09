.class public final enum Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;
.super Ljava/lang/Enum;
.source "TutorialController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TutorialType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

.field public static final enum DUAL_CAMERA:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

.field public static final enum EYE_GUIDE:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

.field public static final enum HAND_SHUTTER:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

.field public static final enum MANUAL_FUSION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

.field public static final enum PREDICTIVE_LAUNCH:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

.field public static final enum SAVE_LOCATION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

.field public static final enum SIDE_SENSE:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

.field public static final enum STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

.field public static final enum SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

.field public static final enum SUPER_SLOW_MOTION_MORE_OPTIONS:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

.field public static final enum SUPER_SLOW_MOTION_SHOT:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

.field public static final enum VIDEO_FUSION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;


# instance fields
.field public final messageTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/setting/MessageType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 99
    new-instance v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    const-string v1, "SAVE_LOCATION"

    const/4 v2, 0x1

    new-array v3, v2, [Lcom/sonyericsson/android/camera/setting/MessageType;

    sget-object v4, Lcom/sonyericsson/android/camera/setting/MessageType;->NO_MESSAGE:Lcom/sonyericsson/android/camera/setting/MessageType;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v5, v3}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;-><init>(Ljava/lang/String;I[Lcom/sonyericsson/android/camera/setting/MessageType;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->SAVE_LOCATION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    .line 100
    new-instance v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    const-string v1, "PREDICTIVE_LAUNCH"

    new-array v3, v2, [Lcom/sonyericsson/android/camera/setting/MessageType;

    sget-object v4, Lcom/sonyericsson/android/camera/setting/MessageType;->NO_MESSAGE:Lcom/sonyericsson/android/camera/setting/MessageType;

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;-><init>(Ljava/lang/String;I[Lcom/sonyericsson/android/camera/setting/MessageType;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->PREDICTIVE_LAUNCH:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    .line 101
    new-instance v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    const-string v1, "DUAL_CAMERA"

    new-array v3, v2, [Lcom/sonyericsson/android/camera/setting/MessageType;

    sget-object v4, Lcom/sonyericsson/android/camera/setting/MessageType;->NO_MESSAGE:Lcom/sonyericsson/android/camera/setting/MessageType;

    aput-object v4, v3, v5

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;-><init>(Ljava/lang/String;I[Lcom/sonyericsson/android/camera/setting/MessageType;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->DUAL_CAMERA:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    .line 102
    new-instance v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    const-string v1, "EYE_GUIDE"

    new-array v3, v2, [Lcom/sonyericsson/android/camera/setting/MessageType;

    sget-object v6, Lcom/sonyericsson/android/camera/setting/MessageType;->TUTORIAL_EYE_GUIDE:Lcom/sonyericsson/android/camera/setting/MessageType;

    aput-object v6, v3, v5

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v3}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;-><init>(Ljava/lang/String;I[Lcom/sonyericsson/android/camera/setting/MessageType;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->EYE_GUIDE:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    .line 103
    new-instance v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    const-string v1, "HAND_SHUTTER"

    new-array v3, v2, [Lcom/sonyericsson/android/camera/setting/MessageType;

    sget-object v7, Lcom/sonyericsson/android/camera/setting/MessageType;->TUTORIAL_HAND_SHUTTER:Lcom/sonyericsson/android/camera/setting/MessageType;

    aput-object v7, v3, v5

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v3}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;-><init>(Ljava/lang/String;I[Lcom/sonyericsson/android/camera/setting/MessageType;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->HAND_SHUTTER:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    .line 104
    new-instance v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    const-string v1, "SUPER_SLOW_MOTION_MORE_OPTIONS"

    new-array v3, v2, [Lcom/sonyericsson/android/camera/setting/MessageType;

    sget-object v8, Lcom/sonyericsson/android/camera/setting/MessageType;->TUTORIAL_SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/setting/MessageType;

    aput-object v8, v3, v5

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v3}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;-><init>(Ljava/lang/String;I[Lcom/sonyericsson/android/camera/setting/MessageType;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->SUPER_SLOW_MOTION_MORE_OPTIONS:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    .line 105
    new-instance v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    const-string v1, "SUPER_SLOW_MOTION"

    new-array v3, v2, [Lcom/sonyericsson/android/camera/setting/MessageType;

    sget-object v9, Lcom/sonyericsson/android/camera/setting/MessageType;->NO_MESSAGE:Lcom/sonyericsson/android/camera/setting/MessageType;

    aput-object v9, v3, v5

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v3}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;-><init>(Ljava/lang/String;I[Lcom/sonyericsson/android/camera/setting/MessageType;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    .line 106
    new-instance v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    const-string v1, "SUPER_SLOW_MOTION_SHOT"

    new-array v3, v2, [Lcom/sonyericsson/android/camera/setting/MessageType;

    sget-object v10, Lcom/sonyericsson/android/camera/setting/MessageType;->TUTORIAL_SUPER_SLOW_MOTION_SHOT:Lcom/sonyericsson/android/camera/setting/MessageType;

    aput-object v10, v3, v5

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v3}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;-><init>(Ljava/lang/String;I[Lcom/sonyericsson/android/camera/setting/MessageType;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->SUPER_SLOW_MOTION_SHOT:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    .line 107
    new-instance v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    const-string v1, "STANDARD_SLOW_MOTION"

    new-array v3, v2, [Lcom/sonyericsson/android/camera/setting/MessageType;

    sget-object v11, Lcom/sonyericsson/android/camera/setting/MessageType;->TUTORIAL_STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/setting/MessageType;

    aput-object v11, v3, v5

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v3}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;-><init>(Ljava/lang/String;I[Lcom/sonyericsson/android/camera/setting/MessageType;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    .line 108
    new-instance v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    const-string v1, "MANUAL_FUSION"

    new-array v3, v2, [Lcom/sonyericsson/android/camera/setting/MessageType;

    sget-object v12, Lcom/sonyericsson/android/camera/setting/MessageType;->TUTORIAL_MANUAL_FUSION:Lcom/sonyericsson/android/camera/setting/MessageType;

    aput-object v12, v3, v5

    const/16 v12, 0x9

    invoke-direct {v0, v1, v12, v3}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;-><init>(Ljava/lang/String;I[Lcom/sonyericsson/android/camera/setting/MessageType;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->MANUAL_FUSION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    .line 109
    new-instance v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    const-string v1, "VIDEO_FUSION"

    new-array v3, v2, [Lcom/sonyericsson/android/camera/setting/MessageType;

    sget-object v13, Lcom/sonyericsson/android/camera/setting/MessageType;->TUTORIAL_VIDEO_FUSION:Lcom/sonyericsson/android/camera/setting/MessageType;

    aput-object v13, v3, v5

    const/16 v13, 0xa

    invoke-direct {v0, v1, v13, v3}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;-><init>(Ljava/lang/String;I[Lcom/sonyericsson/android/camera/setting/MessageType;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->VIDEO_FUSION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    .line 110
    new-instance v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    const-string v1, "SIDE_SENSE"

    new-array v3, v2, [Lcom/sonyericsson/android/camera/setting/MessageType;

    sget-object v14, Lcom/sonyericsson/android/camera/setting/MessageType;->NO_MESSAGE:Lcom/sonyericsson/android/camera/setting/MessageType;

    aput-object v14, v3, v5

    const/16 v14, 0xb

    invoke-direct {v0, v1, v14, v3}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;-><init>(Ljava/lang/String;I[Lcom/sonyericsson/android/camera/setting/MessageType;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->SIDE_SENSE:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    const/16 v0, 0xc

    .line 98
    new-array v0, v0, [Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    sget-object v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->SAVE_LOCATION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->PREDICTIVE_LAUNCH:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->DUAL_CAMERA:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->EYE_GUIDE:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->HAND_SHUTTER:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->SUPER_SLOW_MOTION_MORE_OPTIONS:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->SUPER_SLOW_MOTION_SHOT:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->MANUAL_FUSION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->VIDEO_FUSION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    aput-object v1, v0, v13

    sget-object v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->SIDE_SENSE:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    aput-object v1, v0, v14

    sput-object v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->$VALUES:[Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[Lcom/sonyericsson/android/camera/setting/MessageType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/sonyericsson/android/camera/setting/MessageType;",
            ")V"
        }
    .end annotation

    .line 114
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 115
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->messageTypes:Ljava/util/List;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;
    .locals 1

    .line 98
    const-class v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;
    .locals 1

    .line 98
    sget-object v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->$VALUES:[Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    return-object v0
.end method
