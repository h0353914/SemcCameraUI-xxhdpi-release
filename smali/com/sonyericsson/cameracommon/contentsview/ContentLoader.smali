.class public Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;
.super Ljava/lang/Object;
.source "ContentLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataCallback;,
        Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;,
        Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoadResult;,
        Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;,
        Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;
    }
.end annotation


# static fields
.field private static final MAX_LOCAL_CACHE_NUM:I = 0x190

.field public static final PANORAMA_ASPECT_THRESHOLD:F = 1.8777778f

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

.field private mOnLoadCompleteListener:Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;

.field private mSecurityLevel:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

.field private mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;)V
    .locals 2

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataCallback;-><init>(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$1;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mDataCallback:Lcom/sonyericsson/cameracommon/storage/DataLoader$DataLoadCallback;

    const/16 v0, 0x190

    .line 60
    iput v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->MEDIA_ID_COUNT_MAX:I

    .line 66
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    .line 69
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$1;-><init>(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mOnLoadCompleteListener:Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;

    .line 135
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mSecurityLevel:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

    .line 136
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    .line 137
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mContentCallback:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;

    .line 138
    new-instance p1, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;

    invoke-direct {p1, p0, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;-><init>(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$1;)V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mHandler:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;)Lcom/sonyericsson/cameracommon/storage/DataLoader$DataLoadCallback;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mDataCallback:Lcom/sonyericsson/cameracommon/storage/DataLoader$DataLoadCallback;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;J)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->removeFuture(J)V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;)Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mContentCallback:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;

    return-object p0
.end method

