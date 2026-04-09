.class public final enum Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$NavigationBarVisibility;
.super Ljava/lang/Enum;
.source "BaseLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NavigationBarVisibility"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$NavigationBarVisibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$NavigationBarVisibility;

.field public static final enum LOW_PROFILE:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$NavigationBarVisibility;

.field public static final enum VISIBLE:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$NavigationBarVisibility;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 191
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$NavigationBarVisibility;

    const-string v1, "VISIBLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$NavigationBarVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$NavigationBarVisibility;->VISIBLE:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$NavigationBarVisibility;

    .line 192
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$NavigationBarVisibility;

    const-string v1, "LOW_PROFILE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$NavigationBarVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$NavigationBarVisibility;->LOW_PROFILE:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$NavigationBarVisibility;

    const/4 v0, 0x2

    .line 190
    new-array v0, v0, [Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$NavigationBarVisibility;

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$NavigationBarVisibility;->VISIBLE:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$NavigationBarVisibility;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$NavigationBarVisibility;->LOW_PROFILE:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$NavigationBarVisibility;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$NavigationBarVisibility;->$VALUES:[Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$NavigationBarVisibility;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 190
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$NavigationBarVisibility;
    .locals 1

    .line 190
    const-class v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$NavigationBarVisibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$NavigationBarVisibility;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$NavigationBarVisibility;
    .locals 1

    .line 190
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$NavigationBarVisibility;->$VALUES:[Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$NavigationBarVisibility;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$NavigationBarVisibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$NavigationBarVisibility;

    return-object v0
.end method
