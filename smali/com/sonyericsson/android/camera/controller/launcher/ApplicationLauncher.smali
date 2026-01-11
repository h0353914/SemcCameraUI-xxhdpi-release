.class public final Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;
.super Ljava/lang/Object;
.source "ApplicationLauncher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher$MonochromeType;
    }
.end annotation


# static fields
.field private static ACTION_EDIT_HIGH_FRAME_RATE:Ljava/lang/String; = "com.sonymobile.moviecreator.intent.action.TIMESHIFT_VIDEO_EDITOR"

.field public static final BOKEH_AND_MONOCHROME:I = 0x3

.field private static final BOKEH_CAMERA_EFFECT_CLASS:Ljava/lang/String; = "com.sonymobile.addoncamera.dualcameraeffect.CameraActivity"

.field private static final BOKEH_CAMERA_EFFECT_PACKAGE:Ljava/lang/String; = "com.sonymobile.addoncamera.odmdualcameraeffect"

.field public static final BOKEH_ONLY:I = 0x1

.field private static final DUAL_EFFECT_CLASS:Ljava/lang/String; = "com.sonymobile.addoncamera.dualcameraeffect.ui.CameraActivity"

.field private static final DUAL_EFFECT_LAUNCH_MODE_BOKEH:Ljava/lang/String; = "bokeh"

.field private static final DUAL_EFFECT_LAUNCH_MODE_CAMERA:Ljava/lang/String; = "camera"

.field private static final DUAL_EFFECT_LAUNCH_MODE_KEY:Ljava/lang/String; = "effect_mode"

.field private static final DUAL_EFFECT_LAUNCH_MODE_VIDEO:Ljava/lang/String; = "video"

.field private static final DUAL_EFFECT_META_DATA:Ljava/lang/String; = "com.sonymobile.addoncamera.dualcameraeffect.support_feature"

.field private static final DUAL_EFFECT_PACKAGE:Ljava/lang/String; = "com.sonymobile.addoncamera.dualcameraeffect"

.field private static final EVERYONE_MODE_CLASS:Ljava/lang/String; = "com.sonyericsson.android.camera.CameraActivity"

.field private static final EVERYONE_MODE_PACKAGE:Ljava/lang/String; = "com.sonymobile.addoncamera.everyonemode"

.field public static final MONOCHROME_ONLY:I = 0x2

.field private static final PORTRAIT_SELFIE_CLASS:Ljava/lang/String; = "com.arcsoft.camera.CameraActivity"

.field private static final PORTRAIT_SELFIE_PACKAGE:Ljava/lang/String; = "com.sonymobile.addoncamera.portraitselfie"

.field private static final PORTRAIT_SELFIE_WIDE_ZOOM_TARGET_RATIO:Ljava/lang/String; = "com.sonyericsson.android.camera.extra.WIDE_ZOOM_TARGET_RATIO"

