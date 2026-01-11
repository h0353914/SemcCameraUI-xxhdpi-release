.class public final enum Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;
.super Ljava/lang/Enum;
.source "AnimationRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimationDegree"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

.field public static final enum CANCEL:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

.field public static final enum EXEC:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

.field public static final enum FINISH:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

.field public static final enum START:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;
    .locals 4

    .line 39
    sget-object v0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->START:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    sget-object v1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->CANCEL:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    sget-object v2, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->EXEC:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    sget-object v3, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->FINISH:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 40
    new-instance v0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->START:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    .line 41
    new-instance v0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    const-string v1, "CANCEL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->CANCEL:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    .line 42
    new-instance v0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    const-string v1, "EXEC"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->EXEC:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    .line 43
    new-instance v0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    const-string v1, "FINISH"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->FINISH:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    .line 39
    invoke-static {}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->$values()[Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->$VALUES:[Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;
    .locals 1

    .line 39
    const-class v0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;
    .locals 1

    .line 39
    sget-object v0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->$VALUES:[Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationDegree;

    return-object v0
.end method
