.class public final enum Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;
.super Ljava/lang/Enum;
.source "LaunchCondition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/LaunchCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ExtraOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

.field public static final enum LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

.field public static final enum NONE:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

.field public static final enum OPEN_SETTINGS_MENU:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 47
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    .line 52
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    const-string v1, "OPEN_SETTINGS_MENU"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;->OPEN_SETTINGS_MENU:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    .line 56
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    const-string v1, "LAUNCH_AND_CAPTURE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    const/4 v0, 0x3

    .line 46
    new-array v0, v0, [Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;->OPEN_SETTINGS_MENU:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;->$VALUES:[Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;
    .locals 1

    .line 46
    const-class v0, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;
    .locals 1

    .line 46
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;->$VALUES:[Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    return-object v0
.end method
