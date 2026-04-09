.class synthetic Lcom/sonyericsson/android/camera/SideTouchEventDetector$1;
.super Ljava/lang/Object;
.source "SideTouchEventDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/SideTouchEventDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$SideTouchEventDetector$SideTouchArea:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$SideTouchEventDetector$State:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 256
    invoke-static {}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;->values()[Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$1;->$SwitchMap$com$sonyericsson$android$camera$SideTouchEventDetector$State:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/camera/SideTouchEventDetector$1;->$SwitchMap$com$sonyericsson$android$camera$SideTouchEventDetector$State:[I

    sget-object v2, Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;->IDLING:Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/sonyericsson/android/camera/SideTouchEventDetector$1;->$SwitchMap$com$sonyericsson$android$camera$SideTouchEventDetector$State:[I

    sget-object v3, Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;->SCROLLING:Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/sonyericsson/android/camera/SideTouchEventDetector$1;->$SwitchMap$com$sonyericsson$android$camera$SideTouchEventDetector$State:[I

    sget-object v4, Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;->DOUBLE_TAPPING:Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$State;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 97
    :catch_2
    invoke-static {}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->values()[Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/sonyericsson/android/camera/SideTouchEventDetector$1;->$SwitchMap$com$sonyericsson$android$camera$SideTouchEventDetector$SideTouchArea:[I

    :try_start_3
    sget-object v3, Lcom/sonyericsson/android/camera/SideTouchEventDetector$1;->$SwitchMap$com$sonyericsson$android$camera$SideTouchEventDetector$SideTouchArea:[I

    sget-object v4, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->TOP:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$1;->$SwitchMap$com$sonyericsson$android$camera$SideTouchEventDetector$SideTouchArea:[I

    sget-object v3, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->BOTTOM:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$1;->$SwitchMap$com$sonyericsson$android$camera$SideTouchEventDetector$SideTouchArea:[I

    sget-object v1, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->LEFT:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$1;->$SwitchMap$com$sonyericsson$android$camera$SideTouchEventDetector$SideTouchArea:[I

    sget-object v1, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->RIGHT:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    return-void
.end method
