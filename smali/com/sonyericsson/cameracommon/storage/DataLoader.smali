.class public Lcom/sonyericsson/cameracommon/storage/DataLoader;
.super Ljava/lang/Object;
.source "DataLoader.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/storage/DataLoader$DataLoadCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "DataLoader"


# instance fields
.field private final CONTENT_EXTENSIONS:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDataLoadCallback:Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;

.field private mIsRegisterCache:Z

.field private mMediaId:I

.field private mMediaUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mParam:Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

.field private mRequestId:I

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(ILandroid/net/Uri;Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;Z)V
    .locals 3

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v0, ".3gp"

    const-string v1, ".mp4"

    const-string v2, ".JPG"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->CONTENT_EXTENSIONS:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mParam:Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    .line 164
    iput p1, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mRequestId:I

    .line 166
    :try_start_0
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mMediaId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 168
    :catch_0
    const-string p1, "mediaId is not corrected."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 170
    :goto_0
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mContext:Landroid/content/Context;

    .line 171
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mResolver:Landroid/content/ContentResolver;

    .line 172
    iput-object p4, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mDataLoadCallback:Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;

    .line 173
    iput-boolean p5, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mIsRegisterCache:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;",
            "Z)V"
        }
    .end annotation

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v0, ".3gp"

    const-string v1, ".mp4"

    const-string v2, ".JPG"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->CONTENT_EXTENSIONS:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mParam:Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    const/4 v0, -0x1

    .line 186
    iput v0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mRequestId:I

    .line 187
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mContext:Landroid/content/Context;

    .line 188
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mResolver:Landroid/content/ContentResolver;

    .line 189
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mMediaUris:Ljava/util/ArrayList;

    .line 190
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mDataLoadCallback:Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;

    .line 191
    iput-boolean p4, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mIsRegisterCache:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;IILcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II",
            "Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;",
            "Z)V"
        }
    .end annotation

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v0, ".3gp"

    const-string v1, ".mp4"

    const-string v2, ".JPG"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->CONTENT_EXTENSIONS:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mParam:Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    .line 145
    iput p3, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mRequestId:I

    .line 146
    invoke-static {p2, p4, p3}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->setupQueryParam(Ljava/util/List;II)Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mParam:Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    .line 147
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mContext:Landroid/content/Context;

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mResolver:Landroid/content/ContentResolver;

    .line 149
    iput-object p5, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mDataLoadCallback:Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;

    .line 150
    iput-boolean p6, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mIsRegisterCache:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ILcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;",
            "Z)V"
        }
    .end annotation

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v0, ".3gp"

    const-string v1, ".mp4"

    const-string v2, ".JPG"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->CONTENT_EXTENSIONS:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mParam:Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    const/4 v0, -0x1

    .line 126
    iput v0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mRequestId:I

    .line 127
    invoke-static {p2, p3, v0}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->setupQueryParam(Ljava/util/List;II)Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mParam:Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    .line 128
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mContext:Landroid/content/Context;

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mResolver:Landroid/content/ContentResolver;

    .line 130
    iput-object p4, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mDataLoadCallback:Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;

    .line 131
    iput-boolean p5, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mIsRegisterCache:Z

    return-void
.end method

