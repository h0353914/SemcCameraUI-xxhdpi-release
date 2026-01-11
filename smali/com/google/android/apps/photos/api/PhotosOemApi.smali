.class public final Lcom/google/android/apps/photos/api/PhotosOemApi;
.super Ljava/lang/Object;
.source "PhotosOemApi.java"


# static fields
.field public static final ACTION_REVIEW_PROCESSING_URI_INTENT_EXTRA:Ljava/lang/String; = "processing_uri_intent_extra"

.field public static final INITIAL_VERSION:I = 0x1

.field public static final METHOD_EDITOR_DATA:Ljava/lang/String; = "editor_data"

.field public static final METHOD_EDITOR_DATA_ACTIVITY_NAME:Ljava/lang/String; = "editor_activity_name"

.field public static final METHOD_EDITOR_DATA_ICON_URI:Ljava/lang/String; = "editor_icon_uri"

.field public static final METHOD_EDITOR_DATA_PACKAGE_NAME:Ljava/lang/String; = "editor_package_name"

.field public static final METHOD_VERSION:Ljava/lang/String; = "version"

.field public static final METHOD_VERSION_KEY_VERSION_INT:Ljava/lang/String; = "version"

.field public static final PATH_DELETE:Ljava/lang/String; = "delete"

.field public static final PATH_DISCOVER:Ljava/lang/String; = "discover"

.field public static final PATH_PROCESSING_DATA:Ljava/lang/String; = "processing"

.field public static final PATH_SPECIAL_TYPE_DATA:Ljava/lang/String; = "data"

.field public static final PATH_SPECIAL_TYPE_ID:Ljava/lang/String; = "type"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAuthority(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const v0, 0x7f0f0502

    .line 162
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getBaseBuilder(Landroid/content/Context;)Landroid/net/Uri$Builder;
    .locals 2

    .line 277
    invoke-static {p0}, Lcom/google/android/apps/photos/api/PhotosOemApi;->getAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 278
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 279
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 280
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static getDeleteUri(Landroid/content/Context;J)Landroid/net/Uri;
    .locals 1

    .line 270
    invoke-static {p0}, Lcom/google/android/apps/photos/api/PhotosOemApi;->getBaseBuilder(Landroid/content/Context;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "delete"

    .line 271
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 272
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 273
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getMediaStoreIdFromQueryTypeUri(Landroid/net/Uri;)J
    .locals 2

    .line 170
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getPreferredEditorData(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 3

    .line 149
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 150
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 151
    invoke-static {p0}, Lcom/google/android/apps/photos/api/PhotosOemApi;->getAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 154
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "editor_data"

    const/4 v2, 0x0

    .line 155
    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static getQueryDataUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .line 244
    invoke-static {p0}, Lcom/google/android/apps/photos/api/PhotosOemApi;->getBaseBuilder(Landroid/content/Context;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "data"

    .line 245
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 246
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 247
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getQueryDiscoverDataUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 1

    .line 254
    invoke-static {p0}, Lcom/google/android/apps/photos/api/PhotosOemApi;->getBaseBuilder(Landroid/content/Context;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "discover"

    .line 255
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 256
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getQueryDiscoverSupportedSpecialTypesUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .line 260
    invoke-static {p0}, Lcom/google/android/apps/photos/api/PhotosOemApi;->getBaseBuilder(Landroid/content/Context;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "discover"

    .line 261
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 262
    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 263
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getQueryProcessingUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 1

    .line 223
    invoke-static {p0}, Lcom/google/android/apps/photos/api/PhotosOemApi;->getBaseBuilder(Landroid/content/Context;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "processing"

    .line 224
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 225
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getQueryProcessingUri(Landroid/content/Context;J)Landroid/net/Uri;
    .locals 1

    .line 213
    invoke-static {p0}, Lcom/google/android/apps/photos/api/PhotosOemApi;->getBaseBuilder(Landroid/content/Context;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "processing"

    .line 214
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 215
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 216
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getQueryTypeUri(Landroid/content/Context;J)Landroid/net/Uri;
    .locals 1

    .line 233
    invoke-static {p0}, Lcom/google/android/apps/photos/api/PhotosOemApi;->getBaseBuilder(Landroid/content/Context;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string/jumbo v0, "type"

    .line 234
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 235
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 236
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getSpecialTypeId(Landroid/content/Context;J)Ljava/lang/String;
    .locals 6

    .line 188
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/photos/api/PhotosOemApi;->getQueryTypeUri(Landroid/content/Context;J)Landroid/net/Uri;

    move-result-object v1

    .line 189
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 195
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    const-string/jumbo p1, "special_type_id"

    .line 199
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 198
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    .line 202
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 204
    :cond_2
    throw p1

    :cond_3
    :goto_0
    if-eqz p0, :cond_4

    .line 202
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSpecialTypeIdFromQueryDataUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 178
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getVersion(Landroid/content/Context;)I
    .locals 3

    .line 127
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 128
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 129
    invoke-static {p0}, Lcom/google/android/apps/photos/api/PhotosOemApi;->getAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    .line 133
    const-string/jumbo v2, "version"

    invoke-virtual {p0, v0, v2, v1, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 138
    :cond_0
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
