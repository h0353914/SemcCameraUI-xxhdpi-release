.class public final Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher;
.super Ljava/lang/Object;
.source "AlbumLauncher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;
    }
.end annotation


# static fields
.field public static final EXTRA_BURST_BUCKETID:Ljava/lang/String; = "burst_bucketId"

.field public static final TAG:Ljava/lang/String; = "AlbumLauncher"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAlbumAvailable()Z
    .locals 2

    .line 74
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonymobile.album.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAlbumExist()Z
    .locals 4

    .line 88
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 93
    const-string v1, "com.sonyericsson.album"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static launchAlbum(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;IZ)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 111
    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher;->launchAlbum(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public static launchAlbum(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;IZZ)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 125
    invoke-static/range {v0 .. v6}, Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher;->launchAlbum(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;IZZLcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;)V

    return-void
.end method

.method public static launchAlbum(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;IZZLcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;)V
    .locals 5

    .line 147
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "launchAlbum("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 151
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.REVIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    invoke-static {p2}, Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;->fromText(Ljava/lang/String;)Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;->MPO:Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;

    if-ne v2, v3, :cond_1

    .line 154
    sget-object v2, Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;->PHOTO:Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$MimeType;->mText:Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 159
    invoke-static {v2, p1, p2}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->getDefaultGallery(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;

    move-result-object v2

    .line 161
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "launchAlbum defaultGallery "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 162
    :cond_2
    sget-object v3, Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$1;->$SwitchMap$com$sonyericsson$cameracommon$utility$CommonUtility$DefaultGallerySetting:[I

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 p3, 0x2

    if-eq v3, p3, :cond_3

    const/4 p3, 0x3

    if-eq v3, p3, :cond_3

    goto :goto_1

    .line 180
    :cond_3
    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 164
    :cond_4
    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p4, :cond_5

    .line 167
    const-string p4, "burst_bucketId"

    invoke-virtual {v0, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_5
    if-eqz p5, :cond_6

    .line 170
    const-string p3, "com.sonyericsson.album.intent.extra.FAST_VIEW_MODE"

    invoke-virtual {v0, p3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_6
    if-eqz p6, :cond_7

    .line 174
    const-string p3, "com.sonymobile.album.intent.extra.PREDICTIVE_CAPTURE_COUNT"

    .line 175
    invoke-virtual {p6}, Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;->getCaptureNum()I

    move-result p4

    .line 174
    invoke-virtual {v0, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 188
    :cond_7
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p3

    if-nez p3, :cond_9

    .line 190
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher;->isAlbumExist()Z

    move-result p3

    if-nez p3, :cond_8

    .line 192
    const-string p3, "com.google.android.apps.photos"

    invoke-virtual {v0, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    :cond_8
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p3

    if-nez p3, :cond_9

    .line 197
    new-instance v0, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    :cond_9
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide p1

    .line 203
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->getInstance()Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->findByMediaStoreId(J)Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;

    move-result-object p3

    .line 204
    sget-boolean p4, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p4, :cond_a

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "ProcessingMedia uri:"

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    filled-new-array {p4}, [Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_a
    if-eqz p3, :cond_b

    .line 206
    const-string p3, "processing_uri_intent_extra"

    .line 207
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/photos/api/PhotosOemApi;->getQueryProcessingUri(Landroid/content/Context;J)Landroid/net/Uri;

    move-result-object p1

    .line 206
    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_b
    const/16 p1, 0x9

    .line 211
    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 213
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "No activity found for "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 216
    :goto_2
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setViewerLaunched()V

    return-void
.end method

.method public static launchAlbumSecure(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;[J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;",
            "[J)V"
        }
    .end annotation

    .line 238
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_4

    .line 242
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "launchAlbumSecure("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 245
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.REVIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 246
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {v2, p1, p2}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->getDefaultGallery(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;

    move-result-object p1

    .line 251
    sget-object p2, Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher$1;->$SwitchMap$com$sonyericsson$cameracommon$utility$CommonUtility$DefaultGallerySetting:[I

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;->ordinal()I

    move-result v1

    aget p2, p2, v1

    const-string v1, "com.google.android.apps.photos.api.secure_mode"

    const-string v2, "com.google.android.apps.photos.api.secure_mode_ids"

    const/4 v3, 0x1

    if-eq p2, v3, :cond_2

    const/4 p3, 0x2

    if-eq p2, p3, :cond_1

    const/4 p3, 0x3

    if-eq p2, p3, :cond_1

    goto :goto_0

    .line 254
    :cond_1
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 256
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 259
    :cond_2
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/utility/CommonUtility$DefaultGallerySetting;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    const-string p1, "com.sonyericsson.album.intent.extra.FAST_VIEW_MODE"

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p3, :cond_3

    .line 262
    const-string p1, "com.sonymobile.album.intent.extra.PREDICTIVE_CAPTURE_COUNT"

    .line 264
    invoke-virtual {p3}, Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;->getCaptureNum()I

    move-result p2

    .line 262
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 266
    :cond_3
    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 267
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_0
    const/16 p1, 0x9

    .line 277
    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 279
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "No activity found for "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 282
    :goto_1
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setViewerLaunched()V

    return-void

    .line 239
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "album image uri is empty."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
