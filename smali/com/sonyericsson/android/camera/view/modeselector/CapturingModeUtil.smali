.class public Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil;
.super Ljava/lang/Object;
.source "CapturingModeUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil$CapturingMode;
    }
.end annotation


# static fields
.field public static final ACTION_GET_MORE_APPLICATION:Ljava/lang/String; = "com.sonymobile.cameracommon.action.GET_MORE_APPLICATION"

.field public static final ACTION_REGISTER_MODE:Ljava/lang/String; = "com.sonymobile.cameracommon.action.REGISTER_MODE"

.field public static final ACTION_REQUEST_REGISTER:Ljava/lang/String; = "com.sonymobile.camera.addon.action.REQUEST_REGISTER"

.field private static final ART_FILTER_PACKAGE_NAME:Ljava/lang/String; = "com.sonyericsson.android.addoncamera.artfilter"

.field private static final AR_EFFECT_MODE_NAME:Ljava/lang/String; = "AR Effect"

.field private static final AR_EFFECT_PACKAGE_NAME:Ljava/lang/String; = "com.sonymobile.androidapp.cameraaddon.areffect"

.field private static final CAMERA3D_PACKAGE_NAME:Ljava/lang/String; = "com.sonyericsson.android.camera3d"

.field public static final CAMERA_ACTIVITY:Ljava/lang/String; = "com.sonyericsson.android.camera.CameraActivity"

.field public static final CAMERA_ADDON_PERMISSION_NAME:Ljava/lang/String; = "com.sonymobile.permission.CAMERA_ADDON"

.field public static final CAMERA_COMMON_PACKAGE_NAME:Ljava/lang/String; = "com.sonymobile.cameracommon"

.field public static final CAMERA_UI_PACKAGE_NAME:Ljava/lang/String; = "com.sonyericsson.android.camera"

