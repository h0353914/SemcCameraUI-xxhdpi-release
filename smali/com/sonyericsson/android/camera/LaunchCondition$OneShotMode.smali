.class public final enum Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;
.super Ljava/lang/Enum;
.source "LaunchCondition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/LaunchCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OneShotMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

.field public static final enum NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

.field public static final enum PHOTO:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

.field public static final enum VIDEO:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 63
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    .line 64
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    const-string v1, "PHOTO"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->PHOTO:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    .line 65
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    const-string v1, "VIDEO"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->VIDEO:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    const/4 v0, 0x3

    .line 62
    new-array v0, v0, [Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->PHOTO:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->VIDEO:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->$VALUES:[Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;
    .locals 1

    .line 62
    const-class v0, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;
    .locals 1

    .line 62
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->$VALUES:[Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    return-object v0
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    .line 69
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPhoto()Z
    .locals 1

    .line 73
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->PHOTO:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isVideo()Z
    .locals 1

    .line 77
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->VIDEO:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
