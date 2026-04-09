.class public final enum Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher$MonochromeType;
.super Ljava/lang/Enum;
.source "ApplicationLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MonochromeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher$MonochromeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher$MonochromeType;

.field public static final enum MONOCHROME_PHOTO:Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher$MonochromeType;

.field public static final enum MONOCHROME_VIDEO:Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher$MonochromeType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 86
    new-instance v0, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher$MonochromeType;

    const-string v1, "MONOCHROME_PHOTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher$MonochromeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher$MonochromeType;->MONOCHROME_PHOTO:Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher$MonochromeType;

    .line 87
    new-instance v0, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher$MonochromeType;

    const-string v1, "MONOCHROME_VIDEO"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher$MonochromeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher$MonochromeType;->MONOCHROME_VIDEO:Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher$MonochromeType;

    const/4 v0, 0x2

    .line 85
    new-array v0, v0, [Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher$MonochromeType;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher$MonochromeType;->MONOCHROME_PHOTO:Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher$MonochromeType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher$MonochromeType;->MONOCHROME_VIDEO:Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher$MonochromeType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher$MonochromeType;->$VALUES:[Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher$MonochromeType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher$MonochromeType;
    .locals 1

    .line 85
    const-class v0, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher$MonochromeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher$MonochromeType;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher$MonochromeType;
    .locals 1

    .line 85
    sget-object v0, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher$MonochromeType;->$VALUES:[Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher$MonochromeType;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher$MonochromeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher$MonochromeType;

    return-object v0
.end method
