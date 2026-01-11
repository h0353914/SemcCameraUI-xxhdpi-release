.class Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener$ErrorNotificationTask;
.super Ljava/lang/Object;
.source "VariableSourceMediaRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ErrorNotificationTask"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener;)V
    .locals 0

    .line 641
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener$ErrorNotificationTask;->this$1:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener;Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener$ErrorNotificationTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener$ErrorNotificationTask;-><init>(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 644
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener$ErrorNotificationTask;->this$1:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener;->this$0:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->-$$Nest$fgetmOnErrorListener(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;)Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnErrorListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface$OnErrorListener;->onError()V

    return-void
.end method
