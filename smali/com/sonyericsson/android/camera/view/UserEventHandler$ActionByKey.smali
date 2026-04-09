.class final enum Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;
.super Ljava/lang/Enum;
.source "UserEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/UserEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ActionByKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

.field public static final enum CAPTURE:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

.field public static final enum CAPTURE_BURST:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

.field public static final enum NONE:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

.field public static final enum READY:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

.field public static final enum REJECT:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 699
    new-instance v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->READY:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    .line 702
    new-instance v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    const-string v1, "REJECT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->REJECT:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    .line 705
    new-instance v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    const-string v1, "CAPTURE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->CAPTURE:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    .line 708
    new-instance v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    const-string v1, "CAPTURE_BURST"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->CAPTURE_BURST:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    .line 711
    new-instance v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    const-string v1, "NONE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->NONE:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    const/4 v0, 0x5

    .line 697
    new-array v0, v0, [Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    sget-object v1, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->READY:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->REJECT:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->CAPTURE:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->CAPTURE_BURST:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->NONE:Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->$VALUES:[Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 697
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;
    .locals 1

    .line 697
    const-class v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;
    .locals 1

    .line 697
    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->$VALUES:[Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/UserEventHandler$ActionByKey;

    return-object v0
.end method
