.class public final Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;
.super Landroid/content/ContentProvider;
.source "CameraContentProvider.java"


# static fields
.field private static final DELETE_BY_ID:I = 0x6

.field private static final EDITOR_ACTIVITY_NAME:Ljava/lang/String; = "com.google.android.apps.photos.api.providersample.SampleEditActivity"

.field private static final EDITOR_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.apps.photos.api.providersample"

.field private static final EDIT_TYPE_HINT:I = 0x3

.field private static final LAUNCH_TYPE_HINT:I = 0x5

.field private static final LOAD_BADGE_ICON:I = 0x3

.field private static final LOAD_DIALOG_ICON:I = 0x5

.field private static final LOAD_EXTERNAL_EDITOR_ICON:I = 0xc

.field private static final LOAD_INTERACT_ICON:I = 0x4

.field private static final LOAD_SEARCH_ICON:I = 0xb

.field private static final MATCH_PATH_DELETE_BY_ID:Ljava/lang/String; = "delete/#"

.field private static final MATCH_PATH_DISCOVER:Ljava/lang/String; = "discover"

.field private static final MATCH_PATH_DISCOVER_TYPE_INFOS:Ljava/lang/String; = "discover/*"

.field private static final MATCH_PATH_SPECIAL_TYPE_ID:Ljava/lang/String; = "type/*"

.field private static final MATCH_PATH_SPECIAL_TYPE_METADATA:Ljava/lang/String; = "data/*"

.field private static final MATCH_PROCESSING_BY_ID:Ljava/lang/String; = "processing/#"

.field private static final MATCH_PROCESSING_METADATA:Ljava/lang/String; = "processing"

.field private static final MATCH_REMAINDER:Ljava/lang/String; = "/*"

.field private static final QUERY_DISCOVER:I = 0x9

.field private static final QUERY_DISCOVER_SPECIAL_TYPES:I = 0xa

.field private static final QUERY_PROCESSING_METADATA:I = 0x7

.field private static final QUERY_PROCESSING_METADATA_BY_ID:I = 0x8

.field private static final QUERY_SPECIAL_TYPE_ID:I = 0x1

.field private static final QUERY_SPECIAL_TYPE_METADATA:I = 0x2

.field private static final RESOURCE_ID_PATH_INDEX:I = 0x1

.field private static final SECURE_TYPE_HINT:I = 0x4

.field private static final STAR_TYPE_HINT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SpecialTypesProvider"

