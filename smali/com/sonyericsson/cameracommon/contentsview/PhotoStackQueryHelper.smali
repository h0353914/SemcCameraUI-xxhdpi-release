.class public Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;
.super Ljava/lang/Object;
.source "PhotoStackQueryHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PhotoStackQueryHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized crDelete(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrDeleteParameter;)I
    .locals 3

    const-class v0, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;

    monitor-enter v0

    .line 128
    :try_start_0
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_0

    const-string v1, "crDelete() is called"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 v1, 0x0

    .line 131
    :try_start_1
    iget-object v2, p2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrDeleteParameter;->where:Ljava/lang/String;

    iget-object p2, p2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrDeleteParameter;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {p0, p1, v2, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 134
    :try_start_2
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_1

    const-string p1, "crDelete: failed."

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    move p0, v1

    .line 136
    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 127
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized crQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;)Landroid/database/Cursor;
    .locals 9

    const-class v0, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;

    monitor-enter v0

    .line 93
    :try_start_0
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_0

    const-string v1, "crQuery() is called"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 v1, 0x0

    .line 98
    :try_start_1
    iget v2, p2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->limit:I

    if-lez v2, :cond_1

    .line 99
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s limit %d offset %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->sortOrder:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, p2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->limit:I

    .line 101
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget v6, p2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->offset:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 99
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 103
    :cond_1
    iget-object v2, p2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->sortOrder:Ljava/lang/String;

    :goto_0
    move-object v8, v2

    .line 105
    iget-object v5, p2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    iget-object v6, p2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    iget-object v7, p2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->selectionArgs:[Ljava/lang/String;

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 112
    :try_start_2
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_2

    const-string p1, "crQuery: failed:"

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    move-object p0, v1

    .line 114
    :goto_1
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 92
    monitor-exit v0

    throw p0
.end method

.method public static deleteImage(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 42
    :cond_0
    new-instance v1, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    invoke-direct {v1}, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;-><init>()V

    const-string v2, "_id"

    const-string v3, "_data"

    .line 43
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    const/4 v2, 0x0

    .line 49
    iput-object v2, v1, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    .line 50
    iput-object v2, v1, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->selectionArgs:[Ljava/lang/String;

    .line 51
    iput-object v2, v1, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->sortOrder:Ljava/lang/String;

    .line 52
    iput v0, v1, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->limit:I

    .line 53
    iput v0, v1, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->offset:I

    .line 54
    invoke-static {p0, p1, v1}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->crQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    move v4, v0

    move v5, v4

    .line 56
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-ge v4, v6, :cond_3

    .line 57
    invoke-interface {v1, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 59
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 60
    sget-boolean v7, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v7, :cond_1

    new-array v7, v3, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Deleting "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "..."

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v0

    invoke-static {v7}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 62
    :cond_1
    new-instance v6, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrDeleteParameter;

    invoke-direct {v6}, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrDeleteParameter;-><init>()V

    .line 63
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrDeleteParameter;->where:Ljava/lang/String;

    .line 65
    iput-object v2, v6, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrDeleteParameter;->selectionArgs:[Ljava/lang/String;

    .line 66
    invoke-static {p0, p1, v6}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->crDelete(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrDeleteParameter;)I

    move-result v6

    if-eq v6, v3, :cond_2

    add-int/lit8 v5, v5, 0x1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 71
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 73
    :cond_4
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_5

    const-string p0, "deleteImage() failed: Cursor is null."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_5
    move v5, v0

    :goto_1
    if-nez v5, :cond_6

    return v3

    :cond_6
    return v0
.end method
