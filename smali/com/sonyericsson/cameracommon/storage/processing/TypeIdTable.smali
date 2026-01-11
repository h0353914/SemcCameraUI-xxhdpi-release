.class final Lcom/sonyericsson/cameracommon/storage/processing/TypeIdTable;
.super Ljava/lang/Object;
.source "TypeIdTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/storage/processing/TypeIdTable$Columns;
    }
.end annotation


# static fields
.field static final SELECT_MEDIA_STORE_ID:Ljava/lang/String; = "media_store_id = ?"

.field static final TABLE_NAME:Ljava/lang/String; = "type_uri"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getCreateSql()Ljava/lang/String;
    .locals 1

    .line 20
    const-string v0, "CREATE TABLE type_uri (media_store_id INTEGER PRIMARY KEY, special_type_id TEXT NOT NULL)"

    return-object v0
.end method
