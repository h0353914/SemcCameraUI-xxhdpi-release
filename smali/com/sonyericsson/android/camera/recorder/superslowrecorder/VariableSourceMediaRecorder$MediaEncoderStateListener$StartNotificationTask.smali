.class Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener$StartNotificationTask;
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
    name = "StartNotificationTask"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener;)V
    .locals 0

    .line 582
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener$StartNotificationTask;->this$1:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener;Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener$StartNotificationTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener$StartNotificationTask;-><init>(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 586
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener$StartNotificationTask;->this$1:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener;->this$0:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->-$$Nest$fgetmAudioTrackListener(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;)Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;->onStarted()V

    .line 587
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener$StartNotificationTask;->this$1:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder$MediaEncoderStateListener;->this$0:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;->-$$Nest$fgetmVideoTrackListener(Lcom/sonyericsson/android/camera/recorder/superslowrecorder/VariableSourceMediaRecorder;)Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/recorder/RecorderInterface$RecordTrackListener;->onStarted()V

    return-void
.end method
