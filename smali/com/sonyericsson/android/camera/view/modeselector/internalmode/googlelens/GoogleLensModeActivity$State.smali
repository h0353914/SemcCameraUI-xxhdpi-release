.class final enum Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;
.super Ljava/lang/Enum;
.source "GoogleLensModeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;

.field public static final enum DONE:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;

.field public static final enum KEYGUARD:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;

.field public static final enum READY:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;
    .locals 3

    .line 60
    sget-object v0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;->READY:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;

    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;->KEYGUARD:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;

    sget-object v2, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;->DONE:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;

    filled-new-array {v0, v1, v2}, [Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 64
    new-instance v0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;->READY:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;

    .line 68
    new-instance v0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;

    const-string v1, "KEYGUARD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;->KEYGUARD:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;

    .line 72
    new-instance v0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;

    const-string v1, "DONE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;->DONE:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;

    .line 60
    invoke-static {}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;->$values()[Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;->$VALUES:[Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;
    .locals 1

    .line 60
    const-class v0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;
    .locals 1

    .line 60
    sget-object v0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;->$VALUES:[Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;

    return-object v0
.end method
