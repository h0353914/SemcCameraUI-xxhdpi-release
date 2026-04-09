.class Lcom/sonyericsson/android/camera/CameraActivity$ViewFinderInitializationTask;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewFinderInitializationTask"
.end annotation


# instance fields
.field private final mViewFinderImpl:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V
    .locals 0

    .line 1158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1159
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$ViewFinderInitializationTask;->mViewFinderImpl:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/CameraActivity$1;)V
    .locals 0

    .line 1150
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity$ViewFinderInitializationTask;-><init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1164
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->TASK_VIEW_FINDER_INITIALIZATION:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 1165
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$ViewFinderInitializationTask;->mViewFinderImpl:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->initialize()V

    .line 1166
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$ViewFinderInitializationTask;->mViewFinderImpl:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->setContentView()V

    .line 1167
    sget-object p0, Lcom/sonyericsson/android/camera/util/PerfLog;->TASK_VIEW_FINDER_INITIALIZATION:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    return-void
.end method
