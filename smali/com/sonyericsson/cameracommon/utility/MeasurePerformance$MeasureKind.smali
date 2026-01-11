.class final enum Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;
.super Ljava/lang/Enum;
.source "MeasurePerformance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "MeasureKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

.field public static final enum MEASURE_END:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

.field public static final enum MEASURE_START:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

.field public static final enum MEASURE_START_OVERWRITE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;
    .locals 3

    .line 146
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;->MEASURE_START:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;->MEASURE_START_OVERWRITE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;->MEASURE_END:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    filled-new-array {v0, v1, v2}, [Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 147
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    const-string v1, "MEASURE_START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;->MEASURE_START:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    .line 148
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    const-string v1, "MEASURE_START_OVERWRITE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;->MEASURE_START_OVERWRITE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    .line 149
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    const-string v1, "MEASURE_END"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;->MEASURE_END:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    .line 146
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;->$values()[Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;->$VALUES:[Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;
    .locals 1

    .line 146
    const-class v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;
    .locals 1

    .line 146
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;->$VALUES:[Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    return-object v0
.end method
