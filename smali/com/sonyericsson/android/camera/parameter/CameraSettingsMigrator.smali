.class Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;
.super Ljava/lang/Object;
.source "CameraSettingsMigrator.java"


# static fields
.field private static COMMON_SETTINGS:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG_ENABLED:Z

.field private static final PARAMETER_VALUE_HOLDER:Ljava/lang/String; = "ParameterValueHolder"

.field private static SETTINGS:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "cameramigrator"

.field private static final USER_SETTING_VALUE_HOLDER:Ljava/lang/String; = "UserSettingValueHolder"


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 84
    const-string v0, "cameramigrator"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    .line 101
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator$1;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator$1;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->SETTINGS:Ljava/util/Map;

    .line 193
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PHOTO_LIGHT:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DISPLAY_FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_ANGLE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->GEO_TAG:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAMERA_KEY:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->GRID_LINE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRAME_LINES:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v11, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->AUTO_REVIEW:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VOLUME_KEY:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_SOUND:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v15, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->PREDICTIVE_LAUNCH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object v16, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FAST_CAPTURE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    filled-new-array/range {v1 .. v16}, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    .line 194
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->COMMON_SETTINGS:Ljava/util/List;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adapterResolutionForSMX2FromOToP(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;
    .locals 3

    .line 435
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->SM12:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    sget-object v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->SM22:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    sget-object v2, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->SM42:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    filled-new-array {v0, v1, v2}, [Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isProduct([Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    if-ne p0, v0, :cond_4

    .line 439
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->TWELVE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    if-ne p0, p2, :cond_1

    .line 440
    invoke-static {p1}, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->isSupportIMX234(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 441
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->TWELVE_MP_SM22_IMX234:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    goto :goto_0

    .line 443
    :cond_0
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->TWELVE_MP_SMX2:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 447
    :cond_1
    :goto_0
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->WIDE_TWELVE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    if-ne p0, p2, :cond_3

    .line 448
    invoke-static {p1}, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->isSupportIMX234(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 449
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->WIDE_TWELVE_MP_SM22_IMX234:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    goto :goto_1

    .line 451
    :cond_2
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->WIDE_TWELVE_MP_SMX2:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    :goto_1
    move-object p2, p0

    .line 455
    :cond_3
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->FIVE_MP_WIDE:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    if-ne p0, p2, :cond_4

    .line 456
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->WIDE_FIVE_POINT_EIGHT_MP_SMX2:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    :cond_4
    return-object p2
.end method

.method private static backupSharedPrefs(Landroid/content/Context;)V
    .locals 6

    .line 566
    const-string v0, "backup shared preferences failed: "

    const-string v1, "cameramigrator"

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->getSharedPrefsFile(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x1

    .line 568
    invoke-static {p0, v4}, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->getSharedPrefsFile(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object p0

    const/16 v4, 0x1000

    .line 570
    new-array v4, v4, [B

    .line 572
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 574
    :goto_0
    :try_start_2
    invoke-virtual {v5, v4}, Ljava/io/InputStream;->read([B)I

    move-result p0

    if-ltz p0, :cond_0

    .line 575
    invoke-virtual {v3, v4, v2, p0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 577
    :cond_0
    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catchall_0
    move-exception p0

    .line 572
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_6
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p0

    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v2

    :try_start_8
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p0

    .line 580
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_1
    move-exception p0

    .line 578
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method private static convertUnselectableValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;
    .locals 2

    .line 734
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator$2;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 736
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p1, v0, :cond_2

    .line 737
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    if-ne p0, p1, :cond_1

    .line 738
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;

    goto :goto_1

    .line 740
    :cond_1
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FrontSoftSkin;

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method private static convertUnsupportedValue(Lcom/sonyericsson/android/camera/parameter/UserSettingManager;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;
    .locals 2

    .line 753
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator$2;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p0, 0x3

    if-eq v0, p0, :cond_0

    goto :goto_0

    .line 761
    :cond_0
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    if-eq p1, p0, :cond_2

    .line 762
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    goto :goto_1

    .line 755
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p2, v0, :cond_2

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->TOUCH:Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    if-ne p1, v0, :cond_2

    .line 756
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;->FOCUS_AND_EXPOSURE:Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 757
    invoke-static {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->getDefaultValue(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    move-result-object p0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method private static createMigrationReport(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 693
    const-string v0, "NO_VALUE"

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "migration_report.xls"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 697
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    :try_start_1
    const-string v1, "KEY\tLEGACY_VALUE\tDEFAULT_VALUE\tFINAL_VALUE\tSTATUS"

    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 699
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 701
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 702
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 703
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 704
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 705
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 706
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 708
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 709
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 710
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 711
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 712
    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 714
    const-string v8, "CAPTURING_MODE_"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 715
    invoke-static {v4}, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->parse(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 716
    invoke-static {v6}, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->parse(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 719
    :cond_0
    const-string v8, "%s\t%s\t%s\t%s\t%s"

    filled-new-array {v3, v4, v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 721
    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 722
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_0

    .line 725
    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 726
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 697
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 727
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "create migration report failed: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "cameramigrator"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private static createParameterKeyPrefixForCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Ljava/lang/String;
    .locals 3

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 521
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 522
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "_PARAMS_"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSharedPrefs(Landroid/content/Context;Z)Landroid/content/SharedPreferences;
    .locals 1

    if-eqz p1, :cond_0

    .line 537
    const-string p1, "com.sonyericsson.android.camera.shared_preferences_legacy"

    goto :goto_0

    .line 536
    :cond_0
    const-string p1, "com.sonyericsson.android.camera.shared_preferences"

    :goto_0
    const/4 v0, 0x0

    .line 540
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private static getSharedPrefsFile(Landroid/content/Context;Z)Ljava/io/File;
    .locals 2

    .line 551
    invoke-virtual {p0}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object p0

    .line 552
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "shared_prefs"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 555
    const-string p0, "com.sonyericsson.android.camera.shared_preferences_legacy"

    goto :goto_0

    .line 554
    :cond_0
    const-string p0, "com.sonyericsson.android.camera.shared_preferences"

    .line 558
    :goto_0
    new-instance p1, Ljava/io/File;

    const-string v1, ".xml"

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1
.end method

.method private static isSupportIMX234(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private static isSupported(Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Z
    .locals 2

    .line 651
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    .line 652
    invoke-interface {p0, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->getOptions(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 653
    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 657
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static loadMigrationData(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/parameter/UserSettingManager;Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;",
            "Lcom/sonyericsson/android/camera/parameter/UserSettingManager;",
            "Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;",
            ")",
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;",
            "Lcom/sonyericsson/android/camera/parameter/Parameters;",
            ">;"
        }
    .end annotation

    .line 470
    sget-boolean v0, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    const-string v1, "cameramigrator"

    if-eqz v0, :cond_0

    const-string v0, "loadMigrationDataSync() E"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_0
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->loadMigrateParameters()Ljava/util/Map;

    move-result-object p2

    .line 473
    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->replaceParameterEntries(Ljava/util/Map;)V

    .line 475
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/parameter/Parameters;

    .line 477
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->values()[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v4

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v6, v4, v3

    .line 478
    sget-object v7, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    invoke-virtual {p1, v6, v7}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->isNeededToLoad(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 479
    iget-object v7, v2, Lcom/sonyericsson/android/camera/parameter/Parameters;->mHolders:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 484
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 486
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/camera/parameter/Parameters;

    .line 487
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/parameter/Parameters;->updatePhotoLight()V

    .line 488
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 490
    :cond_4
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->setDefaultToNonExistentResolution(Ljava/util/List;)V

    .line 491
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->setDefaultToNonExistentVideoSize(Ljava/util/List;)V

    .line 492
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->setDefaultToNonExistentVideoShutterTrigger(Ljava/util/List;)V

    .line 494
    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->changeCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 496
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/parameter/Parameters;

    .line 497
    iget-object v2, v0, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_5

    .line 498
    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {p1, v0, v3}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->setupVideoOption(Lcom/sonyericsson/android/camera/parameter/Parameters;Z)V

    goto :goto_2

    .line 504
    :cond_6
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/parameter/Parameters;

    .line 505
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->commit()V

    goto :goto_3

    .line 508
    :cond_7
    sget-boolean p0, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz p0, :cond_8

    const-string p0, "loadMigrationDataSync() X"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-object p2
.end method

.method static migrate(Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 215
    sget-boolean v2, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    const-string v3, "cameramigrator"

    if-eqz v2, :cond_0

    const-string v4, "+ camera settings migration"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v2, :cond_1

    .line 218
    const-string v4, "+ backup shared preferences"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->backupSharedPrefs(Landroid/content/Context;)V

    if-eqz v2, :cond_2

    .line 221
    const-string v4, "- backup shared preferences"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v2, :cond_3

    .line 224
    const-string v4, "+ cache all camera settings"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v4, 0x1

    .line 225
    invoke-static {v0, v4}, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->getSharedPrefs(Landroid/content/Context;Z)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    if-eqz v2, :cond_4

    .line 226
    const-string v5, "- cache all camera settings"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_4
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz v2, :cond_5

    .line 229
    const-string v0, "ignore migration since legacy camera settings is empty"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    :cond_6
    if-eqz v2, :cond_7

    .line 234
    const-string v5, "+ cleanup shared preferences"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/4 v5, 0x0

    .line 235
    invoke-static {v0, v5}, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->getSharedPrefs(Landroid/content/Context;Z)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 236
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-eqz v2, :cond_8

    .line 237
    const-string v6, "- cleanup shared preferences"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_8
    const-string v6, "android.permission.CAMERA"

    invoke-virtual {v0, v6}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_a

    if-eqz v2, :cond_9

    .line 243
    const-string v0, "ignore migration since not have camera permission"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void

    :cond_a
    if-eqz v2, :cond_b

    .line 248
    const-string v6, "+ setup camera parameter manager"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_b
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 251
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/IntentReader;

    invoke-direct {v7}, Lcom/sonyericsson/android/camera/configuration/IntentReader;-><init>()V

    .line 252
    invoke-virtual {v7, v6}, Lcom/sonyericsson/android/camera/configuration/IntentReader;->getVideoQualityConfigurations(Landroid/content/Intent;)Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;

    move-result-object v6

    .line 253
    new-instance v7, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;

    move-object/from16 v8, p1

    invoke-direct {v7, v0, v8}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/Storage;)V

    .line 254
    sget-object v8, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    const/4 v9, 0x0

    invoke-virtual {v7, v0, v8, v9, v6}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->prepare(Landroid/content/Context;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;Landroid/net/Uri;Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;)V

    .line 255
    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-static {v6, v7, v1}, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->loadMigrationData(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/parameter/UserSettingManager;Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;)Ljava/util/Map;

    move-result-object v6

    if-eqz v2, :cond_c

    .line 258
    const-string v8, "- setup camera parameter manager"

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_c
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 262
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 265
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_d

    .line 268
    const-string v2, "+ migrate capturing mode settings"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_d
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getValidOptions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 270
    sget-boolean v12, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    const-string v13, " settings"

    if-eqz v12, :cond_e

    .line 271
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "+ migrate "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_e
    invoke-virtual {v7, v11}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->changeCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 276
    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->applyCapturingMode()V

    .line 279
    invoke-static {v11}, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->createParameterKeyPrefixForCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Ljava/lang/String;

    move-result-object v14

    if-eqz v12, :cond_f

    .line 284
    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->getParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v12

    .line 285
    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getHolder()Ljava/util/Map;

    move-result-object v12

    .line 286
    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 p1, v2

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    goto :goto_1

    :cond_f
    move-object/from16 p1, v2

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 294
    sget-object v2, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->SETTINGS:Ljava/util/Map;

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 295
    sget-object v2, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->COMMON_SETTINGS:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 296
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 297
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 300
    invoke-interface {v4, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v16, v0

    const-string v0, "NO_VALUE"

    invoke-static {v15, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v17, v14

    .line 304
    const-string v14, "ParameterValueHolder"

    invoke-virtual {v15, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_10

    move-object/from16 v18, v9

    .line 305
    const-string v9, "UserSettingValueHolder"

    invoke-virtual {v15, v14, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    goto :goto_3

    :cond_10
    move-object/from16 v18, v9

    .line 308
    :goto_3
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 309
    sget-boolean v0, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz v0, :cond_11

    .line 310
    const-string v0, "ignore-null-legacy-value"

    invoke-interface {v8, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    :goto_4
    move-object/from16 v0, v16

    move-object/from16 v14, v17

    move-object/from16 v9, v18

    goto :goto_2

    .line 317
    :cond_12
    invoke-static {v15}, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->parse(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    if-nez v0, :cond_13

    .line 319
    sget-boolean v0, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz v0, :cond_11

    .line 320
    const-string v0, "ignore-null-current-value"

    invoke-interface {v8, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 345
    :cond_13
    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->getParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v9

    invoke-static {v2, v9, v0}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->isSelectableValues(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/parameter/Parameters;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 346
    invoke-static {v0, v11}, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->convertUnselectableValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    if-nez v0, :cond_14

    .line 348
    sget-boolean v0, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz v0, :cond_11

    .line 349
    const-string v0, "ignore-unselectable-current-value"

    invoke-interface {v8, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 358
    :cond_14
    invoke-static {v7, v0}, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->isSupported(Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 359
    invoke-static {v7, v0, v11}, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->convertUnsupportedValue(Lcom/sonyericsson/android/camera/parameter/UserSettingManager;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    if-nez v0, :cond_15

    .line 361
    sget-boolean v0, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz v0, :cond_11

    .line 362
    const-string v0, "ignore-unsupported-current-value"

    invoke-interface {v8, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 369
    :cond_15
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 370
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    :cond_16
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v11, v2, :cond_17

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;

    if-ne v0, v2, :cond_17

    .line 375
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/parameters/TouchIntention;

    invoke-virtual {v7, v2}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 378
    :cond_17
    invoke-virtual {v7, v0}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 379
    sget-boolean v0, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz v0, :cond_11

    .line 380
    const-string v0, "apply-selectable-supported-current-value"

    invoke-interface {v8, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_18
    move-object/from16 v18, v9

    .line 384
    sget-boolean v0, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz v0, :cond_19

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "- migrate "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v9, v18

    goto/16 :goto_0

    :cond_1a
    move-object/from16 v18, v9

    .line 388
    sget-boolean v0, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->DEBUG_ENABLED:Z

    if-eqz v0, :cond_1b

    const-string v2, "- migrate capturing mode settings"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    if-eqz v0, :cond_1c

    .line 391
    const-string v2, "+ release camera parameter manager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_1c
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1, v6, v2}, Lcom/sonyericsson/android/camera/parameter/UserSettingsLoaderImpl;->saveMigrateParameters(Ljava/util/Map;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 393
    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/parameter/UserSettingManager;->release()V

    if-eqz v0, :cond_1d

    .line 394
    const-string v1, "- release camera parameter manager"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    if-eqz v0, :cond_1e

    .line 397
    const-string v1, "+ migrate non-capturing mode settings"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_1e
    invoke-static {v4, v5}, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->migrateOtherSettingsToSharedPrefs(Ljava/util/Map;Landroid/content/SharedPreferences;)Z

    move-result v1

    if-nez v1, :cond_1f

    if-eqz v0, :cond_1f

    .line 399
    const-string v1, "- failed to write non-capturing mode settings"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    if-eqz v0, :cond_20

    .line 401
    const-string v1, "- migrate non-capturing mode settings"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    if-eqz v0, :cond_21

    .line 406
    const-string v1, "+ preference file name check"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_21
    invoke-static/range {p0 .. p0}, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->renamePreferenceFileName(Landroid/content/Context;)V

    if-eqz v0, :cond_22

    .line 408
    const-string v1, "- preference file name check"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    if-eqz v0, :cond_23

    .line 412
    const-string v1, "+ generate camera settings migration report"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    move-object/from16 v2, v18

    .line 414
    invoke-static {v4, v2, v1, v8}, Lcom/sonyericsson/android/camera/parameter/CameraSettingsMigrator;->createMigrationReport(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 415
    const-string v1, "- generate camera settings migration report"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    if-eqz v0, :cond_24

    .line 418
    const-string v0, "- camera settings migration"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    return-void
.end method

.method private static migrateOtherSettingsToSharedPrefs(Ljava/util/Map;Landroid/content/SharedPreferences;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Landroid/content/SharedPreferences;",
            ")Z"
        }
    .end annotation

    .line 612
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 613
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 614
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 615
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v2, "NO_VALUE"

    invoke-static {v0, v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 618
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 623
    :cond_0
    const-string v2, "CAPTURING_MODE_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 628
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const-string v2, "KEY_LAST_MODE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 638
    :cond_2
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 640
    :cond_3
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    return p0
.end method

.method private static parse(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
            ">;"
        }
    .end annotation

    .line 667
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 668
    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->parseValueString(Ljava/lang/String;)V

    return-object v0
.end method

.method private static renamePreferenceFileName(Landroid/content/Context;)V
    .locals 3

    .line 772
    invoke-virtual {p0}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object p0

    .line 773
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "shared_prefs"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 774
    new-instance p0, Ljava/io/File;

    const-string/jumbo v1, "tutorial.xml"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 777
    new-instance v1, Ljava/io/File;

    const-string v2, "messages.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 781
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 782
    invoke-virtual {p0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 783
    const-string p0, "cameramigrator"

    const-string v0, "File rename failed"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
