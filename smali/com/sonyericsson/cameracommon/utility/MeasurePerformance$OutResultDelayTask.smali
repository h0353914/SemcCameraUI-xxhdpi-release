.class Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$OutResultDelayTask;
.super Ljava/lang/Object;
.source "MeasurePerformance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OutResultDelayTask"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 394
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->outResult()V

    return-void
.end method
