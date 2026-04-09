.class public Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;
.super Ljava/lang/Object;
.source "CapturingModePluginsPMLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;
    }
.end annotation


# static fields
.field private static final FINGERPRINT:Ljava/lang/String; = "android.os.Build.FINGERPRINT"

.field private static final INTENT_FILTER_ACTION_NAME_FOR_QUERY:Ljava/lang/String; = "com.sonymobile.camera.addon.action.REGISTER_MODE"

.field private static final META_DATA_NAME:Ljava/lang/String; = "com.sonymobile.camera.addon.MODE_ATTRIBUTES"

.field private static final MODES_TAG:Ljava/lang/String; = "modes"

.field private static final MODE_ATTRIBUTE_DESCRIPTION_LABEL:Ljava/lang/String; = "descriptionLabel"

.field private static final MODE_ATTRIBUTE_NAME:Ljava/lang/String; = "name"

.field private static final MODE_ATTRIBUTE_SELECTOR_ICON:Ljava/lang/String; = "selectorIcon"

.field private static final MODE_ATTRIBUTE_SELECTOR_LABEL:Ljava/lang/String; = "selectorLabel"

.field private static final MODE_ATTRIBUTE_SHORTCUT_ICON:Ljava/lang/String; = "shortcutIcon"

.field private static final MODE_ATTRIBUTE_SHORTCUT_LABEL:Ljava/lang/String; = "shortcutLabel"

.field private static final MODE_DESCRIPTION_LABEL:Ljava/lang/String; = "com.sonymobile.camera.addon.MODE_DESCRIPTION_LABEL"

.field private static final MODE_SELECTOR_ICON:Ljava/lang/String; = "com.sonymobile.camera.addon.MODE_SELECTOR_ICON"

.field private static final MODE_SELECTOR_LABEL:Ljava/lang/String; = "com.sonymobile.camera.addon.MODE_SELECTOR_LABEL"

.field private static final MODE_SELECTOR_NAME:Ljava/lang/String; = "com.sonymobile.camera.addon.MODE_NAME"

.field private static final MODE_SHORTCUT_ICON:Ljava/lang/String; = "com.sonymobile.camera.addon.MODE_SHORTCUT_ICON"

.field private static final MODE_SHORTCUT_LABEL:Ljava/lang/String; = "com.sonymobile.camera.addon.MODE_SHORTCUT_LABEL"

.field private static final MODE_TAG:Ljava/lang/String; = "mode"

