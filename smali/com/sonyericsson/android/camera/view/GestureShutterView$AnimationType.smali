.class final enum Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;
.super Ljava/lang/Enum;
.source "GestureShutterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/GestureShutterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AnimationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;

.field public static final enum CONFRIMING:Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;

.field public static final enum GROWING_CIRCLE:Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;

.field public static final enum NONE:Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 36
    new-instance v0, Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;->NONE:Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;

    .line 37
    new-instance v0, Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;

    const-string v1, "GROWING_CIRCLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;->GROWING_CIRCLE:Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;

    .line 38
    new-instance v0, Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;

    const-string v1, "CONFRIMING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;->CONFRIMING:Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;

    const/4 v0, 0x3

    .line 35
    new-array v0, v0, [Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;

    sget-object v1, Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;->NONE:Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;->GROWING_CIRCLE:Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;->CONFRIMING:Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;->$VALUES:[Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;
    .locals 1

    .line 35
    const-class v0, Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;
    .locals 1

    .line 35
    sget-object v0, Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;->$VALUES:[Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationType;

    return-object v0
.end method
