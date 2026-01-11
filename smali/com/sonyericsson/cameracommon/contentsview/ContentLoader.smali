.class public Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;
.super Ljava/lang/Object;
.source "ContentLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataCallback;,
        Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;,
        Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;,
        Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;,
        Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoadResult;
    }
.end annotation


# static fields
.field private static final MAX_LOCAL_CACHE_NUM:I = 0x190

.field public static final TAG:Ljava/lang/String; = "ContentLoader"


# instance fields
.field private final MEDIA_ID_COUNT_MAX:I

.field private final mContentCallback:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;

.field private mDataCallback:Lcom/sonyericsson/cameracommon/storage/DataLoader$DataLoadCallback;

.field private mHandler:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;

.field private mLocalCache:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalCacheBackup:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNewIntentFromActivity:Z

.field private mOnLoadCompleteListener:Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;

.field private mSecurityLevel:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

.field private mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContentCallback(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;)Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mContentCallback:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDataCallback(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;)Lcom/sonyericsson/cameracommon/storage/DataLoader$DataLoadCallback;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mDataCallback:Lcom/sonyericsson/cameracommon/storage/DataLoader$DataLoadCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;)Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mHandler:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$maddLocalCache(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;Ljava/util/LinkedList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->addLocalCache(Ljava/util/LinkedList;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveFuture(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->removeFuture(J)V

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;)V
    .locals 2

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataCallback;-><init>(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataCallback-IA;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mDataCallback:Lcom/sonyericsson/cameracommon/storage/DataLoader$DataLoadCallback;

    const/16 v0, 0x190

    .line 58
    iput v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->MEDIA_ID_COUNT_MAX:I

    .line 64
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mNewIntentFromActivity:Z

    .line 72
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$1;-><init>(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mOnLoadCompleteListener:Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;

    .line 138
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mSecurityLevel:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

    .line 139
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    .line 140
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mContentCallback:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;

    .line 141
    new-instance p1, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;

    invoke-direct {p1, p0, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;-><init>(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander-IA;)V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mHandler:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;

    return-void
.end method

.method private addLocalCache(Ljava/util/LinkedList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;",
            ">;)V"
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCacheBackup:Ljava/util/LinkedList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 343
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 344
    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    iget-wide v3, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mId:J

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCacheBackup:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    iget-wide v5, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mId:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCacheBackup:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    invoke-virtual {v0, v2, v3}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 347
    :cond_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    .line 348
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCacheBackup:Ljava/util/LinkedList;

    invoke-virtual {v4, v2, v3}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 349
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCacheBackup:Ljava/util/LinkedList;

    invoke-direct {p0, v3}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->overLimitSize(Ljava/util/LinkedList;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 350
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCacheBackup:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_0

    .line 356
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 357
    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    iget-wide v0, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mId:J

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    iget-wide v3, v3, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mId:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_3

    .line 358
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    invoke-virtual {p0, v2, p1}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 360
    :cond_3
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    .line 361
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 362
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->overLimitSize(Ljava/util/LinkedList;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 363
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method

.method private clearLocalCache()V
    .locals 0

    .line 397
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    if-eqz p0, :cond_0

    .line 398
    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    :cond_0
    return-void
.end method

.method private getLatestBurstImageInfo(Landroid/content/Context;I)Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;
    .locals 10

    .line 491
    new-instance p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;-><init>()V

    .line 492
    const-string v8, "orientation"

    const-string v9, "bucket_id"

    const-string v0, "_id"

    const-string v1, "relative_path"

    const-string v2, "_display_name"

    const-string/jumbo v3, "volume_name"

    const-string v4, "mime_type"

    const-string v5, "datetaken"

    const-string/jumbo v6, "width"

    const-string v7, "height"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    const/4 v0, 0x1

    .line 504
    iput v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->limit:I

    .line 505
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "datetaken"

    const-string v3, "_id"

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%s DESC, %s DESC"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->sortOrder:Ljava/lang/String;

    .line 507
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 508
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "(bucket_id like \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, "\')"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    const-string p2, " AND (media_type==1)"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    .line 521
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, p0}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->getLatestImageInfo(Landroid/content/ContentResolver;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object p0

    const/4 p2, 0x0

    if-nez p0, :cond_0

    return-object p2

    .line 529
    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 530
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->createContentInfo(Landroid/content/ContentResolver;Landroid/database/Cursor;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :cond_1
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 534
    :catch_0
    :try_start_1
    new-array p1, v0, [Ljava/lang/String;

    const-string v0, "The specified column isn\'t found."

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-object p2

    .line 536
    :goto_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 537
    throw p1
.end method

.method private overLimitSize(Ljava/util/LinkedList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;",
            ">;)Z"
        }
    .end annotation

    .line 373
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p0

    const/4 v0, 0x1

    const/16 v1, 0x190

    if-le p0, v1, :cond_0

    return v0

    .line 377
    :cond_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    move v2, p1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    .line 378
    iget-object v4, v3, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mContentType:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    sget-object v5, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->BURST:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    if-ne v4, v5, :cond_1

    iget v4, v3, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mGroupedImage:I

    if-lez v4, :cond_1

    .line 379
    iget v3, v3, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mGroupedImage:I

    goto :goto_1

    .line 380
    :cond_1
    iget-object v4, v3, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mContentType:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    sget-object v5, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->PREDICTIVE_CAPTURE:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    if-ne v4, v5, :cond_2

    .line 381
    iget v3, v3, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mPredictiveNum:I

    :goto_1
    add-int/2addr v2, v3

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-le v2, v1, :cond_4

    return v0

    :cond_4
    return p1
.end method

.method private removeFuture(J)V
    .locals 0

    .line 234
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-interface {p0, p1, p2}, Lcom/sonyericsson/cameracommon/storage/Storage;->cancelDataLoad(J)V

    return-void
.end method


# virtual methods
.method public clearLocalCacheBackup()V
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCacheBackup:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x0

    .line 418
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCacheBackup:Ljava/util/LinkedList;

    :cond_0
    return-void
.end method

.method public getLocalCache()Ljava/util/LinkedList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;",
            ">;"
        }
    .end annotation

    .line 408
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    return-object p0
.end method

.method public isRemovedFromDataBase(Landroid/content/Context;JI)Z
    .locals 4

    .line 451
    new-instance p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;-><init>()V

    .line 452
    const-string v0, "_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 455
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "datetaken"

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%s DESC, %s DESC"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->sortOrder:Ljava/lang/String;

    .line 457
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 458
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    filled-new-array {v0, p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 457
    const-string p3, "%s like \'%s\'"

    invoke-static {v1, p3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    const/4 p2, 0x1

    if-eq p4, p2, :cond_2

    const/4 p3, 0x3

    if-ne p4, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    if-ne p4, p3, :cond_1

    .line 465
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, p3, p0}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->crQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    .line 462
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, p3, p0}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->crQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object p0

    :goto_1
    if-nez p0, :cond_3

    goto :goto_3

    .line 473
    :cond_3
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    move p2, p1

    .line 478
    :goto_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :goto_3
    return p2
.end method

.method public loadLocalCache()V
    .locals 2

    .line 423
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCacheBackup:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 425
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCacheBackup:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    .line 148
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "pause() has been called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/storage/Storage;->cancelDataLoad(Z)V

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->clearLocalCache()V

    return-void
.end method

.method public release()V
    .locals 1

    .line 160
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "release() has been called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 162
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->clearLocalCache()V

    const/4 v0, 0x0

    .line 163
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    .line 166
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mDataCallback:Lcom/sonyericsson/cameracommon/storage/DataLoader$DataLoadCallback;

    .line 169
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mHandler:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;->-$$Nest$mremoveAllMessages(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;)V

    return-void
.end method

.method public reload(I)V
    .locals 4

    .line 201
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "reload() has been called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 203
    :cond_0
    sget-object v0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$2;->$SwitchMap$com$sonyericsson$cameracommon$contentsview$ContentLoader$SecurityLevel:[I

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mSecurityLevel:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 219
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    const-string v0, "reload() : SecurityLevel = NORMAL"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_4

    .line 221
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mOnLoadCompleteListener:Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;

    invoke-interface {v2, v1, v0, v3}, Lcom/sonyericsson/cameracommon/storage/Storage;->requestDataLoad(IZLcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 205
    :cond_2
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_3

    .line 206
    const-string p1, "reload() : SecurityLevel = NEWLY_ADDED_CONTENT_ONLY "

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 207
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->getLocalCache()Ljava/util/LinkedList;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 209
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 210
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mNewIntentFromActivity:Z

    if-nez v0, :cond_4

    .line 211
    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    const/4 v0, -0x1

    .line 212
    iget-object p1, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalUri:Landroid/net/Uri;

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->request(ILandroid/net/Uri;)V

    :cond_4
    return-void
.end method

.method public reloadTopContent()V
    .locals 2

    .line 484
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    .line 485
    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    iget-boolean v0, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mIsContainDetails:Z

    if-nez v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalUri:Landroid/net/Uri;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->request(ILandroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public removeInvalidLocalCache(Landroid/content/Context;)V
    .locals 5

    .line 430
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 431
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 432
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    .line 433
    iget-wide v2, v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mId:J

    iget v4, v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mType:I

    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->isRemovedFromDataBase(Landroid/content/Context;JI)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 434
    iget-object v2, v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/sonyericsson/cameracommon/storage/ManualBurstPathBuilder;->isBurstCaptureImage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 435
    iget v2, v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mBucketId:I

    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->getLatestBurstImageInfo(Landroid/content/Context;I)Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 438
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v3, v1, v2}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 440
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 443
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public request(ILandroid/net/Uri;)V
    .locals 2

    .line 179
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 180
    const-string v0, "request() has been called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  requestId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  uri:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mOnLoadCompleteListener:Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;

    invoke-interface {v0, p1, p2, v1, p0}, Lcom/sonyericsson/cameracommon/storage/Storage;->requestDataLoad(ILandroid/net/Uri;ZLcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;)V

    return-void
.end method

.method public requestCreateContentInfoSync(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mOnLoadCompleteListener:Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;

    invoke-interface {v0, p1, p0}, Lcom/sonyericsson/cameracommon/storage/Storage;->requestCreateContentInfoSync(Ljava/util/ArrayList;Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;)V

    return-void
.end method

.method public requestLastDataLoad(I)V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mOnLoadCompleteListener:Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;

    invoke-interface {v0, p1, v1, p0}, Lcom/sonyericsson/cameracommon/storage/Storage;->requestLastDataLoad(IZLcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;)V

    return-void
.end method

.method public saveLocalCache()V
    .locals 2

    .line 412
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCacheBackup:Ljava/util/LinkedList;

    return-void
.end method

.method public setNewIntentFromActivity()V
    .locals 1

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mNewIntentFromActivity:Z

    return-void
.end method
