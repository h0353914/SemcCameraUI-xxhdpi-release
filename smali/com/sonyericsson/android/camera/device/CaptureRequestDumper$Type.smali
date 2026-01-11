.class public final enum Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;
.super Ljava/lang/Enum;
.source "CaptureRequestDumper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;

.field public static final enum DIFF:Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;

.field public static final enum LAST:Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;

.field public static final enum SILENT:Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;
    .locals 3

    .line 51
    sget-object v0, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;->LAST:Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;->DIFF:Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;

    sget-object v2, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;->SILENT:Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;

    filled-new-array {v0, v1, v2}, [Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 52
    new-instance v0, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;

    const-string v1, "LAST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;->LAST:Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;

    .line 53
    new-instance v0, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;

    const-string v1, "DIFF"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;->DIFF:Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;

    .line 54
    new-instance v0, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;

    const-string v1, "SILENT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;->SILENT:Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;

    .line 51
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;->$values()[Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;->$VALUES:[Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;
    .locals 1

    .line 51
    const-class v0, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;
    .locals 1

    .line 51
    sget-object v0, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;->$VALUES:[Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;

    return-object v0
.end method