.field private static final TYPE_URI_PROJECTION:[Ljava/lang/String;

.field private static final VERSION:I = 0x4


# instance fields
.field private authority:Ljava/lang/String;

.field private editorIconUri:Ljava/lang/String;

.field private trustedPartners:Lcom/sonyericsson/cameracommon/storage/processing/TrustedPartners;

.field private uriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 102
    const-string/jumbo v0, "special_type_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->TYPE_URI_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private static detectSpecialType(J)Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;
    .locals 0

    .line 204
    sget-object p0, Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;->NONE:Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;

    return-object p0
.end method

.method private loadIcon(Landroid/net/Uri;Lcom/google/android/apps/photos/api/IconQuery$Type;)Landroid/os/ParcelFileDescriptor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 375
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    .line 376
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 377
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 384
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 385
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 386
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 387
    invoke-virtual {p2}, Lcom/google/android/apps/photos/api/IconQuery$Type;->getDimensionResourceId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 389
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v0, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 395
    sget-object v0, Lcom/google/android/apps/photos/api/IconQuery$Type;->DIALOG:Lcom/google/android/apps/photos/api/IconQuery$Type;

    if-ne p2, v0, :cond_0

    const/16 p2, 0x14

    .line 396
    new-array p2, p2, [F

    fill-array-data p2, :array_0

    .line 402
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 403
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 404
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 405
    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v3, p2}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 p2, 0x0

    .line 406
    invoke-virtual {v1, p1, p2, p2, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object p1, v0

    .line 409
    :cond_0
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->writeBitmapToFd(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private loadProcessingThumb(J)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 330
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->getInstance()Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;

    move-result-object p0

    .line 331
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->findByMediaStoreId(J)Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;

    move-result-object v0

    if-nez v0, :cond_0

    .line 333
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->findProcessingMediaByMediaStoreId(J)Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;

    move-result-object v0

    .line 335
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "loadProcessingThumb media: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SpecialTypesProvider"

    filled-new-array {p1, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 336
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->getTempThumb()Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method private static queryOrScanAndQuery(Landroid/database/sqlite/SQLiteDatabase;J)Landroid/database/Cursor;
    .locals 2

    .line 180
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->querySpecialTypeId(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;

    move-result-object v0

    .line 181
    sget-object v1, Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;->UNKNOWN:Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;

    if-ne v0, v1, :cond_0

    .line 182
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->scanUriAndUpdateDb(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 183
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->querySpecialTypeId(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;

    move-result-object v0

    .line 186
    :cond_0
    new-instance p0, Landroid/database/MatrixCursor;

    const-string/jumbo p1, "special_type_id"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 187
    sget-object p1, Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;->NONE:Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;

    if-eq v0, p1, :cond_1

    sget-object p1, Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;->UNKNOWN:Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;

    if-eq v0, p1, :cond_1

    .line 188
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;->name()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_1
    return-object p0
.end method

.method private queryPreferredEditorData()Landroid/os/Bundle;
    .locals 3

    .line 231
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 232
    const-string v1, "editor_package_name"

    const-string v2, "com.google.android.apps.photos.api.providersample"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v1, "editor_activity_name"

    const-string v2, "com.google.android.apps.photos.api.providersample.SampleEditActivity"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v1, "editor_icon_uri"

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->editorIconUri:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private queryProcessingMetadata(Ljava/lang/Long;)Landroid/database/Cursor;
    .locals 8

    .line 263
    new-instance p0, Landroid/database/MatrixCursor;

    const-string v0, "progress_status"

    const-string v1, "progress_percentage"

    const-string v2, "media_store_id"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 269
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->getInstance()Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 271
    :goto_0
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager;->getMediaDeque()Ljava/util/Deque;

    move-result-object v0

    .line 272
    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;

    if-nez v2, :cond_2

    .line 273
    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->getMediaStoreId()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 275
    :cond_2
    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/storage/processing/ProcessingMediaManager$ProcessingMedia;->getMediaStoreId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/google/android/apps/photos/api/ProcessingMetadataQuery$ProgressStatus;->INDETERMINATE:Lcom/google/android/apps/photos/api/ProcessingMetadataQuery$ProgressStatus;

    .line 277
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    .line 274
    invoke-virtual {p0, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    const/4 p1, -0x1

    .line 282
    invoke-virtual {p0, p1}, Landroid/database/MatrixCursor;->moveToPosition(I)Z

    return-object p0
.end method

.method private querySpecialTypeId(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 2

    .line 173
    invoke-static {p1}, Lcom/google/android/apps/photos/api/PhotosOemApi;->getMediaStoreIdFromQueryTypeUri(Landroid/net/Uri;)J

    move-result-wide v0

    .line 174
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/storage/processing/ProviderDbHelper;->get(Landroid/content/Context;)Lcom/sonyericsson/cameracommon/storage/processing/ProviderDbHelper;

    move-result-object p0

    .line 175
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/processing/ProviderDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 176
    invoke-static {p0, v0, v1}, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->queryOrScanAndQuery(Landroid/database/sqlite/SQLiteDatabase;J)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method private static querySpecialTypeId(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;
    .locals 10

    const-string v0, "querySpecialTypeId: specialTypeName:"

    .line 208
    sget-object v1, Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;->UNKNOWN:Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;

    .line 209
    sget-object v4, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->TYPE_URI_PROJECTION:[Ljava/lang/String;

    .line 213
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 209
    const-string/jumbo v3, "type_uri"

    const-string v5, "media_store_id = ?"

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 217
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 218
    const-string/jumbo p1, "special_type_id"

    .line 219
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 218
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    .line 220
    new-array p2, p2, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p2, v0

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 221
    sget-object v1, Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;->UNKNOWN:Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 225
    throw p1
.end method

.method private querySpecialTypesVersion()Landroid/os/Bundle;
    .locals 2

    .line 257
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 258
    const-string/jumbo v0, "version"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method private static scanUriAndUpdateDb(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 3

    .line 194
    invoke-static {p1, p2}, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->detectSpecialType(J)Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;

    move-result-object v0

    .line 196
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 197
    const-string v2, "media_store_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 198
    const-string/jumbo p1, "special_type_id"

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/processing/SpecialType;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string/jumbo p1, "type_uri"

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method private validateCallingPackage()V
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->trustedPartners:Lcom/sonyericsson/cameracommon/storage/processing/TrustedPartners;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/storage/processing/TrustedPartners;->isTrustedApplication(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 430
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0}, Ljava/lang/SecurityException;-><init>()V

    throw p0
.end method

.method private writeBitmapToFd(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)Landroid/os/ParcelFileDescriptor;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 p0, 0x0

    .line 345
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    const/4 v1, 0x0

    .line 346
    aget-object v1, v0, v1

    const/4 v2, 0x1

    .line 347
    aget-object v0, v0, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 348
    :try_start_1
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 p0, 0x64

    .line 349
    :try_start_2
    invoke-virtual {p1, p2, p0, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 350
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_0

    .line 357
    :try_start_3
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 364
    :catch_0
    :cond_0
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v2, p0

    goto :goto_0

    :catch_3
    move-exception p1

    move-object v2, p0

    goto :goto_2

    :catchall_2
    move-exception p1

    move-object v0, p0

    move-object v2, v0

    :goto_0
    move-object p0, p1

    :goto_1
    if-eqz v0, :cond_1

    .line 357
    :try_start_5
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    :cond_1
    if-eqz v2, :cond_2

    .line 364
    :try_start_6
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 369
    :catch_5
    :cond_2
    throw p0

    :catch_6
    move-exception p1

    move-object v0, p0

    move-object v2, v0

    :goto_2
    move-object p0, p1

    :goto_3
    if-eqz v0, :cond_3

    .line 357
    :try_start_7
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_4

    :catch_7
    move-exception p0

    :cond_3
    :goto_4
    if-eqz v2, :cond_4

    .line 364
    :try_start_8
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_5

    :catch_8
    move-exception p0

    .line 370
    :cond_4
    :goto_5
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 3

    .line 113
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 115
    new-instance v0, Ljava/util/HashSet;

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 117
    new-instance v1, Lcom/sonyericsson/cameracommon/storage/processing/TrustedPartners;

    invoke-direct {v1, p1, v0}, Lcom/sonyericsson/cameracommon/storage/processing/TrustedPartners;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->trustedPartners:Lcom/sonyericsson/cameracommon/storage/processing/TrustedPartners;

    .line 118
    iget-object p1, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->authority:Ljava/lang/String;

    .line 119
    new-instance p1, Landroid/content/UriMatcher;

    const/4 p2, -0x1

    invoke-direct {p1, p2}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 120
    iget-object p2, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->authority:Ljava/lang/String;

    const-string/jumbo v0, "type/*"

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 121
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    iget-object p2, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->authority:Ljava/lang/String;

    const-string v0, "data/*"

    const/4 v1, 0x2

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 122
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    iget-object p2, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->authority:Ljava/lang/String;

    const-string v0, "discover"

    const/16 v1, 0x9

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 123
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    iget-object p2, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->authority:Ljava/lang/String;

    const-string v0, "discover/*"

    const/16 v1, 0xa

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 124
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    iget-object p2, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->authority:Ljava/lang/String;

    const-string v0, "icon/#/badge"

    const/4 v1, 0x3

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 125
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    iget-object p2, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->authority:Ljava/lang/String;

    const-string v0, "icon/#/search"

    const/16 v1, 0xb

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 126
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    iget-object p2, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->authority:Ljava/lang/String;

    const-string v0, "icon/#/interact"

    const/4 v1, 0x4

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 127
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    iget-object p2, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->authority:Ljava/lang/String;

    const-string v0, "icon/#/dialog"

    const/4 v1, 0x5

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 128
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    iget-object p2, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->authority:Ljava/lang/String;

    const-string v0, "delete/#"

    const/4 v1, 0x6

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 129
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    iget-object p2, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->authority:Ljava/lang/String;

    const-string v0, "processing"

    const/4 v1, 0x7

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 132
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    iget-object p2, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->authority:Ljava/lang/String;

    const-string v0, "processing/#"

    const/16 v1, 0x8

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 134
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->authority:Ljava/lang/String;

    const-string p2, "icon/#/editor"

    const/16 v0, 0xc

    invoke-virtual {p1, p0, p2, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "method: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",arg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    .line 146
    const-string/jumbo v0, "version"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->querySpecialTypesVersion()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 151
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .line 240
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->validateCallingPackage()V

    .line 241
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_3

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-nez p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, p0

    .line 243
    :goto_0
    invoke-static {p2}, Lcom/google/android/apps/photos/api/Preconditions;->checkArgument(Z)V

    if-nez p3, :cond_1

    move p0, v0

    .line 244
    :cond_1
    invoke-static {p0}, Lcom/google/android/apps/photos/api/Preconditions;->checkArgument(Z)V

    const/4 p0, 0x4

    .line 246
    const-string p2, "SpecialTypesProvider"

    invoke-static {p2, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 247
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "Doing dummy delete handling for "

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", returning 1"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p2, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    :cond_2
    return v0

    .line 252
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unrecognized uri: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 414
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 419
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public onCreate()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 289
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->validateCallingPackage()V

    .line 290
    const-string v0, "r"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "uri "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 294
    iget-object p2, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p2

    const/4 v0, 0x3

    const/4 v1, 0x4

    const-string v2, "SpecialTypesProvider"

    if-eq p2, v0, :cond_9

    if-eq p2, v1, :cond_7

    const/4 v0, 0x5

    if-eq p2, v0, :cond_5

    const/16 v0, 0x8

    if-eq p2, v0, :cond_3

    const/16 v0, 0xb

    if-eq p2, v0, :cond_1

    const/16 v0, 0xc

    if-ne p2, v0, :cond_0

    .line 322
    sget-object p2, Lcom/google/android/apps/photos/api/IconQuery$Type;->EDITOR:Lcom/google/android/apps/photos/api/IconQuery$Type;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->loadIcon(Landroid/net/Uri;Lcom/google/android/apps/photos/api/IconQuery$Type;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0

    .line 324
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unrecognized format: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 301
    :cond_1
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 302
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "loading search icon "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_2
    sget-object p2, Lcom/google/android/apps/photos/api/IconQuery$Type;->SEARCH:Lcom/google/android/apps/photos/api/IconQuery$Type;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->loadIcon(Landroid/net/Uri;Lcom/google/android/apps/photos/api/IconQuery$Type;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0

    .line 316
    :cond_3
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 317
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "loading processing thumb"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_4
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide p1

    .line 320
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->loadProcessingThumb(J)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0

    .line 311
    :cond_5
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 312
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "loading dialog icon "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_6
    sget-object p2, Lcom/google/android/apps/photos/api/IconQuery$Type;->DIALOG:Lcom/google/android/apps/photos/api/IconQuery$Type;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->loadIcon(Landroid/net/Uri;Lcom/google/android/apps/photos/api/IconQuery$Type;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0

    .line 306
    :cond_7
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 307
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "loading interact icon "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_8
    sget-object p2, Lcom/google/android/apps/photos/api/IconQuery$Type;->INTERACT:Lcom/google/android/apps/photos/api/IconQuery$Type;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->loadIcon(Landroid/net/Uri;Lcom/google/android/apps/photos/api/IconQuery$Type;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0

    .line 296
    :cond_9
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 297
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "loading badge icon "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_a
    sget-object p2, Lcom/google/android/apps/photos/api/IconQuery$Type;->BADGE:Lcom/google/android/apps/photos/api/IconQuery$Type;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->loadIcon(Landroid/net/Uri;Lcom/google/android/apps/photos/api/IconQuery$Type;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0

    .line 291
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unsupported mode: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 158
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->validateCallingPackage()V

    .line 159
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "query uri: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 160
    iget-object p2, p0, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p2

    const/4 p3, 0x1

    if-eq p2, p3, :cond_2

    const/4 p3, 0x7

    if-eq p2, p3, :cond_1

    const/16 p3, 0x8

    if-ne p2, p3, :cond_0

    .line 166
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->queryProcessingMetadata(Ljava/lang/Long;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    .line 168
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unrecognized uri: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p1, 0x0

    .line 164
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->queryProcessingMetadata(Ljava/lang/Long;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    .line 162
    :cond_2
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/storage/processing/CameraContentProvider;->querySpecialTypeId(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 425
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
