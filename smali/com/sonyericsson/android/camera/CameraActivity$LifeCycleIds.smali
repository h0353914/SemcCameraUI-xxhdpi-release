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
.method static constructor <clinit>()V
    .locals 11

    .line 406
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    const-string v1, "ON_CREATE"

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_CREATE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v3, "onCreate()"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;-><init>(Ljava/lang/String;ILcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Ljava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_CREATE:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    .line 409
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    const-string v1, "ON_START"

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_START:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v3, "onStart()"

    const/4 v5, 0x1

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;-><init>(Ljava/lang/String;ILcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Ljava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_START:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    .line 412
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    const-string v1, "ON_RESTART"

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_RESTART:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v3, "onRestart()"

    const/4 v6, 0x2

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;-><init>(Ljava/lang/String;ILcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Ljava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_RESTART:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    .line 415
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    const-string v1, "ON_RESUME"

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_RESUME:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v3, "onResume()"

    const/4 v7, 0x3

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;-><init>(Ljava/lang/String;ILcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Ljava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_RESUME:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    .line 418
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    const-string v1, "ON_PAUSE"

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_PAUSE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v3, "onPause()"

    const/4 v8, 0x4

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;-><init>(Ljava/lang/String;ILcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Ljava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_PAUSE:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    .line 421
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    const-string v1, "ON_STOP"

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_STOP:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v3, "onStop()"

    const/4 v9, 0x5

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;-><init>(Ljava/lang/String;ILcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Ljava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_STOP:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    .line 424
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    const-string v1, "ON_DESTROY"

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_DESTROY:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const-string v3, "onDestroy()"

    const/4 v10, 0x6

    invoke-direct {v0, v1, v10, v2, v3}, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;-><init>(Ljava/lang/String;ILcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Ljava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_DESTROY:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    const/4 v0, 0x7

    .line 405
    new-array v0, v0, [Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_CREATE:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_START:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_RESTART:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_RESUME:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_PAUSE:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_STOP:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    aput-object v1, v0, v9

    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->ON_DESTROY:Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    aput-object v1, v0, v10

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

    .line 434
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 435
    iput-object p3, p0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->mPerformanceIds:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 436
    iput-object p4, p0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->mLog:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4600(Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;)Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;
    .locals 0

    .line 405
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->mPerformanceIds:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;
    .locals 1

    .line 405
    const-class v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;
    .locals 1

    .line 405
    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->$VALUES:[Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 441
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$LifeCycleIds;->mLog:Ljava/lang/String;

    return-object p0
.end method
