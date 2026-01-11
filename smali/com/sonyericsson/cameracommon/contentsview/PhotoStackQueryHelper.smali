.class public Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;
.super Ljava/lang/Object;
.source "PhotoStackQueryHelper.java"


# static fields
.field private static final CONTENT_EXTENSIONS:[Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "PhotoStackQueryHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 42
    const-string v0, ".3gp"

    const-string v1, ".mp4"

    const-string v2, ".JPG"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->CONTENT_EXTENSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendWhere(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 140
    const-string v0, " AND ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 141
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    if-eqz v0, :cond_0

    .line 143
    const-string v1, " OR "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_1
    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static appendWhere(Ljava/lang/StringBuilder;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 162
    const-string p2, " AND ("

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 164
    :cond_0
    const-string p2, "("

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/4 p2, 0x0

    .line 166
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    if-eqz p2, :cond_1

    .line 168
    const-string v0, " OR "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    :cond_1
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 172
    :cond_2
    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static declared-synchronized crQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;)Landroid/database/Cursor;
    .locals 5

    const-class v0, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;

    monitor-enter v0

    .line 59
    :try_start_0
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "crQuery() is called"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 v1, 0x0

    .line 62
    :try_start_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 63
    const-string v3, "android:query-arg-sql-selection"

    iget-object v4, p2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 64
    const-string v3, "android:query-arg-sql-selection-args"

    iget-object v4, p2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->selectionArgs:[Ljava/lang/CharSequence;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 66
    const-string v3, "android:query-arg-sql-sort-order"

    iget-object v4, p2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->sortOrder:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget v3, p2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->limit:I

    if-lez v3, :cond_1

    .line 68
    const-string v3, "android:query-arg-limit"

    iget v4, p2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->limit:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 69
    const-string v3, "android:query-arg-offset"

    iget v4, p2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->offset:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 71
    :cond_1
    iget-object p2, p2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v2, v1}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 73
    :try_start_2
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_2

    const-string p1, "crQuery: failed:"

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    :cond_2
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static createContentInfo(Landroid/content/ContentResolver;Landroid/database/Cursor;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;
    .locals 1

    const/4 v0, 0x1

    .line 357
    invoke-static {p0, p1, v0}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->createContentInfo(Landroid/content/ContentResolver;Landroid/database/Cursor;Z)Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    move-result-object p0

    return-object p0
.end method

.method private static createContentInfo(Landroid/content/ContentResolver;Landroid/database/Cursor;Z)Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 229
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->getMediaId(Landroid/database/Cursor;)I

    move-result v3

    .line 230
    const-string v4, "mime_type"

    .line 231
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 232
    const-string v5, "relative_path"

    .line 233
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 234
    const-string v6, "_display_name"

    .line 235
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 236
    const-string/jumbo v7, "volume_name"

    .line 237
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 238
    const-string/jumbo v8, "width"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 239
    const-string v9, "height"

    .line 240
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 241
    const-string v10, "bucket_id"

    .line 242
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 243
    invoke-static {v6}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 247
    const-string v12, "image/jpeg"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const/4 v13, 0x1

    if-nez v12, :cond_7

    const-string v12, ".JPG"

    .line 248
    invoke-static {v12, v11}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->isSupportedFileExtension(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    goto :goto_2

    .line 253
    :cond_0
    const-string/jumbo v12, "video/mp4"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const/4 v14, 0x2

    if-nez v12, :cond_6

    const-string v12, ".mp4"

    .line 254
    invoke-static {v12, v11}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->isSupportedFileExtension(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    goto :goto_1

    .line 259
    :cond_1
    const-string/jumbo v12, "video/3gpp"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    const-string v12, ".3gp"

    .line 260
    invoke-static {v12, v11}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->isSupportedFileExtension(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto :goto_0

    .line 265
    :cond_2
    const-string v11, "image/mpo"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 266
    sget-object v11, Lcom/sonyericsson/cameracommon/contentsview/QueryParameterAdapter;->MPO_3DPICTURES_CONTENT_URI:Landroid/net/Uri;

    .line 268
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 266
    invoke-static {v11, v12}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const/4 v14, 0x3

    goto :goto_3

    .line 271
    :cond_3
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "query error : mime = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_4
    const/4 v0, 0x0

    return-object v0

    .line 262
    :cond_5
    :goto_0
    sget-object v11, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 263
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 262
    invoke-static {v11, v12}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    goto :goto_3

    .line 256
    :cond_6
    :goto_1
    sget-object v11, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 257
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 256
    invoke-static {v11, v12}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    goto :goto_3

    .line 250
    :cond_7
    :goto_2
    sget-object v11, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 251
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 250
    invoke-static {v11, v12}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    move v14, v13

    :goto_3
    if-ne v14, v13, :cond_8

    .line 277
    const-string v12, "orientation"

    .line 278
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 277
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    .line 283
    :goto_4
    new-instance v12, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    invoke-direct {v12}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;-><init>()V

    int-to-long v2, v3

    .line 284
    iput-wide v2, v12, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mId:J

    .line 285
    iput-object v11, v12, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalUri:Landroid/net/Uri;

    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalPath:Ljava/lang/String;

    .line 287
    iput v14, v12, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mType:I

    .line 288
    iput v8, v12, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mWidth:I

    .line 289
    iput v9, v12, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mHeight:I

    .line 290
    iput v1, v12, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOrientation:I

    .line 291
    iput-object v4, v12, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mMimeType:Ljava/lang/String;

    .line 292
    iput v10, v12, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mBucketId:I

    move/from16 v1, p2

    .line 293
    iput-boolean v1, v12, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mIsContainDetails:Z

    .line 294
    iput-object v7, v12, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mVolumeName:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 297
    invoke-static {p0, v10}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->getGroupedImageCount(Landroid/content/ContentResolver;I)I

    move-result v1

    iput v1, v12, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mGroupedImage:I

    .line 298
    invoke-static {v12}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->getContentType(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    move-result-object v1

    iput-object v1, v12, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mContentType:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    .line 299
    iget-object v1, v12, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mContentType:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    sget-object v2, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->BURST:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    if-ne v1, v2, :cond_9

    .line 300
    invoke-static {p0, v10, v12}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->getGroupedImageMediaID(Landroid/content/ContentResolver;ILcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v12, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mMediaStoreIds:Ljava/util/List;

    :cond_9
    return-object v12
.end method

.method public static createContentInfoForMediaUris(Landroid/content/ContentResolver;Landroid/database/Cursor;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;
    .locals 1

    const/4 v0, 0x0

    .line 368
    invoke-static {p0, p1, v0}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->createContentInfo(Landroid/content/ContentResolver;Landroid/database/Cursor;Z)Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    move-result-object p0

    return-object p0
.end method

.method private static excludeFileSelection()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 647
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 664
    const-string v1, " (_display_name NOT  REGEXP \'.*CINEMA[^/]*\\....\\z\') AND  (_display_name NOT  REGEXP \'.*Screenshot[^/]*\\....\\z\')"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static generatePathSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(volume_name"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " like \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    const-string p0, " AND relative_path"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "/%\'"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    const-string p0, " AND relative_path NOT LIKE \'%/.%\' AND _display_name"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, " like \'%"

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static generateQueryPathForEachStorage(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 177
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 178
    invoke-static {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->generateQueryPathForOneStorage(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private static generateQueryPathForOneStorage(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 187
    sget-object v0, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->CONTENT_EXTENSIONS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 189
    invoke-static {p1, v3}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->generatePathSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static getBurstCaptureImageInfo(Landroid/content/ContentResolver;I)Landroid/database/Cursor;
    .locals 11

    .line 594
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;-><init>()V

    .line 595
    const-string v9, "orientation"

    const-string v10, "bucket_id"

    const-string v1, "_id"

    const-string v2, "relative_path"

    const-string v3, "_display_name"

    const-string/jumbo v4, "volume_name"

    const-string v5, "mime_type"

    const-string v6, "datetaken"

    const-string/jumbo v7, "width"

    const-string v8, "height"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 609
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "title"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%s DESC"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->sortOrder:Ljava/lang/String;

    .line 612
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(_display_name REGEXP \'DSC_\\d{4}_BURST\\d{17}_COVER.[jJ][pP][eE]?[gG]\') AND "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 623
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "(bucket_id=="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ")"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    const-string p1, " AND (media_type==1)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    .line 630
    const-string p1, "external"

    .line 631
    invoke-static {p1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 630
    invoke-static {p0, p1, v0}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->crQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_1

    .line 634
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_0

    const-string p0, "getBurstCaptureImageInfo: null"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-object p1

    .line 636
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    .line 637
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_2

    .line 638
    const-string v0, "getBurstCaptureImageInfo: row: 0"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 639
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :cond_3
    return-object p0
.end method

.method private static getContentType(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;
    .locals 2

    .line 439
    iget v0, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 440
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/PredictiveCapturePathBuilder;->isPredictiveCaptureImage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    sget-object p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->PREDICTIVE_CAPTURE:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    return-object p0

    .line 442
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalPath:Ljava/lang/String;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/storage/ManualBurstPathBuilder;->isBurstCaptureImage(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 443
    sget-object p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->BURST:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    return-object p0

    .line 445
    :cond_1
    sget-object p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->PHOTO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    return-object p0

    .line 447
    :cond_2
    iget p0, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mType:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_3

    .line 448
    sget-object p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->VIDEO:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    return-object p0

    .line 450
    :cond_3
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_4

    const-string p0, "Unsupported file type"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 451
    :cond_4
    sget-object p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->NONE:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    return-object p0
.end method

.method public static getCoverImageInfo(Landroid/content/ContentResolver;I)Landroid/database/Cursor;
    .locals 11

    .line 699
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;-><init>()V

    .line 700
    const-string v9, "orientation"

    const-string v10, "bucket_id"

    const-string v1, "_id"

    const-string v2, "relative_path"

    const-string v3, "_display_name"

    const-string/jumbo v4, "volume_name"

    const-string v5, "mime_type"

    const-string v6, "datetaken"

    const-string/jumbo v7, "width"

    const-string v8, "height"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 712
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 713
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "(_id like \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "\')"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    const-string p1, " AND (media_type==1 OR media_type==3)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    .line 729
    const-string p1, "external"

    .line 730
    invoke-static {p1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 729
    invoke-static {p0, p1, v0}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->crQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_1

    .line 733
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_0

    const-string p0, "getCoverImageInfo: null"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-object p1

    .line 735
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    .line 736
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_2

    const-string v0, "getCoverImageInfo: row: 0"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 737
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :cond_3
    return-object p0
.end method

.method private static getGroupedImageCount(Landroid/content/ContentResolver;I)I
    .locals 4

    .line 392
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getGroupedImageCount bucketId : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 395
    :cond_0
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;-><init>()V

    .line 396
    const-string v1, "bucket_id"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 399
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "datetaken"

    const-string v3, "_id"

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%s DESC, %s DESC"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->sortOrder:Ljava/lang/String;

    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 402
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "(bucket_id like \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "\')"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    const-string p1, " AND (media_type==1 OR media_type==3)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    .line 418
    const-string p1, "external"

    .line 419
    invoke-static {p1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 418
    invoke-static {p0, p1, v0}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->crQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 426
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    .line 427
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return p1
.end method

.method private static getGroupedImageMediaID(Landroid/content/ContentResolver;ILcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "I",
            "Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 310
    new-instance v1, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    invoke-direct {v1}, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;-><init>()V

    .line 311
    const-string v2, "bucket_id"

    const-string v3, "_id"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 315
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "datetaken"

    filled-new-array {v4, v3}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%s DESC, %s DESC"

    invoke-static {v2, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->sortOrder:Ljava/lang/String;

    .line 317
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "(bucket_id like \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, "\')"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    const-string p1, " AND (media_type==1 OR media_type==3)"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    .line 334
    const-string p1, "external"

    .line 335
    invoke-static {p1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 334
    invoke-static {p0, p1, v1}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->crQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_0

    .line 338
    iget-wide p1, p2, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mId:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 340
    :cond_0
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 341
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 343
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 346
    :cond_1
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public static getImagesInfo(Landroid/content/ContentResolver;Ljava/util/ArrayList;)Landroid/database/Cursor;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .line 751
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    .line 752
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 753
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 754
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 757
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;-><init>()V

    .line 758
    const-string v10, "orientation"

    const-string v11, "bucket_id"

    const-string v2, "_id"

    const-string v3, "relative_path"

    const-string v4, "_display_name"

    const-string/jumbo v5, "volume_name"

    const-string v6, "mime_type"

    const-string v7, "datetaken"

    const-string/jumbo v8, "width"

    const-string v9, "height"

    filled-new-array/range {v2 .. v11}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 770
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 771
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(_id >= \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' AND _id <= \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\')"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    const-string p1, " AND (media_type==1 OR media_type==3)"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    .line 791
    const-string p1, "external"

    .line 792
    invoke-static {p1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 791
    invoke-static {p0, p1, v0}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->crQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_1

    .line 795
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_0

    const-string p0, "getImagesInfo: null"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-object p1

    .line 797
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    .line 798
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_2

    const-string v0, "getImagesInfo: row: 0"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 799
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :cond_3
    return-object p0
.end method

.method public static getLatestImageInfo(Landroid/content/ContentResolver;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;)Landroid/database/Cursor;
    .locals 1

    .line 675
    const-string v0, "external"

    .line 676
    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 675
    invoke-static {p0, v0, p1}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->crQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_1

    .line 680
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_0

    const-string p0, "getLatestImageInfo: null"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-object p1

    .line 682
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    .line 683
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_2

    const-string v0, "getLatestImageInfo: row: 0"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 684
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :cond_3
    return-object p0
.end method

.method private static getMediaId(Landroid/database/Cursor;)I
    .locals 2

    .line 378
    const-string v0, "_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    .line 380
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getMediaId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return p0
.end method

.method public static getMediaPath(Landroid/content/ContentResolver;JI)Ljava/lang/String;
    .locals 10

    .line 457
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;-><init>()V

    .line 458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 460
    const-string v2, ")"

    const-string v3, "(_id="

    const-string v4, "_display_name"

    const-string v5, "relative_path"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq p3, v8, :cond_1

    const/4 v9, 0x2

    if-eq p3, v9, :cond_0

    const/4 v9, 0x3

    if-eq p3, v9, :cond_1

    return-object v6

    .line 484
    :cond_0
    sget-object p3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 485
    filled-new-array {v5, v4}, [Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 489
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    const-string p1, " AND (media_type==3)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    .line 500
    iput v7, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->offset:I

    .line 501
    iput v8, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->limit:I

    goto :goto_0

    .line 463
    :cond_1
    sget-object p3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 464
    filled-new-array {v5, v4}, [Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 468
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    const-string p1, " AND (media_type==1)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    .line 479
    iput v7, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->offset:I

    .line 480
    iput v8, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->limit:I

    .line 508
    :goto_0
    invoke-static {p0, p3, v0}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->crQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v6

    .line 514
    :cond_2
    :try_start_0
    invoke-interface {p0, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 516
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 515
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 518
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    .line 517
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 519
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 525
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :cond_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v6

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 522
    :catch_0
    :try_start_1
    new-array p1, v8, [Ljava/lang/String;

    const-string p2, "The specified column isn\'t found."

    aput-object p2, p1, v7

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 525
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v6

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 526
    throw p1
.end method

.method public static getPredictiveCaptureImageInfo(Landroid/content/ContentResolver;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 11

    .line 537
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;-><init>()V

    .line 538
    const-string v9, "orientation"

    const-string v10, "bucket_id"

    const-string v1, "_id"

    const-string v2, "relative_path"

    const-string v3, "_display_name"

    const-string/jumbo v4, "volume_name"

    const-string v5, "mime_type"

    const-string v6, "datetaken"

    const-string/jumbo v7, "width"

    const-string v8, "height"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 552
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "title"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%s DESC"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->sortOrder:Ljava/lang/String;

    .line 555
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 557
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "(_display_name REGEXP \'DSCPDC_\\d{4}_BURST"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "(|_COVER).[jJ][pP][eE]?[gG]\')"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    const-string p1, " AND "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "(bucket_id=="

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    const-string p1, " AND (media_type==1)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    .line 573
    const-string p1, "external"

    .line 574
    invoke-static {p1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 573
    invoke-static {p0, p1, v0}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->crQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_1

    .line 577
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_0

    const-string p0, "getPredictiveCaptureImageInfo: null"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-object p1

    .line 579
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-nez p2, :cond_3

    .line 580
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p2, :cond_2

    .line 581
    const-string p2, "getPredictiveCaptureImageInfo: row: 0"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 582
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :cond_3
    return-object p0
.end method

.method private static isSupportedFileExtension(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 817
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static setupQueryParam(Ljava/util/List;II)Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)",
            "Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;"
        }
    .end annotation

    .line 84
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setupQueryParam() has been called. offset = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 86
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    invoke-static {v0, p0}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->generateQueryPathForEachStorage(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 90
    new-instance p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;-><init>()V

    .line 91
    const-string v10, "bucket_id"

    const-string v11, "date_modified"

    const-string v1, "_id"

    const-string v2, "relative_path"

    const-string v3, "_display_name"

    const-string/jumbo v4, "volume_name"

    const-string v5, "mime_type"

    const-string v6, "datetaken"

    const-string/jumbo v7, "width"

    const-string v8, "height"

    const-string v9, "orientation"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 104
    iput p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->offset:I

    const/4 p1, 0x1

    .line 105
    iput p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->limit:I

    const/4 p1, -0x1

    .line 106
    const-string v1, "_id"

    const-string v2, "%s DESC, %s DESC"

    if-ne p2, p1, :cond_1

    .line 107
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string p2, "date_modified"

    filled-new-array {p2, v1}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v2, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->sortOrder:Ljava/lang/String;

    goto :goto_0

    .line 111
    :cond_1
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string p2, "datetaken"

    filled-new-array {p2, v1}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v2, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->sortOrder:Ljava/lang/String;

    .line 116
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 p2, 0x0

    .line 117
    invoke-static {p1, v0, p2}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->appendWhere(Ljava/lang/StringBuilder;Ljava/util/List;Z)V

    .line 118
    const-string p2, " AND (media_type==1 OR media_type==3)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-static {}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->excludeFileSelection()Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->appendWhere(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 128
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    return-object p0
.end method
