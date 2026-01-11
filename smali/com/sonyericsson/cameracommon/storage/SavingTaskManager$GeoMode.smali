.class public final enum Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$GeoMode;
.super Ljava/lang/Enum;
.source "SavingTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GeoMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$GeoMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$GeoMode;

.field public static final enum GEO_OFF:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$GeoMode;

.field public static final enum GEO_ON:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$GeoMode;

.field public static final enum GEO_RESHOW:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$GeoMode;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$GeoMode;
    .locals 3

    .line 146
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$GeoMode;->GEO_ON:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$GeoMode;

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$GeoMode;->GEO_OFF:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$GeoMode;

    sget-object v2, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$GeoMode;->GEO_RESHOW:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$GeoMode;

    filled-new-array {v0, v1, v2}, [Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$GeoMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 147
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$GeoMode;

    const-string v1, "GEO_ON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$GeoMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$GeoMode;->GEO_ON:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$GeoMode;

    .line 148
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$GeoMode;

    const-string v1, "GEO_OFF"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$GeoMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$GeoMode;->GEO_OFF:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$GeoMode;

    .line 149
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$GeoMode;

    const-string v1, "GEO_RESHOW"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$GeoMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$GeoMode;->GEO_RESHOW:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$GeoMode;

    .line 146
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$GeoMode;->$values()[Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$GeoMode;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$GeoMode;->$VALUES:[Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$GeoMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 146
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$GeoMode;
    .locals 1

    .line 146
    const-class v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$GeoMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$GeoMode;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$GeoMode;
    .locals 1

    .line 146
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$GeoMode;->$VALUES:[Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$GeoMode;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$GeoMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$GeoMode;

    return-object v0
.end method
