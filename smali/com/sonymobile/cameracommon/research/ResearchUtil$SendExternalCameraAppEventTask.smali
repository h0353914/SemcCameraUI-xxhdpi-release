.class Lcom/sonymobile/cameracommon/research/ResearchUtil$SendExternalCameraAppEventTask;
.super Ljava/lang/Object;
.source "ResearchUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/ResearchUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SendExternalCameraAppEventTask"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mModeTo:Ljava/lang/String;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .line 2219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2220
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendExternalCameraAppEventTask;->mContext:Landroid/content/Context;

    .line 2221
    iput-object p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendExternalCameraAppEventTask;->mUri:Landroid/net/Uri;

    .line 2222
    iput-object p3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendExternalCameraAppEventTask;->mModeTo:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/sonymobile/cameracommon/research/ResearchUtil$SendExternalCameraAppEventTask-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendExternalCameraAppEventTask;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 2227
    const-string v0, "_id"

    const-string v1, "_id = "

    iget-object v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendExternalCameraAppEventTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendExternalCameraAppEventTask;->mUri:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2233
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const/4 v3, 0x0

    .line 2236
    :try_start_0
    const-string v4, "data"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2237
    const-string v5, "created_at"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 2238
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2239
    iget-object v4, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendExternalCameraAppEventTask;->mModeTo:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 2240
    const-string/jumbo v8, "to"

    invoke-virtual {v7, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2242
    :cond_1
    invoke-static {v7, v5, v6}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendExternalCameraAppEvent(Lorg/json/JSONObject;J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2246
    iget-object v4, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendExternalCameraAppEventTask;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendExternalCameraAppEventTask;->mUri:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v4

    goto :goto_1

    :catch_0
    move-exception v4

    .line 2244
    :try_start_1
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2246
    iget-object v4, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendExternalCameraAppEventTask;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendExternalCameraAppEventTask;->mUri:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2248
    :goto_0
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2246
    invoke-virtual {v4, v5, v6, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2251
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    .line 2246
    :goto_1
    iget-object v5, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendExternalCameraAppEventTask;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendExternalCameraAppEventTask;->mUri:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2248
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2246
    invoke-virtual {v5, p0, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2250
    throw v4

    .line 2253
    :cond_2
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void
.end method
