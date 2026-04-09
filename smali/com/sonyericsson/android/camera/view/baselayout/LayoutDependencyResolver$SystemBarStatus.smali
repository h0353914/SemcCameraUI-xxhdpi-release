.class public final enum Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$SystemBarStatus;
.super Ljava/lang/Enum;
.source "LayoutDependencyResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SystemBarStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$SystemBarStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$SystemBarStatus;

.field public static final enum ALWAYS_CANCELED:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$SystemBarStatus;

.field public static final enum REGION_OVERLAID:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$SystemBarStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 54
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$SystemBarStatus;

    const-string v1, "ALWAYS_CANCELED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$SystemBarStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$SystemBarStatus;->ALWAYS_CANCELED:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$SystemBarStatus;

    .line 55
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$SystemBarStatus;

    const-string v1, "REGION_OVERLAID"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$SystemBarStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$SystemBarStatus;->REGION_OVERLAID:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$SystemBarStatus;

    const/4 v0, 0x2

    .line 53
    new-array v0, v0, [Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$SystemBarStatus;

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$SystemBarStatus;->ALWAYS_CANCELED:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$SystemBarStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$SystemBarStatus;->REGION_OVERLAID:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$SystemBarStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$SystemBarStatus;->$VALUES:[Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$SystemBarStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$SystemBarStatus;
    .locals 1

    .line 53
    const-class v0, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$SystemBarStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$SystemBarStatus;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$SystemBarStatus;
    .locals 1

    .line 53
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$SystemBarStatus;->$VALUES:[Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$SystemBarStatus;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$SystemBarStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$SystemBarStatus;

    return-object v0
.end method
