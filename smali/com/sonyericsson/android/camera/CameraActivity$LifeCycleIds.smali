.class public final enum Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;
.super Ljava/lang/Enum;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LifeCycleIds"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

.field public static final enum ON_CREATE:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

.field public static final enum ON_DESTROY:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

.field public static final enum ON_PAUSE:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

.field public static final enum ON_RESTART:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

.field public static final enum ON_RESUME:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

.field public static final enum ON_START:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

.field public static final enum ON_STOP:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;


# instance fields
.field private final mLog:Ljava/lang/String;

.field private final mPerformanceIds:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;
    .locals 7

    .line 408
    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_CREATE:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_START:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    sget-object v2, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_RESTART:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    sget-object v3, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_RESUME:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    sget-object v4, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_PAUSE:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    sget-object v5, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_STOP:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    sget-object v6, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_DESTROY:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    filled-new-array/range {v0 .. v6}, [Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetmPerformanceIds(Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->mPerformanceIds:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 409
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_CREATE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v2, "onCreate()"

    const-string v3, "ON_CREATE"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;-><init>(Ljava/lang/String;ILcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Ljava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_CREATE:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    .line 412
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_START:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v2, "onStart()"

    const-string v3, "ON_START"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;-><init>(Ljava/lang/String;ILcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Ljava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_START:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    .line 415
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_RESTART:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v2, "onRestart()"

    const-string v3, "ON_RESTART"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;-><init>(Ljava/lang/String;ILcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Ljava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_RESTART:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    .line 418
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_RESUME:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v2, "onResume()"

    const-string v3, "ON_RESUME"

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;-><init>(Ljava/lang/String;ILcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Ljava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_RESUME:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    .line 421
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_PAUSE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v2, "onPause()"

    const-string v3, "ON_PAUSE"

    const/4 v4, 0x4

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;-><init>(Ljava/lang/String;ILcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Ljava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_PAUSE:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    .line 424
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_STOP:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v2, "onStop()"

    const-string v3, "ON_STOP"

    const/4 v4, 0x5

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;-><init>(Ljava/lang/String;ILcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Ljava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_STOP:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    .line 427
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_DESTROY:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v2, "onDestroy()"

    const-string v3, "ON_DESTROY"

    const/4 v4, 0x6

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;-><init>(Ljava/lang/String;ILcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Ljava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_DESTROY:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    .line 408
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->$values()[Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->$VALUES:[Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 437
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 438
    iput-object p3, p0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->mPerformanceIds:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 439
    iput-object p4, p0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->mLog:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;
    .locals 1

    .line 408
    const-class v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;
    .locals 1

    .line 408
    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->$VALUES:[Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 444
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->mLog:Ljava/lang/String;

    return-object p0
.end method
