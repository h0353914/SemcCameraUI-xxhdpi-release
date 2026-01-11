.class public Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;
.super Ljava/lang/Object;
.source "PredictiveCaptureStoreInfo.java"


# instance fields
.field private final mCaptureNum:I

.field private final mCaptureTime:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;->mCaptureNum:I

    .line 34
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;->mCaptureTime:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCaptureNum()I
    .locals 0

    .line 43
    iget p0, p0, Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;->mCaptureNum:I

    return p0
.end method

.method public getCaptureTime()Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;->mCaptureTime:Ljava/lang/String;

    return-object p0
.end method
