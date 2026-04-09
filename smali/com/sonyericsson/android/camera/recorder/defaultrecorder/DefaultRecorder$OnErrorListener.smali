.class Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnErrorListener;
.super Ljava/lang/Object;
.source "DefaultRecorder.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnErrorListener"
.end annotation


# instance fields
.field private final mListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnErrorListener;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnErrorListener;)V
    .locals 0

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnErrorListener;->mListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnErrorListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnErrorListener;Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$1;)V
    .locals 0

    .line 443
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnErrorListener;-><init>(Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnErrorListener;)V

    return-void
.end method

.method private onError(Lcom/sonymobile/android/media/MediaRecorder;II)V
    .locals 2

    const/4 p1, 0x1

    .line 451
    new-array p1, p1, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError() E what:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder;->access$200(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " extra:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, p1, p3

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 453
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnErrorListener;->mListener:Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnErrorListener;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnErrorListener;->onError()V

    const-string p0, "onError() X"

    .line 454
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 0

    const/4 p1, 0x0

    .line 459
    check-cast p1, Lcom/sonymobile/android/media/MediaRecorder;

    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/recorder/defaultrecorder/DefaultRecorder$OnErrorListener;->onError(Lcom/sonymobile/android/media/MediaRecorder;II)V

    return-void
.end method
