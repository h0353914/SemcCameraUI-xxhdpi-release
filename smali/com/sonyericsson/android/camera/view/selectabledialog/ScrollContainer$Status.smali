.class public final enum Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;
.super Ljava/lang/Enum;
.source "ScrollContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

.field public static final enum CLOSING:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

.field public static final enum EXIT:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

.field public static final enum FULLSCREEN:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

.field public static final enum IDLE:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

.field public static final enum MOVING:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

.field public static final enum OPENED:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

.field public static final enum OPENING:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;
    .locals 7

    .line 94
    sget-object v0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->IDLE:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    sget-object v1, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->EXIT:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    sget-object v2, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->OPENED:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    sget-object v3, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->FULLSCREEN:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    sget-object v4, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->MOVING:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    sget-object v5, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->OPENING:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    sget-object v6, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->CLOSING:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    filled-new-array/range {v0 .. v6}, [Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 95
    new-instance v0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->IDLE:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    new-instance v0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    const-string v1, "EXIT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->EXIT:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    new-instance v0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    const-string v1, "OPENED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->OPENED:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    new-instance v0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    const-string v1, "FULLSCREEN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->FULLSCREEN:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    new-instance v0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    const-string v1, "MOVING"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->MOVING:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    new-instance v0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    const-string v1, "OPENING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->OPENING:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    new-instance v0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    const-string v1, "CLOSING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->CLOSING:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    .line 94
    invoke-static {}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->$values()[Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->$VALUES:[Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;
    .locals 1

    .line 94
    const-class v0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;
    .locals 1

    .line 94
    sget-object v0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->$VALUES:[Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    return-object v0
.end method
