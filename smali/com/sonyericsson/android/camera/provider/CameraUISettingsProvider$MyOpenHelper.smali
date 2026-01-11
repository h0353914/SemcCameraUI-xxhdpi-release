.class Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider$MyOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "CameraUISettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyOpenHelper"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x5

    .line 120
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 121
    iput-object p1, p0, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider$MyOpenHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method static createCapturingModeTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 143
    const-string v0, "CREATE TABLE capturingmodes (_id INTEGER PRIMARY KEY AUTOINCREMENT,package TEXT, activity TEXT, mode_name TEXT, capture_type INTEGER, visibility_normal INTEGER, visibility_oneshot INTEGER, visibility_shortcut INTEGER, sort_order INTEGER, selectorlabel_id INTEGER, selectoricon_id INTEGER, shortcutlabel_id INTEGER, shortcuticon_id INTEGER, descriptionlabel_id INTEGER, UNIQUE(package,mode_name));"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method static deleteTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 166
    const-string v0, "DROP TABLE IF EXISTS capturingmodes"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method static existTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name=\'"

    const/4 v1, 0x0

    .line 172
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 176
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p0, :cond_1

    if-eqz v1, :cond_0

    .line 182
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 184
    :cond_3
    throw p0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 126
    const-string p0, "capturingmodes"

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider$MyOpenHelper;->existTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 127
    invoke-static {p1}, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider$MyOpenHelper;->createCapturingModeTable(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .line 133
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_0

    .line 134
    const-string p0, "onUpgrade()"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 135
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "  oldVersion:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 136
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "  newVersion:"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 138
    :cond_0
    invoke-static {p1}, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider$MyOpenHelper;->deleteTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 139
    invoke-static {p1}, Lcom/sonyericsson/android/camera/provider/CameraUISettingsProvider$MyOpenHelper;->createCapturingModeTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
