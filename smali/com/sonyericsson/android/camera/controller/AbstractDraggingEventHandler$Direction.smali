.class public final enum Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;
.super Ljava/lang/Enum;
.source "AbstractDraggingEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

.field public static final enum DOWN:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

.field public static final enum LEFT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

.field public static final enum NONE:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

.field public static final enum RIGHT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

.field public static final enum UP:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;
    .locals 5

    .line 42
    sget-object v0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->NONE:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->UP:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    sget-object v2, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->DOWN:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    sget-object v3, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->RIGHT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    sget-object v4, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->LEFT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 43
    new-instance v0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->NONE:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    .line 44
    new-instance v0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    const-string v1, "UP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->UP:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    .line 45
    new-instance v0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    const-string v1, "DOWN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->DOWN:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    .line 46
    new-instance v0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    const-string v1, "RIGHT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->RIGHT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    .line 47
    new-instance v0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    const-string v1, "LEFT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->LEFT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    .line 42
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->$values()[Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->$VALUES:[Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;
    .locals 1

    .line 42
    const-class v0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;
    .locals 1

    .line 42
    sget-object v0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->$VALUES:[Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    return-object v0
.end method