.method private createAntiAliasBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    if-eqz p1, :cond_0

    .line 337
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    move v3, p2

    move v4, p2

    .line 338
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private decodeThumbnail(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;)Landroid/graphics/Bitmap;
    .locals 4

    .line 316
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "decodeThumbnail() has been called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_3

    .line 320
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalPath:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mResolver:Landroid/content/ContentResolver;

    iget-wide v1, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mId:J

    iget v3, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mType:I

    invoke-static {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->getMediaPath(Landroid/content/ContentResolver;JI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalPath:Ljava/lang/String;

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/sonyericsson/cameracommon/contentsview/ThumbnailFactory;->createMicroThumbnail(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 327
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->createAntiAliasBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 330
    :cond_2
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_4

    .line 331
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "decodeThumbnail(): thumbnail = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :cond_4
    :goto_0
    return-object p1
.end method

.method private isSupportedFileExtension(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    if-nez p2, :cond_0

    return p0

    .line 353
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    :cond_1
    return p0
.end method


# virtual methods
.method public call()Ljava/lang/Long;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "cursor count = "

    .line 203
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_0

    const-string v1, "call() has been called."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 209
    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 213
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mParam:Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    if-eqz v2, :cond_1

    .line 214
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v3, v2}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->getLatestImageInfo(Landroid/content/ContentResolver;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_0

    .line 215
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mMediaUris:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 216
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v3, v2}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->getImagesInfo(Landroid/content/ContentResolver;Ljava/util/ArrayList;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_0

    .line 218
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mResolver:Landroid/content/ContentResolver;

    iget v3, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mMediaId:I

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->getCoverImageInfo(Landroid/content/ContentResolver;I)Landroid/database/Cursor;

    move-result-object v2

    :goto_0
    const/4 v3, 0x0

    if-nez v2, :cond_4

    .line 222
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->getInstance()Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->getMediaDeque()Ljava/util/Deque;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;

    .line 223
    sget-boolean v5, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ProcessingMedia peekLast:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3
    if-eqz v4, :cond_4

    .line 225
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->getStoreUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4, v3, v3, v3}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 227
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_4
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_f

    .line 234
    :try_start_0
    sget-boolean v6, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v6, :cond_5

    .line 235
    new-array v6, v5, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v4

    invoke-static {v6}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 238
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mMediaUris:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 239
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_f

    .line 240
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mResolver:Landroid/content/ContentResolver;

    .line 241
    invoke-static {v0, v2}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->createContentInfoForMediaUris(Landroid/content/ContentResolver;Landroid/database/Cursor;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 244
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 246
    :cond_6
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 250
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v2}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->createContentInfo(Landroid/content/ContentResolver;Landroid/database/Cursor;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 252
    iget-object v6, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalPath:Ljava/lang/String;

    .line 253
    invoke-static {v6}, Lcom/sonyericsson/cameracommon/storage/PredictiveCapturePathBuilder;->isPredictiveCaptureImage(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 254
    iget-object v6, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalPath:Ljava/lang/String;

    .line 255
    invoke-static {v6}, Lcom/sonyericsson/cameracommon/storage/PredictiveCapturePathBuilder;->getTimeStamp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 256
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mResolver:Landroid/content/ContentResolver;

    iget v8, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mBucketId:I

    .line 257
    invoke-static {v7, v6, v8}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->getPredictiveCaptureImageInfo(Landroid/content/ContentResolver;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v6, :cond_9

    .line 260
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v6}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->createContentInfo(Landroid/content/ContentResolver;Landroid/database/Cursor;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_8

    .line 256
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v6

    :try_start_3
    invoke-virtual {v0, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_2
    throw v0

    :cond_9
    :goto_3
    if-eqz v6, :cond_d

    .line 263
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_6

    .line 264
    :cond_a
    iget-object v6, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalPath:Ljava/lang/String;

    .line 265
    invoke-static {v6}, Lcom/sonyericsson/cameracommon/storage/ManualBurstPathBuilder;->isBurstCaptureImage(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 266
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mResolver:Landroid/content/ContentResolver;

    iget v7, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mBucketId:I

    .line 267
    invoke-static {v6, v7}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->getBurstCaptureImageInfo(Landroid/content/ContentResolver;I)Landroid/database/Cursor;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz v6, :cond_c

    .line 270
    :try_start_4
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v6}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->createContentInfo(Landroid/content/ContentResolver;Landroid/database/Cursor;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    if-eqz v6, :cond_b

    .line 266
    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v6

    :try_start_6
    invoke-virtual {v0, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b
    :goto_4
    throw v0

    :cond_c
    :goto_5
    if-eqz v6, :cond_d

    .line 273
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_d
    :goto_6
    if-eqz v0, :cond_f

    .line 277
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_8

    :catchall_4
    move-exception v0

    if-eqz v2, :cond_e

    .line 232
    :try_start_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception v2

    :try_start_8
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_e
    :goto_7
    throw v0

    :cond_f
    :goto_8
    if-eqz v2, :cond_10

    .line 281
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    goto :goto_a

    :catchall_6
    move-exception v0

    goto :goto_9

    :catch_0
    move-exception v0

    .line 282
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    goto :goto_a

    .line 284
    :goto_9
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mParam:Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    .line 285
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mMediaUris:Ljava/util/ArrayList;

    .line 286
    throw v0

    .line 284
    :cond_10
    :goto_a
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mParam:Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    .line 285
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mMediaUris:Ljava/util/ArrayList;

    .line 288
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 289
    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    iget-wide v6, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mId:J

    .line 290
    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    iget-boolean v0, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mIsContainDetails:Z

    if-eqz v0, :cond_12

    .line 291
    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->decodeThumbnail(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 293
    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    iput-boolean v5, v2, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mIsMediaDataVerified:Z

    :cond_11
    move-object v3, v0

    :cond_12
    move v4, v5

    goto :goto_b

    :cond_13
    const-wide/16 v6, 0x0

    :goto_b
    if-eqz v4, :cond_14

    .line 300
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mDataLoadCallback:Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;

    iget v2, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mRequestId:I

    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mIsRegisterCache:Z

    invoke-interface {v0, v2, p0, v1, v3}, Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;->onDataLoadCompleted(IZLjava/util/LinkedList;Landroid/graphics/Bitmap;)V

    goto :goto_c

    .line 303
    :cond_14
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mDataLoadCallback:Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;

    iget p0, p0, Lcom/sonyericsson/cameracommon/storage/DataLoader;->mRequestId:I

    invoke-interface {v0, p0}, Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;->onDataLoadFailed(I)V

    .line 305
    :goto_c
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/DataLoader;->call()Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
