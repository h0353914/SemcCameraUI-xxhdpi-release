.class public final enum Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/camera/faultdetector/DetectorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DetectorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum EYE_BLINK_DETECTOR:Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;

.field public static final enum IN_HOUSE_DETECTOR:Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;

.field private static final synthetic a:[Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;

    const-string v1, "IN_HOUSE_DETECTOR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;->IN_HOUSE_DETECTOR:Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;

    new-instance v1, Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;

    const-string v2, "EYE_BLINK_DETECTOR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;->EYE_BLINK_DETECTOR:Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;

    filled-new-array {v0, v1}, [Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;->a:[Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;
    .locals 1

    const-class v0, Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;
    .locals 1

    sget-object v0, Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;->a:[Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;

    invoke-virtual {v0}, [Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;

    return-object v0
.end method