.field public static final TAG:Ljava/lang/String; = "ApplicationLauncher"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBokehCameraIntent(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/setting/UserSettings;)Landroid/content/Intent;
    .locals 1

    .line 300
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 301
    const-string p1, "com.sonymobile.addoncamera.odmdualcameraeffect"

    const-string v0, "com.sonymobile.addoncamera.dualcameraeffect.CameraActivity"

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method private static getDualCameraEffectIntent(ILcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Landroid/content/Intent;
    .locals 3

    .line 243
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 244
    const-string v1, "com.sonymobile.addoncamera.dualcameraeffect"

    const-string v2, "com.sonymobile.addoncamera.dualcameraeffect.ui.CameraActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x10

    .line 246
    const-string v2, "effect_mode"

    if-ne p0, v1, :cond_0

    .line 247
    const-string p0, "bokeh"

    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/16 v1, 0x11

    if-ne p0, v1, :cond_2

    .line 250
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p1, p0, :cond_1

    .line 251
    const-string/jumbo p0, "video"

    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 253
    :cond_1
    const-string p0, "camera"

    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    :goto_0
    return-object v0
.end method

.method private static getEveryoneIntent(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/setting/UserSettings;)Landroid/content/Intent;
    .locals 1

    .line 266
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 267
    const-string p1, "com.sonymobile.addoncamera.everyonemode"

    const-string v0, "com.sonyericsson.android.camera.CameraActivity"

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public static getEveryoneModeLabel(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 336
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sonymobile.addoncamera.everyonemode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 338
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 340
    :catch_0
    const-string p0, "The specified package is not found. name:com.sonymobile.addoncamera.everyonemode"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static getPortraitSelfieIntent(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/setting/UserSettings;)Landroid/content/Intent;
    .locals 1

    .line 278
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 279
    const-string p1, "com.sonymobile.addoncamera.portraitselfie"

    const-string v0, "com.arcsoft.camera.CameraActivity"

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result p1

    const-string v0, "com.sonyericsson.android.camera.extra.WIDE_ZOOM_TARGET_RATIO"

    if-eqz p1, :cond_0

    .line 283
    sget-object p1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 284
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getWideZoomTargetRatio(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)F

    move-result p1

    .line 283
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    goto :goto_0

    .line 286
    :cond_0
    const-string p1, "Platform capability is not prepared. Set 1.0 as default to PORTRAIT_SELFIE_WIDE_ZOOM_TARGET_RATIO"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 288
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    :goto_0
    return-object p0
.end method

.method public static isBokehCameraEffectAvailable(Landroid/content/Context;)Z
    .locals 5

    .line 374
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 375
    const-string v1, "com.sonymobile.addoncamera.dualcameraeffect.CameraActivity"

    const-string v2, "com.sonymobile.addoncamera.odmdualcameraeffect"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-wide/32 v3, 0x10000

    .line 383
    invoke-static {v3, v4}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v3

    .line 382
    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 389
    :cond_0
    invoke-static {p0, v2}, Lcom/sonyericsson/android/camera/util/SignatureUtil;->isAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isBokehSupported()Z
    .locals 4

    .line 398
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isHighSensitivityFusionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 401
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sonymobile.addoncamera.dualcameraeffect"

    const-string v3, "com.sonymobile.addoncamera.dualcameraeffect.ui.CameraActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    .line 404
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 405
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.sonymobile.addoncamera.dualcameraeffect.support_feature"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    return v2

    .line 415
    :catch_0
    const-string v0, "ApplicationLauncher"

    const-string v2, "DualEffect Component : com.sonymobile.addoncamera.dualcameraeffect Not Found"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v1
.end method

.method public static isEditorAvailable(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 2

    .line 181
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 183
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 184
    invoke-static {p0, v0}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public static isEveryoneModeCameraAvailable(Landroid/content/Context;)Z
    .locals 5

    .line 311
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 312
    const-string v1, "com.sonyericsson.android.camera.CameraActivity"

    const-string v2, "com.sonymobile.addoncamera.everyonemode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-wide/32 v3, 0x10000

    .line 320
    invoke-static {v3, v4}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v3

    .line 319
    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 326
    :cond_0
    invoke-static {p0, v2}, Lcom/sonyericsson/android/camera/util/SignatureUtil;->isAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isMonochromeSupported()Z
    .locals 4

    .line 426
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isHighSensitivityFusionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 429
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sonymobile.addoncamera.dualcameraeffect"

    const-string v3, "com.sonymobile.addoncamera.dualcameraeffect.ui.CameraActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    .line 432
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 433
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.sonymobile.addoncamera.dualcameraeffect.support_feature"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    return v3

    .line 443
    :catch_0
    const-string v0, "ApplicationLauncher"

    const-string v2, "DualEffect Component : com.sonymobile.addoncamera.dualcameraeffect Not Found"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v1
.end method

.method public static isPortraitSelfieAvailable(Landroid/content/Context;)Z
    .locals 5

    .line 350
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 351
    const-string v1, "com.arcsoft.camera.CameraActivity"

    const-string v2, "com.sonymobile.addoncamera.portraitselfie"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-wide/32 v3, 0x10000

    .line 359
    invoke-static {v3, v4}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v3

    .line 358
    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 365
    :cond_0
    invoke-static {p0, v2}, Lcom/sonyericsson/android/camera/util/SignatureUtil;->isAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static launchAlbum(Landroid/app/Activity;Ljava/lang/String;Landroid/net/Uri;ILjava/lang/String;)V
    .locals 0

    .line 122
    invoke-static {p4}, Lcom/sonyericsson/cameracommon/storage/ManualBurstPathBuilder;->isBurstCaptureImage(Ljava/lang/String;)Z

    move-result p4

    .line 123
    invoke-static {p0, p2, p1, p3, p4}, Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher;->launchAlbum(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;IZ)V

    return-void
.end method

.method public static launchAlbum(Landroid/app/Activity;Ljava/lang/String;Landroid/net/Uri;ILjava/lang/String;Z)V
    .locals 6

    .line 137
    invoke-static {p4}, Lcom/sonyericsson/cameracommon/storage/ManualBurstPathBuilder;->isBurstCaptureImage(Ljava/lang/String;)Z

    move-result v4

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move v3, p3

    move v5, p5

    .line 138
    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/android/camera/controller/album/AlbumLauncher;->launchAlbum(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public static launchExternalCamera(Lcom/sonyericsson/android/camera/CameraActivity;ILcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 457
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 458
    sget-object v5, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->DATA_STORAGE:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

    iget-object v5, v5, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->intentKey:Ljava/lang/String;

    const-string v6, "internal"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    .line 486
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The request code \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is incorrect"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :pswitch_1
    sget-object v5, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;->PHOTO:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;

    .line 466
    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->getEveryoneIntent(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/setting/UserSettings;)Landroid/content/Intent;

    move-result-object v6

    goto :goto_0

    .line 473
    :pswitch_2
    sget-object v5, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;->PHOTO:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;

    .line 474
    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->getBokehCameraIntent(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/setting/UserSettings;)Landroid/content/Intent;

    move-result-object v6

    goto :goto_0

    .line 469
    :pswitch_3
    sget-object v5, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;->PHOTO:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;

    .line 470
    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->getPortraitSelfieIntent(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/setting/UserSettings;)Landroid/content/Intent;

    move-result-object v6

    goto :goto_0

    .line 481
    :pswitch_4
    invoke-static {v1, v3}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->getDualCameraEffectIntent(ILcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Landroid/content/Intent;

    move-result-object v6

    .line 482
    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v3, v5, :cond_0

    .line 483
    sget-object v5, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;->VIDEO:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;

    goto :goto_0

    :cond_0
    sget-object v5, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;->PHOTO:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;

    goto :goto_0

    .line 477
    :pswitch_5
    sget-object v5, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;->PHOTO:Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;

    .line 478
    invoke-static {v1, v3}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->getDualCameraEffectIntent(ILcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Landroid/content/Intent;

    move-result-object v6

    .line 489
    :goto_0
    invoke-static {}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->values()[Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    move v10, v9

    :goto_1
    const-string v11, "."

    if-ge v10, v8, :cond_6

    aget-object v12, v7, v10

    .line 490
    iget-object v13, v12, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->intentKey:Ljava/lang/String;

    invoke-interface {v4, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 491
    invoke-virtual {v12, v5}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->isShared(Lcom/sonyericsson/android/camera/ExternalCameraAppSetting$ShareSettingCategory;)Z

    move-result v13

    if-eqz v13, :cond_5

    const/16 v13, 0x10

    if-eq v1, v13, :cond_2

    const/16 v13, 0x11

    if-ne v1, v13, :cond_1

    goto :goto_2

    .line 498
    :cond_1
    iget-object v13, v12, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->key:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v2, v13}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->toIntentValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Ljava/lang/Object;

    move-result-object v13

    goto :goto_3

    .line 496
    :cond_2
    :goto_2
    iget-object v13, v12, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->key:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v2, v3, v13}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->toIntentValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Ljava/lang/Object;

    move-result-object v13

    .line 500
    :goto_3
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    const-class v15, Ljava/lang/Boolean;

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 501
    iget-object v11, v12, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->intentKey:Ljava/lang/String;

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_4

    .line 502
    :cond_3
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    const-class v15, Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 503
    iget-object v11, v12, Lcom/sonyericsson/android/camera/ExternalCameraAppSetting;->intentKey:Ljava/lang/String;

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v6, v11, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    .line 505
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "One of the external app values was neither a boolean nor a String. It was a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 506
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 511
    :cond_6
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 512
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 513
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 514
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v6, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_5

    .line 515
    :cond_7
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 516
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_5

    .line 518
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "One of the Force settings values was neither a boolean nor a String. It was a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 519
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 524
    :cond_9
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v2, :cond_a

    .line 525
    const-string v2, "Launch external camera application"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 526
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  action:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 527
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  component:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 528
    const-string v2, "  extra:"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 529
    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 530
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "    "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_6

    :cond_a
    if-eqz p4, :cond_b

    .line 535
    invoke-virtual {v0, v6, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_7

    .line 537
    :cond_b
    invoke-virtual {v0, v6}, Lcom/sonyericsson/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    .line 541
    :goto_7
    invoke-virtual {v0, v9, v9, v9}, Lcom/sonyericsson/android/camera/CameraActivity;->overrideActivityTransition(III)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static launchLocationSourceSettings(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "launchLocationSourceSettings: "

    .line 142
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 151
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/String;

    const-string v2, "ApplicationLauncher"

    const/4 v3, 0x0

    aput-object v2, p0, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p0, v1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 154
    const-string v0, "launchLocationSourceSettings: failed."

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static launchSideSenseSettings(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "launchSideSenseSettings: "

    .line 160
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sonymobile.sidesenseapp.action.LAUNCH_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 169
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/String;

    const-string v2, "ApplicationLauncher"

    const/4 v3, 0x0

    aput-object v2, p0, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p0, v1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 172
    const-string v0, "launchSideSenseSettings: failed."

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static launchVideoEditor(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)Z
    .locals 4

    .line 197
    :try_start_0
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->uri:Landroid/net/Uri;

    .line 199
    iget-object p1, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    if-eqz p1, :cond_0

    .line 203
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mimeType:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 206
    :goto_0
    const-string/jumbo v2, "video/mp4"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 207
    iget-object p1, p1, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object p1, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mimeType:Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->isEditorAvailable(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f010010

    const v2, 0x7f010011

    .line 212
    invoke-static {p0, p1, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p1

    .line 215
    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->ACTION_EDIT_HIGH_FRAME_RATE:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x3

    .line 217
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 221
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    const/16 v0, 0xe

    .line 224
    invoke-virtual {p0, v2, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 231
    const-string p1, "openReviewWindow: failed."

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static launchWifiSetting(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .locals 2

    .line 550
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.panel.action.INTERNET_CONNECTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x19

    .line 551
    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
