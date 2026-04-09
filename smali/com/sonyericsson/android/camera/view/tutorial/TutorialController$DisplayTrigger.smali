.class public final enum Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;
.super Ljava/lang/Enum;
.source "TutorialController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisplayTrigger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;

.field public static final enum CHANGE_MANUAL_FUSION_SETTING:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;

.field public static final enum CHANGE_MODE:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;

.field public static final enum CHANGE_TO_STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;

.field public static final enum CHANGE_TO_SUPER_SLOW_MOTION_SHOT:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;

.field public static final enum SETUP_WIZARD:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 88
    new-instance v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;

    const-string v1, "SETUP_WIZARD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;->SETUP_WIZARD:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;

    .line 89
    new-instance v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;

    const-string v1, "CHANGE_MODE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;->CHANGE_MODE:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;

    .line 90
    new-instance v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;

    const-string v1, "CHANGE_TO_SUPER_SLOW_MOTION_SHOT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;->CHANGE_TO_SUPER_SLOW_MOTION_SHOT:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;

    .line 91
    new-instance v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;

    const-string v1, "CHANGE_TO_STANDARD_SLOW_MOTION"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;->CHANGE_TO_STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;

    .line 92
    new-instance v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;

    const-string v1, "CHANGE_MANUAL_FUSION_SETTING"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;->CHANGE_MANUAL_FUSION_SETTING:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;

    const/4 v0, 0x5

    .line 87
    new-array v0, v0, [Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;

    sget-object v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;->SETUP_WIZARD:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;->CHANGE_MODE:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;->CHANGE_TO_SUPER_SLOW_MOTION_SHOT:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;->CHANGE_TO_STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;->CHANGE_MANUAL_FUSION_SETTING:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;->$VALUES:[Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;
    .locals 1

    .line 87
    const-class v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;
    .locals 1

    .line 87
    sget-object v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;->$VALUES:[Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;

    return-object v0
.end method
