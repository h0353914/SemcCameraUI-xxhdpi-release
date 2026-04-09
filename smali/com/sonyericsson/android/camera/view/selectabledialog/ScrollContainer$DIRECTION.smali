.class final enum Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$DIRECTION;
.super Ljava/lang/Enum;
.source "ScrollContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "DIRECTION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$DIRECTION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$DIRECTION;

.field public static final enum DOWN:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$DIRECTION;

.field public static final enum UP:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$DIRECTION;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 82
    new-instance v0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$DIRECTION;

    const-string v1, "UP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$DIRECTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$DIRECTION;->UP:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$DIRECTION;

    .line 83
    new-instance v0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$DIRECTION;

    const-string v1, "DOWN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$DIRECTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$DIRECTION;->DOWN:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$DIRECTION;

    const/4 v0, 0x2

    .line 81
    new-array v0, v0, [Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$DIRECTION;

    sget-object v1, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$DIRECTION;->UP:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$DIRECTION;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$DIRECTION;->DOWN:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$DIRECTION;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$DIRECTION;->$VALUES:[Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$DIRECTION;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$DIRECTION;
    .locals 1

    .line 81
    const-class v0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$DIRECTION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$DIRECTION;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$DIRECTION;
    .locals 1

    .line 81
    sget-object v0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$DIRECTION;->$VALUES:[Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$DIRECTION;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$DIRECTION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$DIRECTION;

    return-object v0
.end method
