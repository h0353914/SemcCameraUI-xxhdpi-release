.class public Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;
.super Ljava/lang/Object;
.source "RecorderFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/recorder/RecorderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parameters"
.end annotation


# instance fields
.field private final mIsShutterSoundOn:Z

.field private final mListener:Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;

.field private final mOnSuperSlowRecordingFinishedListener:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;

.field private final mProgressNotificationIntervalMillis:I

.field private final mSlowMotion:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

.field private final mVideoStabilizer:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;IZLjava/lang/String;Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->mListener:Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;

    .line 47
    iput-object p2, p0, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->mOnSuperSlowRecordingFinishedListener:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;

    .line 48
    iput p3, p0, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->mProgressNotificationIntervalMillis:I

    .line 49
    iput-boolean p4, p0, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->mIsShutterSoundOn:Z

    .line 50
    iput-object p5, p0, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->mVideoStabilizer:Ljava/lang/String;

    .line 51
    iput-object p6, p0, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->mSlowMotion:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->mSlowMotion:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->mListener:Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->mProgressNotificationIntervalMillis:I

    return p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->mVideoStabilizer:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->mIsShutterSoundOn:Z

    return p0
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;)Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/RecorderFactory$Parameters;->mOnSuperSlowRecordingFinishedListener:Lcom/sonyericsson/android/camera/recorder/superslowrecorder/OnSuperSlowRecordingFinishedListener;

    return-object p0
.end method