.method static synthetic access$800(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;Ljava/util/LinkedList;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->addLocalCache(Ljava/util/LinkedList;)V

    return-void
.end method

.method static synthetic access$900(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;)Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mHandler:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;

    return-object p0
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

    .line 337
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCacheBackup:Ljava/util/LinkedList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 338
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCacheBackup:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 339
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

    .line 340
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCacheBackup:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 342
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

    .line 343
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCacheBackup:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 344
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCacheBackup:Ljava/util/LinkedList;

    invoke-direct {p0, v3}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->overLimitSize(Ljava/util/LinkedList;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 345
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCacheBackup:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_0

    .line 351
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 352
    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    iget-wide v2, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mId:J

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    iget-wide v4, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mId:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    .line 353
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 355
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

    .line 356
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 357
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->overLimitSize(Ljava/util/LinkedList;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 358
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method

.method private clearLocalCache()V
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 393
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    :cond_0
    return-void
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

    .line 368
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p0

    const/16 v0, 0x190

    const/4 v1, 0x1

    if-le p0, v0, :cond_0

    return v1

    .line 372
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

    .line 373
    iget-object v4, v3, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mContentType:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    sget-object v5, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->BURST:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    if-ne v4, v5, :cond_1

    iget v4, v3, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mGroupedImage:I

    if-lez v4, :cond_1

    .line 374
    iget v3, v3, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mGroupedImage:I

    add-int/2addr v2, v3

    goto :goto_0

    .line 375
    :cond_1
    iget-object v4, v3, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mContentType:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    sget-object v5, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->PREDICTIVE_CAPTURE:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    if-ne v4, v5, :cond_2

    .line 376
    iget v3, v3, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mPredictiveNum:I

    add-int/2addr v2, v3

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-le v2, v0, :cond_4

    return v1

    :cond_4
    return p1
.end method

.method private removeFuture(J)V
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-interface {p0, p1, p2}, Lcom/sonyericsson/cameracommon/storage/Storage;->cancelDataLoad(J)V

    return-void
.end method


# virtual methods
.method public clearLocalCacheBackup()V
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCacheBackup:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCacheBackup:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x0

    .line 413
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

    .line 403
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    return-object p0
.end method

.method public isRemovedFromDataBase(Landroid/content/Context;JI)Z
    .locals 7

    .line 440
    new-instance p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;-><init>()V

    const-string v0, "_id"

    .line 441
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 444
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s DESC, %s DESC"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "datetaken"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "_id"

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->sortOrder:Ljava/lang/String;

    .line 446
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s like \'%s\'"

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "_id"

    aput-object v4, v3, v5

    .line 447
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v3, v6

    .line 446
    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    if-eq p4, v6, :cond_2

    const/4 p2, 0x3

    if-ne p4, p2, :cond_0

    goto :goto_0

    :cond_0
    if-ne p4, v2, :cond_1

    .line 454
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, p2, p0}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->crQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    .line 451
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, p2, p0}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->crQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object p0

    :goto_1
    if-nez p0, :cond_3

    goto :goto_3

    .line 462
    :cond_3
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    move v6, v5

    .line 467
    :goto_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :goto_3
    return v6
.end method

.method public loadLocalCache()V
    .locals 2

    .line 418
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCacheBackup:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 420
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCacheBackup:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    .line 145
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "pause() has been called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/storage/Storage;->cancelDataLoad(Z)V

    .line 150
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->clearLocalCache()V

    return-void
.end method

.method public release()V
    .locals 1

    .line 157
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "release() has been called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 159
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->clearLocalCache()V

    const/4 v0, 0x0

    .line 160
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    .line 163
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mDataCallback:Lcom/sonyericsson/cameracommon/storage/DataLoader$DataLoadCallback;

    .line 166
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mHandler:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;->access$300(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;)V

    return-void
.end method

.method public reload(I)V
    .locals 4

    .line 198
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "reload() has been called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 200
    :cond_0
    sget-object v0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$2;->$SwitchMap$com$sonyericsson$cameracommon$contentsview$ContentLoader$SecurityLevel:[I

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mSecurityLevel:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 214
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

    .line 216
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mOnLoadCompleteListener:Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;

    invoke-interface {v2, v1, v0, v3}, Lcom/sonyericsson/cameracommon/storage/Storage;->requestDataLoad(IZLcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 202
    :cond_2
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_3

    const-string p1, "reload() : SecurityLevel = NEWLY_ADDED_CONTENT_ONLY "

    .line 203
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 204
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->getLocalCache()Ljava/util/LinkedList;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 206
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 207
    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    const/4 v0, -0x1

    .line 208
    iget-object p1, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalUri:Landroid/net/Uri;

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->request(ILandroid/net/Uri;)V

    :cond_4
    return-void
.end method

.method public reloadTopContent()V
    .locals 2

    .line 473
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    .line 474
    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    iget-boolean v0, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mIsContainDetails:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 475
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalUri:Landroid/net/Uri;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->request(ILandroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public removeInvalidLocalCache(Landroid/content/Context;)V
    .locals 5

    .line 425
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 426
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 427
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    .line 428
    new-instance v2, Ljava/io/File;

    iget-object v3, v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 429
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 430
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 431
    :cond_1
    iget-wide v2, v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mId:J

    iget v4, v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mType:I

    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->isRemovedFromDataBase(Landroid/content/Context;JI)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 432
    iput-boolean v2, v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mIsInTrash:Z

    .line 433
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public request(ILandroid/net/Uri;)V
    .locals 5

    .line 176
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "request() has been called."

    .line 177
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 178
    new-array v0, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  requestId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 179
    new-array v0, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  uri:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

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

    .line 189
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mOnLoadCompleteListener:Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;

    invoke-interface {v0, p1, p0}, Lcom/sonyericsson/cameracommon/storage/Storage;->requestCreateContentInfoSync(Ljava/util/ArrayList;Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;)V

    return-void
.end method

.method public requestLastDataLoad(I)V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mOnLoadCompleteListener:Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1, p0}, Lcom/sonyericsson/cameracommon/storage/Storage;->requestLastDataLoad(IZLcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;)V

    return-void
.end method

.method public saveLocalCache()V
    .locals 2

    .line 407
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCache:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->mLocalCacheBackup:Ljava/util/LinkedList;

    return-void
.end method
