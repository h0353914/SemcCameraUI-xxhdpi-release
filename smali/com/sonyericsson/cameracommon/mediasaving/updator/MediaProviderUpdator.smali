.class public Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;
.super Ljava/lang/Object;
.source "MediaProviderUpdator.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MediaProviderUpdator"


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static sendBroadcastCameraShot(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3

    .line 99
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendBroadcastCameraShot: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    if-nez p0, :cond_3

    .line 106
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "Activity has already finished."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return-void

    .line 110
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    const-string v1, "external_primary"

    invoke-static {v1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 112
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 111
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 114
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.action.NEW_PICTURE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 115
    :cond_4
    invoke-static {v1}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 116
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 118
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.action.NEW_VIDEO"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 121
    :cond_5
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Invalid URI: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method


# virtual methods
.method public insertVideoAndSendIntent(Ljava/lang/String;Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;)Landroid/net/Uri;
    .locals 11

    const-string v0, ""

    .line 49
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    .line 52
    new-instance v2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    invoke-direct {v2}, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;-><init>()V

    .line 53
    const-string v3, "_id"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 56
    invoke-virtual {p2}, Lcom/sonyericsson/cameracommon/storage/VideoSavingRequest;->getStorageType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object p2

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;->mContext:Landroid/content/Context;

    invoke-static {p2, v4}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getVolume(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 57
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 58
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 59
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "relative_path"

    const-string v9, "_display_name"

    const-string/jumbo v5, "volume_name"

    move-object v6, p2

    filled-new-array/range {v5 .. v10}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%s like \'%s\' AND %s like \'%s\' AND %s like \'%s\'"

    invoke-static {p1, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    .line 64
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 65
    invoke-static {p2}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 66
    invoke-static {p0, p1, v2}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->crQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object p0

    const/4 p2, 0x0

    if-eqz p0, :cond_1

    .line 70
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 73
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p2, p1

    .line 76
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 77
    throw p1

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 80
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->SUCCESS:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    .line 83
    :cond_2
    sget-object p0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->SUCCESS:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    if-eq v1, p0, :cond_3

    .line 84
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Failed to inserting a video:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 87
    :cond_3
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "insertVideoAndSendIntent: result: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_4
    return-object p2
.end method
