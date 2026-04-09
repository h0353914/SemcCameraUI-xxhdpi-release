.class public final enum Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;
.super Ljava/lang/Enum;
.source "CapturingModeAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VisibilityType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;

.field public static final enum Normal:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;

.field public static final enum Oneshot:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;

.field public static final enum Shortcut:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;


# instance fields
.field final mColumn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 60
    new-instance v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;

    const-string v1, "Normal"

    const-string v2, "visibility_normal"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;->Normal:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;

    .line 62
    new-instance v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;

    const-string v1, "Oneshot"

    const-string v2, "visibility_oneshot"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;->Oneshot:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;

    .line 64
    new-instance v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;

    const-string v1, "Shortcut"

    const-string v2, "visibility_shortcut"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;->Shortcut:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;

    const/4 v0, 0x3

    .line 58
    new-array v0, v0, [Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;

    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;->Normal:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;->Oneshot:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;->Shortcut:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;->$VALUES:[Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;->mColumn:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;
    .locals 1

    .line 58
    const-class v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;
    .locals 1

    .line 58
    sget-object v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;->$VALUES:[Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;

    return-object v0
.end method
