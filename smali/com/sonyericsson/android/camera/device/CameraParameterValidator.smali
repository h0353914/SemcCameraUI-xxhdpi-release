.class Lcom/sonyericsson/android/camera/device/CameraParameterValidator;
.super Ljava/lang/Object;
.source "CameraParameterValidator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;,
        Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;,
        Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ParameterValidationError;
    }
.end annotation


# static fields
.field private static final BASE_CONDITION_TAG:Ljava/lang/String; = "base-condition"

.field private static final CHECK_CONDITION_TAG:Ljava/lang/String; = "check-condition"

.field private static final KEY_ATTRIBUTE_INDEX:I = 0x0

.field private static final KEY_VALUE_SET_TAG:Ljava/lang/String; = "key-value-set"

.field private static final LOCAL_LOG:Z = false

.field private static final VALIDATION_SET_TAG:Ljava/lang/String; = "validation-set"

.field private static final VALUE_ACTIVE_ARRAY_SIZE:Ljava/lang/String; = "active-array-size"

.field private static final VALUE_ATTRIBUTE_INDEX:I = 0x1

.field private static mActiveArraySizeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private static mInvalidSetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;",
            ">;"
        }
    .end annotation
.end field

.field private static mKeysMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private static mValidSetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterValidator;->mValidSetList:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterValidator;->mInvalidSetList:Ljava/util/List;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static loadAvailableKeys(Landroid/content/Context;)V
    .locals 9

    const-string v0, "camera"

    .line 324
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CameraManager;

    .line 326
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterValidator;->mKeysMap:Ljava/util/Map;

    .line 327
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterValidator;->mActiveArraySizeMap:Ljava/util/Map;

    .line 328
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 329
    invoke-virtual {p0, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v5

    .line 330
    sget-object v6, Lcom/sonyericsson/android/camera/device/CameraParameterValidator;->mKeysMap:Ljava/util/Map;

    invoke-virtual {v5}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailableCaptureRequestKeys()Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    .line 333
    sget-object v6, Lcom/sonyericsson/android/camera/device/CameraParameterValidator;->mActiveArraySizeMap:Ljava/util/Map;

    new-instance v7, Landroid/graphics/Rect;

    .line 334
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-direct {v7, v2, v2, v8, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 333
    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Failed in getCameraCharacteristics"

    .line 337
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private static loadBaseCondition(Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 403
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const-string v1, "base-condition"

    .line 406
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    return-void

    :cond_1
    :goto_1
    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    goto :goto_2

    :cond_2
    const-string v0, "key-value-set"

    .line 411
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 412
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 413
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 414
    new-instance v2, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;

    invoke-direct {v2, v0, v1}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    invoke-static {p0, v2}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;->access$400(Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;)V

    .line 421
    :cond_3
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0
.end method

.method private static loadCheckCondition(Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 427
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const-string v1, "check-condition"

    .line 430
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    return-void

    :cond_1
    :goto_1
    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    goto :goto_2

    :cond_2
    const-string v0, "key-value-set"

    .line 435
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 436
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 437
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 438
    new-instance v2, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;

    invoke-direct {v2, v0, v1}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-static {p0, v2}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;->access$500(Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;Lcom/sonyericsson/android/camera/device/CameraParameterValidator$KeyValueSet;)V

    .line 445
    :cond_3
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0
.end method

.method public static loadCheckList(Landroid/content/Context;)V
    .locals 2

    .line 306
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 311
    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator;->loadAvailableKeys(Landroid/content/Context;)V

    .line 312
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterValidator;->mInvalidSetList:Ljava/util/List;

    const/high16 v1, 0x7f120000

    invoke-static {p0, v0, v1}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator;->loadCheckList(Landroid/content/Context;Ljava/util/List;I)V

    .line 314
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterValidator;->mValidSetList:Ljava/util/List;

    const v1, 0x7f120001

    invoke-static {p0, v0, v1}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator;->loadCheckList(Landroid/content/Context;Ljava/util/List;I)V

    :cond_0
    return-void
.end method

.method private static loadCheckList(Landroid/content/Context;Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;",
            ">;I)V"
        }
    .end annotation

    .line 348
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz p0, :cond_5

    const/4 p2, 0x0

    .line 351
    :try_start_1
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    move-object v1, p2

    :goto_0
    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    .line 354
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v0, "validation-set"

    .line 371
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 373
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    const-string v0, "validation-set"

    .line 358
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;

    invoke-direct {v0, p2}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;-><init>(Lcom/sonyericsson/android/camera/device/CameraParameterValidator$1;)V

    move-object v1, v0

    goto :goto_1

    :cond_0
    const-string v0, "base-condition"

    .line 361
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    invoke-static {v1, p0}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator;->loadBaseCondition(Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    :cond_1
    const-string v0, "check-condition"

    .line 364
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 366
    invoke-static {v1, p0}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator;->loadCheckCondition(Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 352
    :cond_2
    :goto_1
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object p2, p1

    .line 348
    :try_start_2
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    if-eqz p0, :cond_4

    if-eqz p2, :cond_3

    .line 380
    :try_start_3
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_1
    move-exception p0

    :try_start_4
    invoke-virtual {p2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_4
    :goto_3
    throw p1

    :cond_5
    if-eqz p0, :cond_6

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_6
    return-void

    :catch_2
    move-exception p0

    const-string p1, "Fail to load of CheckList."

    .line 384
    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 385
    new-instance p0, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ParameterValidationError;

    const-string p1, "loadCheckList():[IOException]"

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ParameterValidationError;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_3
    move-exception p0

    const-string p1, "Fail to load of CheckList."

    .line 381
    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 382
    new-instance p0, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ParameterValidationError;

    const-string p1, "loadCheckList():[XmlPullParserException]"

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ParameterValidationError;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static declared-synchronized validate(Ljava/lang/String;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;)V
    .locals 5

    const-class v0, Lcom/sonyericsson/android/camera/device/CameraParameterValidator;

    monitor-enter v0

    .line 80
    :try_start_0
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 85
    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraParameterValidator;->mKeysMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 86
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraParameterValidator;->mActiveArraySizeMap:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    .line 89
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraParameterValidator;->mInvalidSetList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;

    .line 90
    invoke-static {v3, v1, p1}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;->access$000(Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;Ljava/util/List;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 92
    invoke-static {v3, v1, p1, p0}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;->access$100(Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;Ljava/util/List;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 97
    :cond_1
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraParameterValidator;->mValidSetList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;

    .line 98
    invoke-static {v3, v1, p1}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;->access$000(Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;Ljava/util/List;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 100
    invoke-static {v3, v1, p1, p0}, Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;->access$200(Lcom/sonyericsson/android/camera/device/CameraParameterValidator$ValidationCase;Ljava/util/List;Lcom/sonyericsson/android/camera/device/CaptureRequestHolder;Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 108
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 79
    monitor-exit v0

    throw p0
.end method
