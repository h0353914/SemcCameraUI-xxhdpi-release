.class public final Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;
.super Ljava/lang/Object;
.source "ProcessingMediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProcessingMedia"
.end annotation


# instance fields
.field private final mConditionVariable:Landroid/os/ConditionVariable;

.field private final mMediaStoreId:J

.field private mOrientation:I

.field private final mStoreUri:Landroid/net/Uri;


# direct methods
.method static bridge synthetic -$$Nest$fgetmMediaStoreId(Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;)J
    .locals 2

    iget-wide v0, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->mMediaStoreId:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmStoreUri(Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->mStoreUri:Landroid/net/Uri;

    return-object p0
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 2

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->mConditionVariable:Landroid/os/ConditionVariable;

    .line 194
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->mStoreUri:Landroid/net/Uri;

    .line 195
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->mMediaStoreId:J

    return-void
.end method


# virtual methods
.method public createTempThumb([B)V
    .locals 11

    const-string v0, "Save bitmap to "

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "E: mMediaStoreId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->mMediaStoreId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mOrientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 255
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->mConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    if-eqz p1, :cond_0

    .line 258
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x6

    .line 259
    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 260
    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 261
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 262
    iget v1, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->mOrientation:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    invoke-virtual {v9, v1, v2, v5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 263
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p1

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 264
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    .line 265
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->mMediaStoreId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 266
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 267
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v1, v5, v6, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 268
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 269
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 p1, 0x1

    .line 270
    new-array p1, p1, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 272
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 275
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->mConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    .line 276
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "X: mMediaStoreId:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->mMediaStoreId:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void
.end method

.method public delTempThumb()V
    .locals 5

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "E: mMediaStoreId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->mMediaStoreId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 218
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 219
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->mMediaStoreId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 220
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 223
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "X: mMediaStoreId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->mMediaStoreId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void
.end method

.method public getMediaStoreId()J
    .locals 2

    .line 203
    iget-wide v0, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->mMediaStoreId:J

    return-wide v0
.end method

.method public getStoreUri()Landroid/net/Uri;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->mStoreUri:Landroid/net/Uri;

    return-object p0
.end method

.method public getTempThumb()Landroid/os/ParcelFileDescriptor;
    .locals 5

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "E: mMediaStoreId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->mMediaStoreId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->mConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 229
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 230
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->mMediaStoreId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 232
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    const-string v0, "get descriptor from temp cache"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    .line 235
    :try_start_0
    invoke-static {v1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 237
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 240
    :cond_0
    const-string v0, "get descriptor from final image"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 241
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 243
    :try_start_1
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->mStoreUri:Landroid/net/Uri;

    const-string v2, "r"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 245
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    .line 249
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "X: mMediaStoreId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->mMediaStoreId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ",descriptor:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-object v0
.end method

.method public notifyMediaStoreChange(Landroid/content/Context;)V
    .locals 2

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mStoreUri:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->mStoreUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 208
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->mStoreUri:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 280
    iput p1, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->mOrientation:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ProcessingMedia{mMediaStoreId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->mMediaStoreId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
