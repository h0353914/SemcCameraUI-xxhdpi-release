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

    .line 44
    const-string v0, "HighResolutionVideoActivity"

    const-string v1, "enable_4k_video_rec_app"

    const-string v2, "HighFrameRateVideoActivity"

    const-string v3, "enable_timeshift_video_rec_app"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->PluginConfigurationList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mContext:Landroid/content/Context;

    return-void
.end method

.method private addPluginToList()V
    .locals 17

    move-object/from16 v0, p0

    .line 347
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    sget-object v2, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;->Photo:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;

    iput-object v2, v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mInternalCaptureType:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;

    .line 348
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mIsVisibleNormal:Z

    .line 350
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mIsVisibleOneshot:Z

    .line 352
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    .line 353
    iget v4, v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mShortcutLabelId:I

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget v4, v4, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mShortcutIconId:I

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    .line 354
    :goto_0
    iput-boolean v2, v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mIsVisibleShortcut:Z

    .line 356
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

    .line 372
    sget-object v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mPackageManagerPluginList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearCapturingModes()V
    .locals 2

    .line 147
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/view/modeselector/CameraCommonProviderConstants;->CAPTURINGMODE_CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private getPluginsFromPackageManager()V
    .locals 9

    .line 157
    const-string v0, "Failed to add plugin for this package: "

    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mPackageManagerPluginList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 158
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mPackageManagerPluginList:Ljava/util/List;

    .line 161
    :cond_0
    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mPackageManagerPluginList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 163
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 165
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sonymobile.camera.addon.action.REGISTER_MODE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 167
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 169
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 170
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->isPluginConfigurationOn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 176
    :cond_1
    new-instance v5, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;-><init>(Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes-IA;)V

    iput-object v5, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    .line 177
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v6, v5, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mPackageName:Ljava/lang/String;

    .line 178
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v6, v5, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mActivityName:Ljava/lang/String;

    .line 181
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v5, v5, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mPackageName:Ljava/lang/String;

    const-string v6, "com.sonymobile.permission.CAMERA_ADDON"

    invoke-virtual {v1, v6, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 185
    const-string v6, "Failed to add plugin for this package."

    if-eqz v5, :cond_2

    .line 186
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "This application has no CAMERA_ADDON permission: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 188
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :cond_2
    :try_start_0
    new-instance v5, Landroid/content/ComponentName;

    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v7, v7, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mPackageName:Ljava/lang/String;

    iget-object v8, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v8, v8, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mActivityName:Ljava/lang/String;

    invoke-direct {v5, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/16 v8, 0x80

    invoke-virtual {v7, v5, v8}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 207
    invoke-direct {p0, v4, v5}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->parsePluginFromMetaData(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ActivityInfo;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 208
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->addPluginToList()V

    goto/16 :goto_0

    .line 215
    :cond_3
    :try_start_1
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 216
    invoke-virtual {v1, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 226
    :try_start_2
    invoke-direct {p0, v4, v5, v6}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->parseModeAttributesFromMetaData(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ActivityInfo;Landroid/content/res/Resources;)Z

    move-result v7

    if-eqz v6, :cond_5

    if-eqz v7, :cond_5

    .line 228
    invoke-direct {p0, v5, v6}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->parsePluginFromModeAttributesXmlFile(Landroid/content/pm/ActivityInfo;Landroid/content/res/Resources;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 229
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->addPluginToList()V

    goto/16 :goto_0

    :cond_4
    const/4 v5, 0x1

    .line 231
    new-array v5, v5, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v5}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 239
    :catch_0
    const-string v5, "IOException: Problem when parse mode attributes xml file."

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_1

    .line 237
    :catch_1
    const-string v5, "XmlPullParserException: Problem when parse mode attributes xml file."

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 243
    :cond_5
    :goto_1
    invoke-direct {p0, v4}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->parsePluginFromApplicationInfo(Landroid/content/pm/ResolveInfo;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 244
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->addPluginToList()V

    goto/16 :goto_0

    .line 246
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 218
    :catch_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "NameNotFoundException: Problem when geting Application Resources with packageName: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 220
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 200
    :catch_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "NameNotFoundException: Problem when geting Application META_DATA with packageName: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 202
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private getResIDFromXmlString(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 450
    :try_start_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 451
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    const/4 v0, 0x0

    .line 452
    invoke-virtual {p0, p2, v0, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 455
    :catch_0
    const-string p0, "Could not get resource id for plugin"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isCapturingModeFingerprintModified(Landroid/content/SharedPreferences;)Z
    .locals 2

    .line 135
    const-string p0, "android.os.Build.FINGERPRINT"

    const-string v0, ""

    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 136
    sget-object p1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 137
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "version mismatch: cached: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ", current : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isPluginConfigurationOn(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    .line 469
    :goto_0
    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->PluginConfigurationList:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x1

    if-ge v0, v2, :cond_1

    .line 471
    aget-object v2, v1, v0

    const-string v4, "."

    .line 472
    invoke-virtual {p2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 471
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/2addr v0, v3

    .line 474
    aget-object p2, v1, v0

    invoke-direct {p0, p2, p1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->isValueOn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    :goto_1
    return v3
.end method

.method private isValueOn(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 489
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x1

    .line 493
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    .line 494
    const-string v1, "bool"

    invoke-virtual {p0, p1, v1, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 496
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p0

    goto :goto_0

    .line 499
    :catch_0
    const-string p0, "Error reading out plugin configuration value"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0
.end method

.method private parseModeAttributesFromMetaData(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ActivityInfo;Landroid/content/res/Resources;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 269
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "This activity has no meta-data: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return v1

    :cond_0
    if-eqz p3, :cond_9

    .line 274
    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "com.sonymobile.camera.addon.MODE_ATTRIBUTES"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_8

    .line 276
    :try_start_0
    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_2

    .line 278
    :try_start_1
    new-array p0, v0, [Ljava/lang/String;

    const-string p1, "Problem when get XmlResourceParser from mode attributes xml resource Id."

    aput-object p1, p0, v1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_1

    .line 305
    :try_start_2
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return v1

    .line 284
    :cond_2
    :try_start_3
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result p3

    move v2, v0

    :goto_0
    const/4 v3, 0x3

    if-ne p3, v3, :cond_5

    .line 285
    const-string v3, "mode"

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    .line 305
    :try_start_4
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    :goto_1
    const/4 v3, 0x2

    if-ne p3, v3, :cond_6

    .line 289
    :try_start_5
    const-string/jumbo p3, "uses-feature"

    .line 290
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 291
    const-string p3, "http://schemas.android.com/apk/res/android"

    const-string v3, "name"

    invoke-interface {p2, p3, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 294
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 295
    new-array v2, v0, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mode of \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" requires \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v3, "\" but this platform doesn\'t support the feature."

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v2, v1

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    move v2, v1

    .line 286
    :cond_6
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    if-eqz p2, :cond_7

    .line 276
    :try_start_6
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_7
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_2
    throw p0
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 306
    :catch_0
    const-string p0, "Problem when parse mode attributes xml file"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return v1

    :cond_8
    :goto_3
    return v0

    :cond_9
    return v1
.end method

.method private parsePluginFromApplicationInfo(Landroid/content/pm/ResolveInfo;)Z
    .locals 4

    .line 542
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 547
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 549
    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v2

    .line 547
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 551
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 553
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mContext:Landroid/content/Context;

    .line 554
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 553
    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 554
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mModeName:Ljava/lang/String;

    .line 555
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v2, v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mSelectorIconId:I

    .line 556
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    iput v2, v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mSelectorLabelId:I

    .line 558
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    if-eqz v1, :cond_0

    .line 559
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    iput v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mDescriptionLabelId:I

    goto :goto_0

    .line 561
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mSelectorLabelId:I

    iput v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mDescriptionLabelId:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 p0, 0x1

    return p0

    .line 564
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "NameNotFoundException: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private parsePluginFromMetaData(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ActivityInfo;)Z
    .locals 3

    .line 510
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 512
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "This activity has no meta-data: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return v1

    .line 516
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.sonymobile.camera.addon.MODE_NAME"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mModeName:Ljava/lang/String;

    .line 517
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.sonymobile.camera.addon.MODE_SELECTOR_ICON"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mSelectorIconId:I

    .line 518
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.sonymobile.camera.addon.MODE_SELECTOR_LABEL"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mSelectorLabelId:I

    .line 519
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.sonymobile.camera.addon.MODE_DESCRIPTION_LABEL"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mDescriptionLabelId:I

    .line 520
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.sonymobile.camera.addon.MODE_SHORTCUT_ICON"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mShortcutIconId:I

    .line 521
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "com.sonymobile.camera.addon.MODE_SHORTCUT_LABEL"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mShortcutLabelId:I

    .line 523
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mModeName:Ljava/lang/String;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget p1, p1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mSelectorIconId:I

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget p1, p1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mSelectorLabelId:I

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget p1, p1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mDescriptionLabelId:I

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget p1, p1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mShortcutIconId:I

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mShortcutLabelId:I

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
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

    if-eqz p2, :cond_3

    .line 327
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.sonymobile.camera.addon.MODE_ATTRIBUTES"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_3

    .line 329
    :try_start_0
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    .line 331
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->parsePluginXMLData(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 334
    :try_start_2
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_1

    .line 329
    :try_start_3
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p0

    :cond_2
    if-eqz p1, :cond_3

    .line 334
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 335
    :catch_0
    const-string p0, "Problem when parse mode attributes xml file."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_3
    :goto_1
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

    .line 384
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    .line 389
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    :goto_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 390
    const-string v1, "modes"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 386
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    :cond_1
    :goto_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 392
    const-string v0, "mode"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 394
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->parsePluginXMLModeTag(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)V

    .line 391
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

    .line 410
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_7

    .line 412
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    .line 413
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_0

    goto :goto_1

    .line 417
    :cond_0
    const-string v3, "name"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 418
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iput-object v2, v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mModeName:Ljava/lang/String;

    goto :goto_1

    .line 419
    :cond_1
    const-string v3, "selectorIcon"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 420
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v3, v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mPackageName:Ljava/lang/String;

    .line 421
    invoke-direct {p0, v3, v2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->getResIDFromXmlString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mSelectorIconId:I

    goto :goto_1

    .line 422
    :cond_2
    const-string v3, "selectorLabel"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 423
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v3, v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mPackageName:Ljava/lang/String;

    .line 424
    invoke-direct {p0, v3, v2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->getResIDFromXmlString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mSelectorLabelId:I

    goto :goto_1

    .line 425
    :cond_3
    const-string v3, "descriptionLabel"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 426
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v3, v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mPackageName:Ljava/lang/String;

    .line 427
    invoke-direct {p0, v3, v2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->getResIDFromXmlString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mDescriptionLabelId:I

    goto :goto_1

    .line 428
    :cond_4
    const-string/jumbo v3, "shortcutIcon"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 429
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v3, v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mPackageName:Ljava/lang/String;

    .line 430
    invoke-direct {p0, v3, v2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->getResIDFromXmlString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mShortcutIconId:I

    goto :goto_1

    .line 431
    :cond_5
    const-string/jumbo v3, "shortcutLabel"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 432
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mTmpAttributes:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;

    iget-object v3, v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mPackageName:Ljava/lang/String;

    .line 433
    invoke-direct {p0, v3, v2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->getResIDFromXmlString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader$TmpUiAttributes;->mShortcutLabelId:I

    :cond_6
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method


# virtual methods
.method public updatePluginsInDB()V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mContext:Landroid/content/Context;

    const-string v1, "com.sonyericsson.cameracommon.appsui.fingerprint_sharedprefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 120
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->isCapturingModeFingerprintModified(Landroid/content/SharedPreferences;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->clearCapturingModes()V

    .line 124
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 125
    const-string v1, "android.os.Build.FINGERPRINT"

    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 126
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 128
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->getPluginsFromPackageManager()V

    .line 129
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mPackageManagerPluginList:Ljava/util/List;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModePluginsPMLoader;->mContext:Landroid/content/Context;

    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 129
    invoke-static {v0, v1, p0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeCollection;->register(Landroid/content/ContentResolver;Ljava/util/List;Landroid/content/pm/PackageManager;)V

    return-void
.end method
