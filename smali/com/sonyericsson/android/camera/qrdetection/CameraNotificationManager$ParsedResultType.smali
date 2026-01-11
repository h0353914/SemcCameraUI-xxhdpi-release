.class final enum Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;
.super Ljava/lang/Enum;
.source "CameraNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ParsedResultType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

.field public static final enum MATTER:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

.field public static final enum MATTER_GMS_FAILED:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

.field public static final enum OTHER:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

.field public static final enum URL:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

.field public static final enum WIFI:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;
    .locals 5

    .line 159
    sget-object v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->URL:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    sget-object v1, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->WIFI:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    sget-object v2, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->MATTER:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    sget-object v3, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->MATTER_GMS_FAILED:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    sget-object v4, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->OTHER:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 160
    new-instance v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    const-string v1, "URL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->URL:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    .line 161
    new-instance v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    const-string v1, "WIFI"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->WIFI:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    .line 162
    new-instance v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    const-string v1, "MATTER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->MATTER:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    .line 163
    new-instance v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    const-string v1, "MATTER_GMS_FAILED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->MATTER_GMS_FAILED:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    .line 164
    new-instance v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    const-string v1, "OTHER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->OTHER:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    .line 159
    invoke-static {}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->$values()[Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->$VALUES:[Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 159
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;
    .locals 1

    .line 159
    const-class v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;
    .locals 1

    .line 159
    sget-object v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->$VALUES:[Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$ParsedResultType;

    return-object v0
.end method
