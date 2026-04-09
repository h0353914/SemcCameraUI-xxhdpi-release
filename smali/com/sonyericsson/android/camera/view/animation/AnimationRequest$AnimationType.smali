.class public final enum Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;
.super Ljava/lang/Enum;
.source "AnimationRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/animation/AnimationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

.field public static final enum MODE_ICON:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

.field public static final enum MODE_SELECTOR:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

.field public static final enum MODE_TOUCH:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

.field public static final enum MRU_SHORTCUT:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

.field public static final enum NONE:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

.field public static final enum SWITCH_TOUCH:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 28
    new-instance v0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->NONE:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    .line 29
    new-instance v0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    const-string v1, "MODE_TOUCH"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->MODE_TOUCH:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    .line 30
    new-instance v0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    const-string v1, "MODE_ICON"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->MODE_ICON:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    .line 31
    new-instance v0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    const-string v1, "MODE_SELECTOR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->MODE_SELECTOR:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    .line 32
    new-instance v0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    const-string v1, "MRU_SHORTCUT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->MRU_SHORTCUT:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    .line 33
    new-instance v0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    const-string v1, "SWITCH_TOUCH"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->SWITCH_TOUCH:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    const/4 v0, 0x6

    .line 27
    new-array v0, v0, [Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    sget-object v1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->NONE:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->MODE_TOUCH:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->MODE_ICON:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->MODE_SELECTOR:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->MRU_SHORTCUT:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->SWITCH_TOUCH:Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->$VALUES:[Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;
    .locals 1

    .line 27
    const-class v0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;
    .locals 1

    .line 27
    sget-object v0, Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->$VALUES:[Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/animation/AnimationRequest$AnimationType;

    return-object v0
.end method
