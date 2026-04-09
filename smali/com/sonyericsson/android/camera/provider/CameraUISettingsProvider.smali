.class public Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider;
.super Landroid/content/ContentProvider;
.source "CameraUISettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider$MyOpenHelper;,
        Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider$Path;,
        Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider$CapturingMode;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.sonymobile.camerauicommon.provider"

.field private static final CAMERA_UI_AUTHORITY:Ljava/lang/String; = "com.sonymobile.camerauicommon.provider"

.field private static final DATABASE_NAME:Ljava/lang/String; = "cameraui.db"

.field private static final DATABASE_VERSION:I = 0x5

.field private static final DIR_TYPE_BASE:Ljava/lang/String; = "vnd.android.cursor.dir/"

.field private static final ITEM_TYPE_BASE:Ljava/lang/String; = "vnd.android.cursor.item/"

.field private static final MIMETYPE_LIST:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CameraUISettingsProvider"

.field private static final URI_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field mProcessingBatchCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 76
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider;->MIMETYPE_LIST:Landroid/util/SparseArray;

    .line 79
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 80
    sget-object v0, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sonymobile.camerauicommon.provider"

    const-string v2, "capturingmodes"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 81
    sget-object v0, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sonymobile.camerauicommon.provider"

    const-string v2, "capturingmodes/#"

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 83
    sget-object v0, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider;->MIMETYPE_LIST:Landroid/util/SparseArray;

    const-string v1, "vnd.android.cursor.dir/capturingmode"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 84
    sget-object v0, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider;->MIMETYPE_LIST:Landroid/util/SparseArray;

    const-string v1, "vnd.android.cursor.item/capturingmode"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 189
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const/4 v0, 0x0

    .line 190
    iput v0, p0, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider;->mProcessingBatchCount:I

    return-void
.end method

.method private debug(Ljava/lang/String;)V
    .locals 6

    .line 416
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    const/4 v0, 0x3

    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p0

    .line 417
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 419
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "### ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "() "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private getCountOf(Ljava/lang/String;)I
    .locals 8

    .line 381
    iget-object p0, p0, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 p0, 0x0

    .line 383
    new-array v2, p0, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 394
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p0

    .line 395
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return p0
.end method

.method private getTableName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .line 352
    sget-object p0, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {p0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 358
    new-instance p0, Landroid/database/SQLException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid uri for this content provider. uri:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    const-string p0, "capturingmodes"

    return-object p0
.end method

.method private in(Landroid/net/Uri;)V
    .locals 6

    .line 402
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    const/4 v0, 0x3

    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p0

    .line 403
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 405
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "### ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "() --> start #"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private isProcessingBatch()Z
    .locals 1

    .line 106
    monitor-enter p0

    .line 107
    :try_start_0
    iget v0, p0, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider;->mProcessingBatchCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 108
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onCompleteOperation(Landroid/net/Uri;)V
    .locals 2

    .line 364
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider;->in(Landroid/net/Uri;)V

    :cond_0
    if-nez p1, :cond_2

    .line 375
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider;->out()V

    :cond_1
    return-void

    .line 370
    :cond_2
    :try_start_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notify changes uri:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider;->debug(Ljava/lang/String;)V

    .line 372
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider;->out()V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider;->out()V

    .line 376
    :cond_5
    throw p1
.end method

.method private out()V
    .locals 6

    .line 409
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    const/4 v0, 0x3

    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p0

    .line 410
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 412
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "### ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "() --> end"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .line 320
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider;->in(Landroid/net/Uri;)V

    .line 322
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider;->incrementProcessingBatchCount()V

    .line 323
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    .line 324
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider;->decrementProcessingBatchCount()V

    .line 326
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 327
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentProviderOperation;

    .line 328
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 329
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 332
    :cond_2
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 333
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider;->onCompleteOperation(Landroid/net/Uri;)V

    goto :goto_1

    .line 336
    :cond_3
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider;->out()V

    :cond_4
    return-object v0
.end method

.method decrementProcessingBatchCount()V
    .locals 1

    .line 100
    monitor-enter p0

    .line 101
    :try_start_0
    iget v0, p0, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider;->mProcessingBatchCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider;->mProcessingBatchCount:I

    .line 102
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    .line 251
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider;->in(Landroid/net/Uri;)V

    .line 253
    :cond_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete uri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " selection:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " arguments:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 253
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 260
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider;->getTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_2

    .line 263
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider;->isProcessingBatch()Z

    move-result p3

    if-nez p3, :cond_2

    .line 264
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider;->onCompleteOperation(Landroid/net/Uri;)V

    .line 268
    :cond_2
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider;->out()V

    :cond_3
    return p2
.end method

.method protected getDataBaseName()Ljava/lang/String;
    .locals 0

    const-string p0, "cameraui.db"

    return-object p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 348
    sget-object p0, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider;->MIMETYPE_LIST:Landroid/util/SparseArray;

    sget-object v0, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method incrementProcessingBatchCount()V
    .locals 1

    .line 94
    monitor-enter p0

    .line 95
    :try_start_0
    iget v0, p0, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider;->mProcessingBatchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider;->mProcessingBatchCount:I

    .line 96
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 5

    .line 224
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider;->in(Landroid/net/Uri;)V

    .line 226
    :cond_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insert uri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " values:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 232
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider;->getTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 233
    invoke-virtual {v0, v1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v3, -0x1

    cmp-long p2, v0, v3

    if-eqz p2, :cond_2

    .line 237
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 238
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider;->isProcessingBatch()Z

    move-result p2

    if-nez p2, :cond_2

    .line 239
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider;->onCompleteOperation(Landroid/net/Uri;)V

    .line 243
    :cond_2
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider;->out()V

    :cond_3
    return-object v2
.end method

.method public onCreate()Z
    .locals 3

    .line 195
    new-instance v0, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider$MyOpenHelper;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider;->getDataBaseName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider$MyOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .line 203
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider;->in(Landroid/net/Uri;)V

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 208
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider;->getTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v8, p5

    .line 207
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 216
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider;->out()V

    :cond_1
    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    .line 276
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider;->in(Landroid/net/Uri;)V

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 280
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider;->getTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_1

    .line 285
    :try_start_0
    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_1

    if-lez p2, :cond_4

    .line 292
    :try_start_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider;->isProcessingBatch()Z

    move-result p3

    if-nez p3, :cond_4

    .line 293
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider;->onCompleteOperation(Landroid/net/Uri;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move p2, v3

    .line 298
    :goto_0
    new-array p3, v2, [Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to update the record. Message : "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteConstraintException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v3

    invoke-static {p3}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_1

    .line 302
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider;->getTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {v0, p3, p4, p2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p2

    const-wide/16 v0, -0x1

    cmp-long p2, p2, v0

    if-eqz p2, :cond_3

    .line 304
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider;->isProcessingBatch()Z

    move-result p2

    if-nez p2, :cond_2

    .line 305
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider;->onCompleteOperation(Landroid/net/Uri;)V

    :cond_2
    move p2, v2

    goto :goto_1

    :cond_3
    move p2, v3

    .line 311
    :cond_4
    :goto_1
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider;->out()V

    :cond_5
    return p2
.end method