.field private static final PluginConfigurationList:[Ljava/lang/String;

.field private static final SHARED_PREFERENCE_NAME:Ljava/lang/String; = "com.sonyericsson.cameracommon.appsui.fingerprint_sharedprefs"

.field private static final TAG:Ljava/lang/String; = "CapturingModePluginsPMLoader"

.field private static final USES_FEATURE_ATTRIBUTE_NAME:Ljava/lang/String; = "name"

.field private static final USES_FEATURE_TAG:Ljava/lang/String; = "uses-feature"

.field private static final XMLNS_ANDROID:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field private static mPackageManagerPluginList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "HighFrameRateVideoActivity"

    const-string v1, "enable_timeshift_video_rec_app"

    const-string v2, "HighResolutionVideoActivity"

    const-string v3, "enable_4k_video_rec_app"

    .line 43
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->PluginConfigurationList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mContext:Landroid/content/Context;

    return-void
.end method

.method private addPluginToList()V
    .locals 17

    move-object/from16 v0, p0

    .line 346
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    sget-object v2, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;->Photo:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;

    iput-object v2, v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mInternalCaptureType:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;

    .line 347
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mIsVisibleNormal:Z

    .line 349
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mIsVisibleOneshot:Z

    .line 351
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v4, v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget v4, v4, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mShortcutLabelId:I

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget v4, v4, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mShortcutIconId:I

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean v2, v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mIsVisibleShortcut:Z

    .line 355
    new-instance v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;

    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v4, v2, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mPackageName:Ljava/lang/String;

    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v5, v2, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mActivityName:Ljava/lang/String;

    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v6, v2, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mModeName:Ljava/lang/String;

    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget v7, v2, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mSelectorIconId:I

    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget v8, v2, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mSelectorLabelId:I

    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget v9, v2, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mDescriptionLabelId:I

    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget v10, v2, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mShortcutIconId:I

    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget v11, v2, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mShortcutLabelId:I

    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v12, v2, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mInternalCaptureType:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;

    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-boolean v13, v2, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mIsVisibleNormal:Z

    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-boolean v14, v2, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mIsVisibleOneshot:Z

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-boolean v15, v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mIsVisibleShortcut:Z

    const/16 v16, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v16}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;ZZZLjava/lang/Object;)V

    .line 371
    sget-object v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mPackageManagerPluginList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearCapturingModes()V
    .locals 2

    .line 146
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/modeselector/CameraCommonProviderConstants;->CAPTURINGMODE_CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private getPluginsFromPackageManager()V
    .locals 8

    .line 156
    sget-object v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mPackageManagerPluginList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mPackageManagerPluginList:Ljava/util/List;

    .line 160
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mPackageManagerPluginList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 162
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 164
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sonymobile.camera.addon.action.REGISTER_MODE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 166
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 168
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 169
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->isPluginConfigurationOn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 175
    :cond_1
    new-instance v4, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;-><init>(Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$1;)V

    iput-object v4, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    .line 176
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v5, v4, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mPackageName:Ljava/lang/String;

    .line 177
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v5, v4, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mActivityName:Ljava/lang/String;

    const-string v4, "com.sonymobile.permission.CAMERA_ADDON"

    .line 180
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v5, v5, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 185
    new-array v4, v5, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "This application has no CAMERA_ADDON permission: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    const-string v3, "Failed to add plugin for this package."

    .line 187
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_0

    .line 194
    :cond_2
    :try_start_0
    new-instance v4, Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v6, v6, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mPackageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v7, v7, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mActivityName:Ljava/lang/String;

    invoke-direct {v4, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 206
    invoke-direct {p0, v3, v4}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->parsePluginFromMetaData(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ActivityInfo;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 207
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->addPluginToList()V

    goto/16 :goto_0

    .line 214
    :cond_3
    :try_start_1
    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 215
    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 225
    :try_start_2
    invoke-direct {p0, v3, v4, v6}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->parseModeAttributesFromMetaData(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ActivityInfo;Landroid/content/res/Resources;)Z

    move-result v7

    if-eqz v6, :cond_5

    if-eqz v7, :cond_5

    .line 227
    invoke-direct {p0, v4, v6}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->parsePluginFromModeAttributesXmlFile(Landroid/content/pm/ActivityInfo;Landroid/content/res/Resources;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 228
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->addPluginToList()V

    goto/16 :goto_0

    .line 230
    :cond_4
    new-array v4, v5, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to add plugin for this package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    const-string v4, "IOException: Problem when parse mode attributes xml file."

    .line 238
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    const-string v4, "XmlPullParserException: Problem when parse mode attributes xml file."

    .line 236
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 242
    :cond_5
    :goto_1
    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->parsePluginFromApplicationInfo(Landroid/content/pm/ResolveInfo;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 243
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->addPluginToList()V

    goto/16 :goto_0

    .line 245
    :cond_6
    new-array v4, v5, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to add plugin for this package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 217
    :catch_2
    new-array v4, v5, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NameNotFoundException: Problem when geting Application Resources with packageName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    const-string v3, "Failed to add plugin for this package."

    .line 219
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 199
    :catch_3
    new-array v4, v5, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NameNotFoundException: Problem when geting Application META_DATA with packageName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    const-string v3, "Failed to add plugin for this package."

    .line 201
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private getResIDFromXmlString(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 449
    :try_start_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 450
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    const/4 v0, 0x0

    .line 451
    invoke-virtual {p0, p2, v0, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Could not get resource id for plugin"

    .line 454
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isCapturingModeFingerprintModified(Landroid/content/SharedPreferences;)Z
    .locals 5

    const-string p0, "android.os.Build.FINGERPRINT"

    const-string v0, ""

    .line 134
    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 135
    sget-object p1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 136
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 137
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "version mismatch: cached: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", current : "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return v2

    :cond_1
    return v1
.end method

.method private isPluginConfigurationOn(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    .line 468
    :goto_0
    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->PluginConfigurationList:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1

    .line 470
    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->PluginConfigurationList:[Ljava/lang/String;

    aget-object v1, v1, v0

    const-string v3, "."

    .line 471
    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 470
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 473
    sget-object p2, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->PluginConfigurationList:[Ljava/lang/String;

    add-int/2addr v0, v2

    aget-object p2, p2, v0

    invoke-direct {p0, p2, p1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->isValueOn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    :goto_1
    return v2
.end method

.method private isValueOn(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 488
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x1

    .line 492
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    const-string v1, "bool"

    .line 493
    invoke-virtual {p0, p1, v1, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 495
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p0

    goto :goto_0

    :catch_0
    const-string p0, "Error reading out plugin configuration value"

    .line 498
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0
.end method

.method private parseModeAttributesFromMetaData(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ActivityInfo;Landroid/content/res/Resources;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 268
    new-array p0, v1, [Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "This activity has no meta-data: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v2

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return v2

    :cond_0
    if-eqz p3, :cond_a

    .line 273
    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "com.sonymobile.camera.addon.MODE_ATTRIBUTES"

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_9

    .line 275
    :try_start_0
    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 p3, 0x0

    if-nez p2, :cond_2

    :try_start_1
    const-string p0, "Problem when get XmlResourceParser from mode attributes xml resource Id."

    .line 277
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_1

    .line 304
    :try_start_2
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    return v2

    .line 283
    :cond_2
    :try_start_3
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v3, v1

    :goto_0
    const/4 v4, 0x3

    if-ne v0, v4, :cond_5

    const-string v4, "mode"

    .line 284
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    .line 304
    :try_start_4
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_4
    move v1, v3

    goto/16 :goto_4

    :cond_5
    :goto_1
    const/4 v4, 0x2

    if-ne v0, v4, :cond_6

    :try_start_5
    const-string v0, "uses-feature"

    .line 289
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v4, "name"

    .line 290
    invoke-interface {p2, v0, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 293
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 294
    new-array v3, v1, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mode of \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\" requires \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" but this platform doesn\'t support the feature."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    move v3, v2

    .line 285
    :cond_6
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    move-object p3, p0

    .line 275
    :try_start_6
    throw p3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_2
    if-eqz p2, :cond_8

    if-eqz p3, :cond_7

    .line 304
    :try_start_7
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    :catch_1
    move-exception p1

    :try_start_8
    invoke-virtual {p3, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_7
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_8
    :goto_3
    throw p0
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :catch_2
    const-string p0, "Problem when parse mode attributes xml file"

    .line 305
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return v2

    :cond_9
    :goto_4
    return v1

    :cond_a
    return v2
.end method

.method private parsePluginFromApplicationInfo(Landroid/content/pm/ResolveInfo;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 540
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 542
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 544
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mContext:Landroid/content/Context;

    .line 545
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 544
    invoke-virtual {v2, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 545
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mModeName:Ljava/lang/String;

    .line 546
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v4, v3, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mSelectorIconId:I

    .line 547
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->labelRes:I

    iput v4, v3, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mSelectorLabelId:I

    .line 549
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    if-eqz v3, :cond_0

    .line 550
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    iput v2, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mDescriptionLabelId:I

    goto :goto_0

    .line 552
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mSelectorLabelId:I

    iput p0, v2, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mDescriptionLabelId:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    .line 555
    :catch_0
    new-array p0, v0, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NameNotFoundException: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return v1
.end method

.method private parsePluginFromMetaData(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ActivityInfo;)Z
    .locals 4

    .line 509
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 511
    new-array p0, v1, [Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "This activity has no meta-data: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v2

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return v2

    .line 515
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.sonymobile.camera.addon.MODE_NAME"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mModeName:Ljava/lang/String;

    .line 516
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.sonymobile.camera.addon.MODE_SELECTOR_ICON"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mSelectorIconId:I

    .line 517
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.sonymobile.camera.addon.MODE_SELECTOR_LABEL"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mSelectorLabelId:I

    .line 518
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.sonymobile.camera.addon.MODE_DESCRIPTION_LABEL"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mDescriptionLabelId:I

    .line 519
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.sonymobile.camera.addon.MODE_SHORTCUT_ICON"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mShortcutIconId:I

    .line 520
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "com.sonymobile.camera.addon.MODE_SHORTCUT_LABEL"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mShortcutLabelId:I

    .line 522
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mModeName:Ljava/lang/String;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget p1, p1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mSelectorIconId:I

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget p1, p1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mSelectorLabelId:I

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget p1, p1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mDescriptionLabelId:I

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget p1, p1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mShortcutIconId:I

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mShortcutLabelId:I

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1
.end method

.method private parsePluginFromModeAttributesXmlFile(Landroid/content/pm/ActivityInfo;Landroid/content/res/Resources;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 326
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.sonymobile.camera.addon.MODE_ATTRIBUTES"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_4

    .line 328
    :try_start_0
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 330
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->parsePluginXMLData(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x1

    if-eqz p1, :cond_0

    .line 333
    :try_start_2
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 328
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    if-eqz p1, :cond_2

    if-eqz v1, :cond_1

    .line 333
    :try_start_4
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_5
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    :goto_1
    throw p0

    :cond_3
    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    const-string p0, "Problem when parse mode attributes xml file."

    .line 334
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_4
    :goto_2
    return v0
.end method

.method private parsePluginXMLData(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 383
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    .line 388
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    :goto_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const-string v1, "modes"

    .line 389
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 385
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    :cond_1
    :goto_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const-string v0, "mode"

    .line 391
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 393
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->parsePluginXMLModeTag(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)V

    .line 390
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_1

    :cond_3
    return-void
.end method

.method private parsePluginXMLModeTag(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 409
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_7

    .line 411
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    .line 412
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v3, "name"

    .line 416
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 417
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iput-object v2, v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mModeName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v3, "selectorIcon"

    .line 418
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 419
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mPackageName:Ljava/lang/String;

    .line 420
    invoke-direct {p0, v3, v2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->getResIDFromXmlString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mSelectorIconId:I

    goto :goto_1

    :cond_2
    const-string v3, "selectorLabel"

    .line 421
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 422
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mPackageName:Ljava/lang/String;

    .line 423
    invoke-direct {p0, v3, v2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->getResIDFromXmlString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mSelectorLabelId:I

    goto :goto_1

    :cond_3
    const-string v3, "descriptionLabel"

    .line 424
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 425
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mPackageName:Ljava/lang/String;

    .line 426
    invoke-direct {p0, v3, v2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->getResIDFromXmlString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mDescriptionLabelId:I

    goto :goto_1

    :cond_4
    const-string v3, "shortcutIcon"

    .line 427
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 428
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mPackageName:Ljava/lang/String;

    .line 429
    invoke-direct {p0, v3, v2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->getResIDFromXmlString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mShortcutIconId:I

    goto :goto_1

    :cond_5
    const-string v3, "shortcutLabel"

    .line 430
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 431
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mPackageName:Ljava/lang/String;

    .line 432
    invoke-direct {p0, v3, v2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->getResIDFromXmlString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mShortcutLabelId:I

    :cond_6
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method


# virtual methods
.method public updatePluginsInDB()V
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mContext:Landroid/content/Context;

    const-string v1, "com.sonyericsson.cameracommon.appsui.fingerprint_sharedprefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 119
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->isCapturingModeFingerprintModified(Landroid/content/SharedPreferences;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->clearCapturingModes()V

    .line 123
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "android.os.Build.FINGERPRINT"

    .line 124
    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 125
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 127
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->getPluginsFromPackageManager()V

    .line 128
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mPackageManagerPluginList:Ljava/util/List;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mContext:Landroid/content/Context;

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 128
    invoke-static {v0, v1, p0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeCollection;->register(Landroid/content/ContentResolver;Ljava/util/List;Landroid/content/pm/PackageManager;)V

    return-void
.end method