.field private static final DEFAULT_SORT_ORDER_LIST:[[Ljava/lang/String;

.field public static final EXTRA_CALLING_CLASS_NAME:Ljava/lang/String; = "extra-calling-class-name"

.field public static final EXTRA_CALLING_PACKAGE_NAME:Ljava/lang/String; = "extra-calling-package-name"

.field public static final EXTRA_CAPTURING_MODE:Ljava/lang/String; = "com.sonymobile.camera.addon.intent.extra.CAPTURING_MODE"

.field private static final FACE_IN_PACKAGE_NAME:Ljava/lang/String; = "com.sonymobile.android.addoncamera.dual"

.field private static final FAST_CAPTURING_ACTIVITY:Ljava/lang/String; = "com.sonyericsson.android.camera.fastcapturing.FastCapturingActivity"

.field private static final INVALID:I = -0x1

.field public static final MODE_WHITE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ONESHOT_DEFAULT_SORT_ORDER_LIST:[[Ljava/lang/String;

.field private static final SOUND_PHOTO_PACKAGE_NAME:Ljava/lang/String; = "com.sonymobile.android.addoncamera.soundphoto"

.field private static final STICKER_CREATOR_PACKAGE_NAME:Ljava/lang/String; = "com.sonymobile.androidapp.cameraaddon.stickercreator"

.field private static final STYLE_PORTRAIT_PACKAGE_NAME:Ljava/lang/String; = "com.sonymobile.android.addoncamera.styleportrait"

.field private static final SUPER_VIDEO_PACKAGE_NAME:Ljava/lang/String; = "com.sonymobile.android.addoncamera.supervideo"

.field static final TAG:Ljava/lang/String; = "CapturingModeUtil"

.field private static final TIME_SHIFT_PACKAGE_NAME:Ljava/lang/String; = "com.sonymobile.android.addoncamera.timeshift"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 116
    new-instance v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil$1;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil;->MODE_WHITE_LIST:Ljava/util/List;

    const/16 v0, 0xb

    .line 142
    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "com.sonyericsson.android.camera"

    const-string v2, "SCENE_RECOGNITION"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "com.sonyericsson.android.camera"

    const-string v3, "NORMAL"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "com.sonymobile.androidapp.cameraaddon.areffect"

    const-string v4, "AR Effect"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "com.sonyericsson.android.addoncamera.artfilter"

    const-string v5, "capturing_mode_single_effect"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "com.sonyericsson.android.camera3d"

    const-string v6, "capturing_mode_sweep_panorama"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const-string v1, "com.sonymobile.android.addoncamera.soundphoto"

    const-string v6, "capturing_mode_soundphoto"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x5

    aput-object v1, v0, v6

    const-string v1, "com.sonymobile.androidapp.cameraaddon.stickercreator"

    const-string v6, "sticker_creator"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x6

    aput-object v1, v0, v6

    const-string v1, "com.sonymobile.android.addoncamera.supervideo"

    const-string v6, "HIGH_FRAME_RATE"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x7

    aput-object v1, v0, v6

    const-string v1, "com.sonymobile.android.addoncamera.styleportrait"

    const-string v6, "capturing_mode_self_portrait"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x8

    aput-object v1, v0, v6

    const-string v1, "com.sonymobile.android.addoncamera.dual"

    const-string v6, "capturing_mode_dual"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x9

    aput-object v1, v0, v6

    const-string v1, "com.sonymobile.android.addoncamera.supervideo"

    const-string v6, "FOUR_K_UHD"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0xa

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil;->DEFAULT_SORT_ORDER_LIST:[[Ljava/lang/String;

    .line 159
    new-array v0, v5, [[Ljava/lang/String;

    const-string v1, "com.sonyericsson.android.camera"

    const-string v5, "SCENE_RECOGNITION"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "com.sonyericsson.android.camera"

    const-string v2, "NORMAL"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "com.sonyericsson.android.addoncamera.artfilter"

    const-string v2, "capture_mode_single_effect"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil;->ONESHOT_DEFAULT_SORT_ORDER_LIST:[[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static filteringPrevActivity(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "com.sonyericsson.android.camera.fastcapturing.FastCapturingActivity"

    .line 275
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "com.sonyericsson.android.camera.CameraActivity"

    return-object p0

    :cond_0
    return-object p0
.end method

.method public static filteringPrevName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "FAST_CAPTURING_CAMERA"

    .line 263
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "SCENE_RECOGNITION"

    return-object p0

    :cond_0
    return-object p0
.end method

.method private static getIndexOf(Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil$CapturingMode;[[Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 251
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 252
    aget-object v2, p1, v1

    aget-object v2, v2, v0

    .line 253
    aget-object v3, p1, v1

    const/4 v4, 0x1

    aget-object v3, v3, v4

    .line 254
    invoke-interface {p0, v2, v3}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil$CapturingMode;->is(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static varargs getSortOrder(Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil$CapturingMode;[[[Ljava/lang/String;)I
    .locals 5

    .line 239
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p1, v1

    .line 240
    invoke-static {p0, v3}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil;->getIndexOf(Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil$CapturingMode;[[Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_0

    add-int/2addr v4, v2

    return v4

    .line 244
    :cond_0
    array-length v3, v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static hasDefaultSortOrder(Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil$CapturingMode;)Z
    .locals 4

    const/4 v0, 0x1

    .line 191
    new-array v1, v0, [[[Ljava/lang/String;

    sget-object v2, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil;->DEFAULT_SORT_ORDER_LIST:[[Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil;->getSortOrder(Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil$CapturingMode;[[[Ljava/lang/String;)I

    move-result p0

    const/4 v1, -0x1

    if-eq v1, p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    return v0
.end method

.method public static isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3

    .line 320
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    move v0, v1

    goto :goto_0

    .line 324
    :cond_0
    new-array p0, v1, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isActivityAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    :goto_0
    return v0
.end method

.method public static requestRegisterMode(Landroid/content/Context;)V
    .locals 2

    .line 297
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonymobile.cameracommon.action.REGISTER_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 298
    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil;->startCameraCommonService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private static varargs sort(Ljava/util/List;[[[Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil$CapturingMode;",
            ">(",
            "Ljava/util/List<",
            "TT;>;[[[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 202
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    move v5, v2

    .line 203
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_0

    const/4 v6, 0x0

    .line 204
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 208
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 210
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil$CapturingMode;

    .line 211
    invoke-static {v2, p1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil;->getSortOrder(Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil$CapturingMode;[[[Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 214
    invoke-virtual {v0, v3, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 217
    :cond_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 221
    :cond_3
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 222
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil$CapturingMode;

    if-eqz v0, :cond_4

    .line 224
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 227
    :cond_5
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public static sortCapturingMode(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil$CapturingMode;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 176
    new-array v0, v0, [[[Ljava/lang/String;

    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil;->DEFAULT_SORT_ORDER_LIST:[[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil;->sort(Ljava/util/List;[[[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static sortOneshotCapturingMode(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil$CapturingMode;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 182
    new-array v0, v0, [[[Ljava/lang/String;

    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil;->ONESHOT_DEFAULT_SORT_ORDER_LIST:[[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil;->sort(Ljava/util/List;[[[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static startCameraCommonService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "com.sonymobile.cameracommon"

    .line 302
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "extra-calling-package-name"

    .line 304
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "extra-calling-class-name"

    .line 305
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
