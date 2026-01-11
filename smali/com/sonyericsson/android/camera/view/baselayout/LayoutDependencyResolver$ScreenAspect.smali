.class public final enum Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;
.super Ljava/lang/Enum;
.source "LayoutDependencyResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScreenAspect"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

.field public static final enum EIGHTEEN_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

.field public static final enum NOT_DEFINED:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

.field public static final enum SIXTEEN_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

.field public static final enum TWENTYONE_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;


# instance fields
.field private final mScreenAspectRatio:F


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;
    .locals 4

    .line 53
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->NOT_DEFINED:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->SIXTEEN_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    sget-object v2, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->EIGHTEEN_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    sget-object v3, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->TWENTYONE_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 54
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    const-string v3, "NOT_DEFINED"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->NOT_DEFINED:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    .line 55
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    const/4 v1, 0x1

    const v2, 0x3fe38e39

    const-string v3, "SIXTEEN_NINE"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->SIXTEEN_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    .line 56
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    const/4 v1, 0x2

    const/high16 v2, 0x40000000    # 2.0f

    const-string v3, "EIGHTEEN_NINE"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->EIGHTEEN_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    .line 57
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    const/4 v1, 0x3

    const v2, 0x40155555

    const-string v3, "TWENTYONE_NINE"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->TWENTYONE_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    .line 53
    invoke-static {}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->$values()[Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->$VALUES:[Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 62
    iput p3, p0, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->mScreenAspectRatio:F

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;
    .locals 1

    .line 53
    const-class v0, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;
    .locals 1

    .line 53
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->$VALUES:[Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    return-object v0
.end method


# virtual methods
.method public getScreenAspectRatio()F
    .locals 0

    .line 66
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->mScreenAspectRatio:F

    return p0
.end method
