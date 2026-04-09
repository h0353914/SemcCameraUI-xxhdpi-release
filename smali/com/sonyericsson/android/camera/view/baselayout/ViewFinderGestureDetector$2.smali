.class synthetic Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$2;
.super Ljava/lang/Object;
.source "ViewFinderGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$view$baselayout$ViewFinderGestureDetector$Direction:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 367
    invoke-static {}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;->values()[Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$2;->$SwitchMap$com$sonyericsson$android$camera$view$baselayout$ViewFinderGestureDetector$Direction:[I

    :try_start_0
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$2;->$SwitchMap$com$sonyericsson$android$camera$view$baselayout$ViewFinderGestureDetector$Direction:[I

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;->HORIZONTAL:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$2;->$SwitchMap$com$sonyericsson$android$camera$view$baselayout$ViewFinderGestureDetector$Direction:[I

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;->VERTICAL:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$2;->$SwitchMap$com$sonyericsson$android$camera$view$baselayout$ViewFinderGestureDetector$Direction:[I

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;->NONE:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
