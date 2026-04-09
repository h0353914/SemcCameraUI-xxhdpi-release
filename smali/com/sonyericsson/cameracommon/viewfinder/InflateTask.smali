.class public Lcom/sonyericsson/cameracommon/viewfinder/InflateTask;
.super Ljava/lang/Object;
.source "InflateTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/Map<",
        "Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;",
        "Ljava/util/List<",
        "Landroid/view/View;",
        ">;>;>;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "InflateTask"


# instance fields
.field private final mInflateItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;",
            ">;"
        }
    .end annotation
.end field

.field private mInflatedItemMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Ljava/util/List<",
            "Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/InflateTask;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 45
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/InflateTask;->mInflateItemList:Ljava/util/List;

    .line 46
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/InflateTask;->mInflatedItemMap:Ljava/util/Map;

    return-void
.end method

.method private register(Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;)V
    .locals 5

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 67
    :goto_0
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;->getViewCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 68
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/InflateTask;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;->getLayoutId()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/viewfinder/InflateTask;->mInflatedItemMap:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/InflateTask;->call()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public call()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    .line 51
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "InflateTask.call in"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 52
    :cond_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->INFLATE_VIEWS:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 53
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->TASK_INFLATE:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 54
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/InflateTask;->mInflateItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;

    .line 55
    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/InflateTask;->register(Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;)V

    goto :goto_0

    .line 58
    :cond_2
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->TASK_INFLATE:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    .line 59
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->INFLATE_VIEWS:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 60
    :cond_3
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_4

    const-string v0, "InflateTask.call out"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 62
    :cond_4
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/viewfinder/InflateTask;->mInflatedItemMap:Ljava/util/Map;

    return-object p0
.end method
