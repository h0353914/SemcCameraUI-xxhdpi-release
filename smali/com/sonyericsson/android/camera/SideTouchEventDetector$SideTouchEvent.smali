.class public Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;
.super Ljava/lang/Object;
.source "SideTouchEventDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/SideTouchEventDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SideTouchEvent"
.end annotation


# instance fields
.field public final area:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

.field public final position:I


# direct methods
.method static bridge synthetic -$$Nest$smmake(Landroid/view/MotionEvent;I)Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;
    .locals 0

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;->make(Landroid/view/MotionEvent;I)Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smmake(Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;II)Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;->make(Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;II)Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>(ILcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput p1, p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;->position:I

    .line 86
    iput-object p2, p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;->area:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    return-void
.end method

.method private static make(Landroid/view/MotionEvent;I)Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;
    .locals 2

    .line 91
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->-$$Nest$smfromMotionEvent(Landroid/view/MotionEvent;I)Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    move-result-object v0

    .line 92
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    .line 93
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p0

    float-to-int p0, p0

    .line 90
    invoke-static {v0, v1, p0}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;->make(Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;II)Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;

    move-result-object p0

    return-object p0
.end method

.method private static make(Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;II)Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;
    .locals 2

    .line 97
    sget-object v0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$1;->$SwitchMap$com$sonyericsson$android$camera$SideTouchEventDetector$SideTouchArea:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    .line 108
    new-instance p1, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;-><init>(ILcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;)V

    return-object p1

    .line 104
    :cond_0
    new-instance p1, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;

    invoke-direct {p1, p2, p0}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;-><init>(ILcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;)V

    return-object p1

    .line 100
    :cond_1
    new-instance p2, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;

    invoke-direct {p2, p1, p0}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;-><init>(ILcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;)V

    return-object p2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "position:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", area:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchEvent;->area:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
