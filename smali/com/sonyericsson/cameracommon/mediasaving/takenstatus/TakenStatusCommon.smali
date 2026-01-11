.class public Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;
.super Ljava/lang/Object;
.source "TakenStatusCommon.java"


# static fields
.field public static final INVALID_ID:I = -0x1

.field public static final TAG:Ljava/lang/String; = "TakenStatusCommon"


# instance fields
.field public final addToMediaStore:Z

.field public final cropValue:Ljava/lang/String;

.field public final fileExtension:Ljava/lang/String;

.field public final height:I

.field public final location:Landroid/location/Location;

.field public mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field public mCaptureIdForPredictiveCapture:I

.field public mDateTaken:J

.field public mExtraOutput:Landroid/net/Uri;

.field public mFilePath:Ljava/lang/String;

.field public mIsPredictiveCaptureCover:Z

.field public mRequestId:I

.field public mSaveTimeForPredictiveCapture:Ljava/lang/String;

.field public final mimeType:Ljava/lang/String;

.field public orientation:I

.field public final savedFileType:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

.field public final takenByFastCapture:Z

.field public final width:I


# direct methods
.method public constructor <init>(JILandroid/location/Location;IILjava/lang/String;Ljava/lang/String;Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 4

    move-object v0, p0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    .line 66
    iput v1, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mRequestId:I

    const-wide/16 v2, 0x0

    .line 69
    iput-wide v2, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mDateTaken:J

    .line 76
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mCallbacks:Ljava/util/List;

    .line 89
    iput v1, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mCaptureIdForPredictiveCapture:I

    const/4 v1, 0x0

    .line 91
    iput-boolean v1, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mIsPredictiveCaptureCover:Z

    move-wide v1, p1

    .line 108
    iput-wide v1, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mDateTaken:J

    move v1, p3

    .line 109
    iput v1, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    move-object v1, p4

    .line 110
    iput-object v1, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    move v1, p5

    .line 111
    iput v1, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->width:I

    move v1, p6

    .line 112
    iput v1, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->height:I

    move-object v1, p7

    .line 113
    iput-object v1, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mimeType:Ljava/lang/String;

    move-object v1, p8

    .line 114
    iput-object v1, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->fileExtension:Ljava/lang/String;

    move-object v1, p9

    .line 115
    iput-object v1, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->savedFileType:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    move-object v1, p10

    .line 116
    iput-object v1, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mFilePath:Ljava/lang/String;

    move-object v1, p11

    .line 117
    iput-object v1, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->cropValue:Ljava/lang/String;

    move/from16 v1, p12

    .line 118
    iput-boolean v1, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->addToMediaStore:Z

    move/from16 v1, p13

    .line 119
    iput-boolean v1, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->takenByFastCapture:Z

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;)V
    .locals 3

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 66
    iput v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mRequestId:I

    const-wide/16 v1, 0x0

    .line 69
    iput-wide v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mDateTaken:J

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mCallbacks:Ljava/util/List;

    .line 89
    iput v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mCaptureIdForPredictiveCapture:I

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mIsPredictiveCaptureCover:Z

    .line 128
    iget v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mRequestId:I

    iput v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mRequestId:I

    .line 129
    iget-wide v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mDateTaken:J

    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mDateTaken:J

    .line 130
    iget v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    iput v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    .line 131
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    .line 132
    iget v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->width:I

    iput v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->width:I

    .line 133
    iget v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->height:I

    iput v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->height:I

    .line 134
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mimeType:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mimeType:Ljava/lang/String;

    .line 135
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->fileExtension:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->fileExtension:Ljava/lang/String;

    .line 136
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->savedFileType:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->savedFileType:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    .line 137
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mFilePath:Ljava/lang/String;

    .line 138
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mCallbacks:Ljava/util/List;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mCallbacks:Ljava/util/List;

    .line 139
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->cropValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->cropValue:Ljava/lang/String;

    .line 140
    iget-boolean v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->addToMediaStore:Z

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->addToMediaStore:Z

    .line 141
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mExtraOutput:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mExtraOutput:Landroid/net/Uri;

    .line 142
    iget-boolean v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->takenByFastCapture:Z

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->takenByFastCapture:Z

    .line 143
    iget-boolean p1, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mIsPredictiveCaptureCover:Z

    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mIsPredictiveCaptureCover:Z

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;Ljava/lang/String;J)V
    .locals 3

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 66
    iput v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mRequestId:I

    const-wide/16 v1, 0x0

    .line 69
    iput-wide v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mDateTaken:J

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mCallbacks:Ljava/util/List;

    .line 89
    iput v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mCaptureIdForPredictiveCapture:I

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mIsPredictiveCaptureCover:Z

    .line 155
    iget v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mRequestId:I

    iput v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mRequestId:I

    .line 156
    iput-wide p3, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mDateTaken:J

    .line 157
    iget p3, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    iput p3, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    .line 158
    iget-object p3, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    iput-object p3, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    .line 159
    iget p3, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->width:I

    iput p3, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->width:I

    .line 160
    iget p3, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->height:I

    iput p3, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->height:I

    .line 161
    iget-object p3, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mimeType:Ljava/lang/String;

    iput-object p3, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mimeType:Ljava/lang/String;

    .line 162
    iget-object p3, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->fileExtension:Ljava/lang/String;

    iput-object p3, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->fileExtension:Ljava/lang/String;

    .line 163
    iget-object p3, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->savedFileType:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    iput-object p3, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->savedFileType:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    .line 164
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mFilePath:Ljava/lang/String;

    .line 165
    iget-object p2, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mCallbacks:Ljava/util/List;

    iput-object p2, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mCallbacks:Ljava/util/List;

    .line 166
    iget-object p2, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->cropValue:Ljava/lang/String;

    iput-object p2, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->cropValue:Ljava/lang/String;

    .line 167
    iget-boolean p2, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->addToMediaStore:Z

    iput-boolean p2, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->addToMediaStore:Z

    .line 168
    iget-boolean p2, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->takenByFastCapture:Z

    iput-boolean p2, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->takenByFastCapture:Z

    .line 169
    iget-boolean p1, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mIsPredictiveCaptureCover:Z

    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mIsPredictiveCaptureCover:Z

    return-void
.end method


# virtual methods
.method public log()V
    .locals 3

    .line 176
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RequestId          : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mRequestId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 177
    :cond_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DateTaken          : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mDateTaken:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 178
    :cond_1
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Orientation        : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 179
    :cond_2
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Location           : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 180
    :cond_3
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Width, Height      : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 181
    :cond_4
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MimeType           : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 182
    :cond_5
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FileExtension      : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->fileExtension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 183
    :cond_6
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FilePath           : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 184
    :cond_7
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Callbacks          : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mCallbacks:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 185
    :cond_8
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SavedFileType      : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->savedFileType:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 186
    :cond_9
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CropValue          : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->cropValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 187
    :cond_a
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AddToMediaStore    : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->addToMediaStore:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 188
    :cond_b
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ExtraOutput        : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mExtraOutput:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 189
    :cond_c
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TakenByFastCapture : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->takenByFastCapture:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 190
    :cond_d
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IsPredictiveCaptureCover : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mIsPredictiveCaptureCover:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_e
    return-void
.end method
