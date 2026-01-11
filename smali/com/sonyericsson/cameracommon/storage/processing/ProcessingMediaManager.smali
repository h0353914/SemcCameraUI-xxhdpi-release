.class public final Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;
.super Ljava/lang/Object;
.source "ProcessingMediaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$OnMediaDequeSizeChangedListener;,
        Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;
    }
.end annotation


# static fields
.field private static volatile instance:Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;


# instance fields
.field private final mBackupDeque:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeque:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnMediaDequeSizeChangedListener:Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$OnMediaDequeSizeChangedListener;

.field private mOnMediaDequeSizeChangedListenerExternal:Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$OnMediaDequeSizeChangedListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDeque(Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;)Ljava/util/Deque;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->mDeque:Ljava/util/Deque;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnMediaDequeSizeChangedListenerExternal(Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;)Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$OnMediaDequeSizeChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->mOnMediaDequeSizeChangedListenerExternal:Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$OnMediaDequeSizeChangedListener;

    return-object p0
.end method

.method private constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->mDeque:Ljava/util/Deque;

    .line 50
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->mBackupDeque:Ljava/util/Deque;

    .line 119
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$1;-><init>(Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->mOnMediaDequeSizeChangedListener:Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$OnMediaDequeSizeChangedListener;

    return-void
.end method

.method public static dumpBitmap(JLandroid/graphics/Bitmap;)V
    .locals 7

    .line 287
    const-string v0, ",bitmap:"

    .line 0
    const-string v1, "dumpBitmap X "

    const-string v2, "/sdcard/DCIM/100ANDRO/"

    const-string v3, "dumpBitmap E mediaStoreId:"

    const/4 v4, 0x1

    .line 287
    :try_start_0
    new-array v5, v4, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static {v5}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 288
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ".jpg"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 289
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p2, v2, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v2

    .line 290
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 291
    new-array v3, v4, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mediaStoreId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v6

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 293
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;
    .locals 2

    .line 55
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->instance:Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;

    if-nez v0, :cond_1

    .line 56
    const-class v0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;

    monitor-enter v0

    .line 57
    :try_start_0
    sget-object v1, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->instance:Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;

    if-nez v1, :cond_0

    .line 58
    new-instance v1, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;

    invoke-direct {v1}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;-><init>()V

    sput-object v1, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->instance:Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;

    .line 60
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 62
    :cond_1
    :goto_0
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->instance:Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized add(Landroid/net/Uri;)Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;
    .locals 1

    monitor-enter p0

    .line 100
    :try_start_0
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;

    invoke-direct {v0, p1}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;-><init>(Landroid/net/Uri;)V

    .line 101
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->add(Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;)Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized add(Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;)Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;
    .locals 3

    const-string v0, "add ProcessingMedia "

    monitor-enter p0

    .line 93
    :try_start_0
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->mDeque:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->mOnMediaDequeSizeChangedListener:Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$OnMediaDequeSizeChangedListener;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->mDeque:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$OnMediaDequeSizeChangedListener;->onDequeSizeChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized findByMediaStoreId(J)Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;
    .locals 4

    monitor-enter p0

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->mDeque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;

    .line 136
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->-$$Nest$fgetmMediaStoreId(Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;)J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 137
    monitor-exit p0

    return-object v1

    .line 140
    :cond_1
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized findProcessingMediaByMediaStoreId(J)Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;
    .locals 4

    monitor-enter p0

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->mBackupDeque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;

    .line 180
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->-$$Nest$fgetmMediaStoreId(Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;)J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 181
    monitor-exit p0

    return-object v1

    .line 184
    :cond_1
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized findUriByMediaStoreId(J)Landroid/net/Uri;
    .locals 4

    monitor-enter p0

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->mBackupDeque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;

    .line 168
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->-$$Nest$fgetmMediaStoreId(Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;)J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 169
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->-$$Nest$fgetmStoreUri(Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 172
    :cond_1
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMediaDeque()Ljava/util/Deque;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Deque<",
            "Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->mDeque:Ljava/util/Deque;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 81
    :try_start_1
    new-instance v1, Ljava/util/ArrayDeque;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->mDeque:Ljava/util/Deque;

    invoke-direct {v1, v2}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    .line 82
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized poll()Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;
    .locals 6

    const-string v0, " poll :"

    monitor-enter p0

    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->mDeque:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;

    .line 145
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    new-array v2, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    if-eqz v1, :cond_1

    .line 147
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->mOnMediaDequeSizeChangedListener:Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$OnMediaDequeSizeChangedListener;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->mDeque:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$OnMediaDequeSizeChangedListener;->onDequeSizeChanged(I)V

    .line 148
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->mBackupDeque:Ljava/util/Deque;

    invoke-interface {v0, v1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->mBackupDeque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    const/4 v2, 0x5

    if-le v0, v2, :cond_2

    .line 150
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->mBackupDeque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;

    if-eqz v0, :cond_2

    .line 152
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->delTempThumb()V

    goto :goto_0

    .line 157
    :cond_1
    new-array v0, v4, [Ljava/lang/String;

    const-string v2, "poll ProcessingMedia: media is null"

    aput-object v2, v0, v3

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :cond_2
    :goto_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeByMediaStoreId(J)V
    .locals 4

    const-string v0, "mediaStoreId:"

    monitor-enter p0

    .line 105
    :try_start_0
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->mDeque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;

    .line 108
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->-$$Nest$fgetmMediaStoreId(Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;)J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 114
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->mDeque:Ljava/util/Deque;

    invoke-interface {p1, v1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 115
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->mOnMediaDequeSizeChangedListener:Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$OnMediaDequeSizeChangedListener;

    iget-object p2, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->mDeque:Ljava/util/Deque;

    invoke-interface {p2}, Ljava/util/Deque;->size()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$OnMediaDequeSizeChangedListener;->onDequeSizeChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setOnMediaDequeSizeChangedListener(Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$OnMediaDequeSizeChangedListener;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->mOnMediaDequeSizeChangedListenerExternal:Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$OnMediaDequeSizeChangedListener;

    return-void
.end method
