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
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;
    .locals 3

    .line 85
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->PHOTO:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    sget-object v2, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->VIDEO:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    filled-new-array {v0, v1, v2}, [Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 86
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    .line 87
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    const-string v1, "PHOTO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->PHOTO:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    .line 88
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    const-string v1, "VIDEO"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->VIDEO:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    .line 85
    invoke-static {}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->$values()[Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    move-result-object v0

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

    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;
    .locals 1

    .line 85
    const-class v0, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;
    .locals 1

    .line 85
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->$VALUES:[Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    return-object v0
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    .line 92
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

    .line 96
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

    .line 100
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->VIDEO:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
