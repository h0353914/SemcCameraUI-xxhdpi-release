.class public final enum Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;
.super Ljava/lang/Enum;
.source "UserEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/UserEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ZoomEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;

.field public static final enum CHANGE:Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;

.field public static final enum DESIGNATION:Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;

.field public static final enum END:Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;

.field public static final enum START:Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;
    .locals 4

    .line 459
    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;->START:Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;

    sget-object v1, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;->CHANGE:Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;

    sget-object v2, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;->END:Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;

    sget-object v3, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;->DESIGNATION:Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 460
    new-instance v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;->START:Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;

    .line 461
    new-instance v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;

    const-string v1, "CHANGE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;->CHANGE:Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;

    .line 462
    new-instance v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;

    const-string v1, "END"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;->END:Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;

    .line 463
    new-instance v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;

    const-string v1, "DESIGNATION"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;->DESIGNATION:Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;

    .line 459
    invoke-static {}, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;->$values()[Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;->$VALUES:[Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 459
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;
    .locals 1

    .line 459
    const-class v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;
    .locals 1

    .line 459
    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;->$VALUES:[Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/UserEventHandler$ZoomEvent;

    return-object v0
.end method
