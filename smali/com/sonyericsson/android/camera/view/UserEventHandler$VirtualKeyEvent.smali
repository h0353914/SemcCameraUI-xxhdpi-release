.class public final enum Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEvent;
.super Ljava/lang/Enum;
.source "UserEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/UserEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VirtualKeyEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEvent;

.field public static final enum SMILE_CAPTURE:Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEvent;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEvent;
    .locals 1

    .line 435
    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEvent;->SMILE_CAPTURE:Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEvent;

    filled-new-array {v0}, [Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEvent;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 436
    new-instance v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEvent;

    const-string v1, "SMILE_CAPTURE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEvent;->SMILE_CAPTURE:Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEvent;

    .line 435
    invoke-static {}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEvent;->$values()[Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEvent;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEvent;->$VALUES:[Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 435
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEvent;
    .locals 1

    .line 435
    const-class v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEvent;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEvent;
    .locals 1

    .line 435
    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEvent;->$VALUES:[Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEvent;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/UserEventHandler$VirtualKeyEvent;

    return-object v0
.end method
