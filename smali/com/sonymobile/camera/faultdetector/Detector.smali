.class Lcom/sonymobile/camera/faultdetector/Detector;
.super Ljava/lang/Object;


# instance fields
.field private mDetector:Lcom/sonymobile/camera/faultdetector/c;


# direct methods
.method private constructor <init>(Landroid/app/Application;Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sonymobile/camera/faultdetector/c;

    invoke-direct {v0, p1, p2}, Lcom/sonymobile/camera/faultdetector/c;-><init>(Landroid/app/Application;Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;)V

    iput-object v0, p0, Lcom/sonymobile/camera/faultdetector/Detector;->mDetector:Lcom/sonymobile/camera/faultdetector/c;

    return-void
.end method

.method private deinitialize()V
    .locals 0

    iget-object p0, p0, Lcom/sonymobile/camera/faultdetector/Detector;->mDetector:Lcom/sonymobile/camera/faultdetector/c;

    invoke-virtual {p0}, Lcom/sonymobile/camera/faultdetector/c;->b()V

    return-void
.end method

.method private executeAsync(Ljava/util/List;Lcom/sonymobile/camera/faultdetector/DetectorInterface$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/sonymobile/camera/faultdetector/DetectorInterface$Callback;",
            ")V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sonymobile/camera/faultdetector/Detector;->mDetector:Lcom/sonymobile/camera/faultdetector/c;

    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/camera/faultdetector/c;->a(Ljava/util/List;Lcom/sonymobile/camera/faultdetector/DetectorInterface$Callback;)V

    return-void
.end method

.method private getInputSize()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/sonymobile/camera/faultdetector/Detector;->mDetector:Lcom/sonymobile/camera/faultdetector/c;

    invoke-virtual {p0}, Lcom/sonymobile/camera/faultdetector/c;->d()Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method private initialize()Z
    .locals 0

    iget-object p0, p0, Lcom/sonymobile/camera/faultdetector/Detector;->mDetector:Lcom/sonymobile/camera/faultdetector/c;

    invoke-virtual {p0}, Lcom/sonymobile/camera/faultdetector/c;->a()Z

    move-result p0

    return p0
.end method

.method private release()V
    .locals 0

    iget-object p0, p0, Lcom/sonymobile/camera/faultdetector/Detector;->mDetector:Lcom/sonymobile/camera/faultdetector/c;

    invoke-virtual {p0}, Lcom/sonymobile/camera/faultdetector/c;->c()V

    return-void
.end method
