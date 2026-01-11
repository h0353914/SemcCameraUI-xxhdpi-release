.class public Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;
.super Ljava/lang/Object;
.source "QrDetectionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController$QrDetectResultListener;
    }
.end annotation


# instance fields
.field private mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

.field private mImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;

.field private mIsOneShot:Z

.field private mIsPreviewing:Z

.field private mIsQRDetectionOn:Z

.field private mQrDetectResultListener:Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController$QrDetectResultListener;

.field private mQrDetector:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

.field private mQrResultListener:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrResultListener;

.field private mUiScheduler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic -$$Nest$fgetmQrResultListener(Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;)Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrResultListener;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mQrResultListener:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrResultListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsPreviewing(Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mIsPreviewing:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetMassagedText(Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;Lcom/google/zxing/Result;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrResultListener;)V
    .locals 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mIsQRDetectionOn:Z

    .line 25
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mIsOneShot:Z

    .line 26
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->UNKNOWN:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const/4 v1, 0x0

    .line 27
    iput-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;

    .line 28
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mIsPreviewing:Z

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mUiScheduler:Landroid/os/Handler;

    .line 31
    iput-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mQrDetector:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    .line 47
    new-instance v0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController$1;-><init>(Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mQrDetectResultListener:Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController$QrDetectResultListener;

    .line 35
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mQrResultListener:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$QrResultListener;

    return-void
.end method

.method private getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;
    .locals 0

    .line 106
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object p0

    .line 108
    const-string/jumbo p1, "\ufeff"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 109
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private isOperableMode()Z
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->WIDE_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mIsOneShot:Z

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private shouldPerformDetection()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mIsQRDetectionOn:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->isOperableMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public handlePreviewStarted(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;

    if-nez v0, :cond_0

    return-void

    .line 79
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 80
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mIsOneShot:Z

    .line 81
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->shouldPerformDetection()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 82
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mIsPreviewing:Z

    .line 83
    iget-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mQrDetector:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    if-nez p1, :cond_1

    .line 84
    new-instance p1, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mQrDetectResultListener:Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController$QrDetectResultListener;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mUiScheduler:Landroid/os/Handler;

    invoke-direct {p1, p2, v0}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;-><init>(Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController$QrDetectResultListener;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mQrDetector:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    .line 86
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mQrDetector:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->startDetect(Lcom/sonyericsson/android/camera/device/ImageRetriever;)V

    goto :goto_0

    .line 88
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mQrDetector:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    if-eqz p1, :cond_3

    .line 89
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->stopDetect()V

    .line 90
    iget-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mQrDetector:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->release()V

    const/4 p1, 0x0

    .line 91
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mQrDetector:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    :cond_3
    :goto_0
    return-void
.end method

.method public handlePreviewStarted(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;ZZLcom/sonyericsson/android/camera/device/ImageRetriever;)V
    .locals 0

    .line 57
    iput-object p4, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;

    .line 58
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 59
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mIsOneShot:Z

    .line 60
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->shouldPerformDetection()Z

    move-result p1

    if-eqz p1, :cond_1

    if-nez p3, :cond_1

    const/4 p1, 0x1

    .line 61
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mIsPreviewing:Z

    .line 62
    iget-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mQrDetector:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    if-nez p1, :cond_0

    .line 63
    new-instance p1, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mQrDetectResultListener:Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController$QrDetectResultListener;

    iget-object p3, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mUiScheduler:Landroid/os/Handler;

    invoke-direct {p1, p2, p3}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;-><init>(Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController$QrDetectResultListener;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mQrDetector:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    .line 65
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mQrDetector:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    invoke-virtual {p0, p4}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->startDetect(Lcom/sonyericsson/android/camera/device/ImageRetriever;)V

    goto :goto_0

    .line 67
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mQrDetector:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    if-eqz p1, :cond_2

    .line 68
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->stopDetect()V

    .line 69
    iget-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mQrDetector:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->release()V

    const/4 p1, 0x0

    .line 70
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mQrDetector:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    :cond_2
    :goto_0
    return-void
.end method

.method public handlePreviewStopped()V
    .locals 1

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mIsPreviewing:Z

    .line 98
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mQrDetector:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->stopDetect()V

    .line 100
    iget-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mQrDetector:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->release()V

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mQrDetector:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    :cond_0
    return-void
.end method

.method public handleSettingsChanged(Z)V
    .locals 0

    .line 122
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mIsQRDetectionOn:Z

    return-void
.end method

.method public isPreviewing()Z
    .locals 0

    .line 115
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mIsPreviewing:Z

    return p0
.end method

.method public release()V
    .locals 2

    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mImageRetriever:Lcom/sonyericsson/android/camera/device/ImageRetriever;

    .line 136
    iget-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mQrDetector:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    if-eqz v1, :cond_0

    .line 137
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->stopDetect()V

    .line 138
    iget-object v1, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mQrDetector:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/qrdetection/QrDetector;->release()V

    .line 139
    iput-object v0, p0, Lcom/sonyericsson/android/camera/qrdetection/QrDetectionController;->mQrDetector:Lcom/sonyericsson/android/camera/qrdetection/QrDetector;

    :cond_0
    return-void
.end method
