.class public Lcom/sonyericsson/android/camera/view/ViewFinderImpl$RecordingTimeReceiverProxy;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecordingTimeReceiverProxy"
.end annotation


# instance fields
.field private mCurrentTime:I

.field private mReceiver:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingTimeIndicator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bindReceiver(Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingTimeIndicator;)V
    .locals 0

    .line 10111
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$RecordingTimeReceiverProxy;->mReceiver:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingTimeIndicator;

    return-void
.end method

.method public getCurrentTime()I
    .locals 0

    .line 10115
    iget p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$RecordingTimeReceiverProxy;->mCurrentTime:I

    return p0
.end method

.method protected notifyOnTimeTicked(I)V
    .locals 1

    .line 10123
    iput p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$RecordingTimeReceiverProxy;->mCurrentTime:I

    .line 10124
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$RecordingTimeReceiverProxy;->mReceiver:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingTimeIndicator;

    if-nez v0, :cond_0

    return-void

    .line 10127
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$RecordingTimeReceiverProxy;->mReceiver:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingTimeIndicator;

    invoke-interface {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingTimeIndicator;->onTimeTicked(I)V

    return-void
.end method

.method protected reset()V
    .locals 1

    const/4 v0, 0x0

    .line 10119
    iput v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$RecordingTimeReceiverProxy;->mCurrentTime:I

    return-void
.end method
