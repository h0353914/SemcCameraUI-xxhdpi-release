.class final enum Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;
.super Ljava/lang/Enum;
.source "SetupWizardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/SetupWizardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "InterruptedBy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

.field public static final enum LOCATION_SETTING:Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

.field public static final enum NONE:Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

.field public static final enum REQUEST_PERMISSION:Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

.field public static final enum SIDE_SENSE_SETTING:Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 211
    new-instance v0, Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;->NONE:Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    .line 212
    new-instance v0, Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    const-string v1, "REQUEST_PERMISSION"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;->REQUEST_PERMISSION:Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    .line 213
    new-instance v0, Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    const-string v1, "LOCATION_SETTING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;->LOCATION_SETTING:Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    .line 214
    new-instance v0, Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    const-string v1, "SIDE_SENSE_SETTING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;->SIDE_SENSE_SETTING:Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    const/4 v0, 0x4

    .line 210
    new-array v0, v0, [Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    sget-object v1, Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;->NONE:Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;->REQUEST_PERMISSION:Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;->LOCATION_SETTING:Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;->SIDE_SENSE_SETTING:Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;->$VALUES:[Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 210
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;
    .locals 1

    .line 210
    const-class v0, Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;
    .locals 1

    .line 210
    sget-object v0, Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;->$VALUES:[Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    return-object v0
.end method
