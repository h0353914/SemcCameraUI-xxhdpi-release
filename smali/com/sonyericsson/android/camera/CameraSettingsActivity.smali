.class public Lcom/sonyericsson/android/camera/CameraSettingsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "CameraSettingsActivity.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment$OnListItemClickListener;
.implements Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnMessageDialogDismissListener;
.implements Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnMessageDialogCheckConfirmedListener;
.implements Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment$OnItemSelectedListener;
.implements Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$OnDetailChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;,
        Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;
    }
.end annotation


# static fields
.field public static final EXTRA_CAPTURING_MODE:Ljava/lang/String; = "capturing_mode"

.field public static final EXTRA_IN_SECURE:Ljava/lang/String; = "DeviceInSecurityLock"

.field public static final EXTRA_ONESHOT_MODE:Ljava/lang/String; = "OneShotMode"

.field public static final EXTRA_RESET_SETTINGS:Ljava/lang/String; = "ResetSettings"

.field public static final EXTRA_SHOULD_NOT_REMAIN_RECENT:Ljava/lang/String; = "shouldNotRemainRecentTask"

.field public static final EXTRA_VALUE_ALLOW_USE_LOCATION:Ljava/lang/String; = "allowUseLocation"

.field public static final EXTRA_VALUE_SELECT_IMMEDIATELY:Ljava/lang/String; = "valueSelect"

.field private static final STATE_IS_SAVED:Ljava/lang/String; = "isSaved"

.field private static final STATE_LAST_SELECTED_ITEM_KEY:Ljava/lang/String; = "LastCameraSettingItem"


# instance fields
.field private isLocationSystemSettingsLaunched:Z

.field private isSideSenseSystemSettingsLaunched:Z

.field private mBackgroundWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

.field private mCameraActionSound:Lcom/sonyericsson/android/camera/device/CameraActionSound;

.field private mCameraSettingItemBuilder:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;

.field private mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

.field private mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

.field private mIsAllowToUseLocation:Z

.field private mIsSdPermissionFinished:Z

.field private mLastClickedCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

.field private mMainHandler:Landroid/os/Handler;

.field private mResultIntent:Landroid/content/Intent;

.field private mScreenOffReceiver:Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;

.field private mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

.field private mStorageReadyStateAdapter:Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;

.field private mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

.field private mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCameraActionSound(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)Lcom/sonyericsson/android/camera/device/CameraActionSound;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCameraActionSound:Lcom/sonyericsson/android/camera/device/CameraActionSound;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsSdPermissionFinished(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mIsSdPermissionFinished:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastClickedCameraSettingItem(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mLastClickedCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMainHandler(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStorage(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)Lcom/sonyericsson/cameracommon/storage/Storage;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCameraActionSound(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Lcom/sonyericsson/android/camera/device/CameraActionSound;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCameraActionSound:Lcom/sonyericsson/android/camera/device/CameraActionSound;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsSdPermissionFinished(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mIsSdPermissionFinished:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$misDeviceInSecureLock(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->isDeviceInSecureLock()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monSettingValueChanged(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->onSettingValueChanged(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreInitGeoTag(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->reInitGeoTag()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshouldNotRemainRecentTask(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->shouldNotRemainRecentTask()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mshowAccessibilityCompliance(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showAccessibilityCompliance()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowDetail(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showDetail(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowResetDataConfirmation(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showResetDataConfirmation()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowValueSelectDialog(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showValueSelectDialog(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtoggleSwitch(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->toggleSwitch(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSetting(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->updateSetting()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 76
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 120
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mResultIntent:Landroid/content/Intent;

    .line 122
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mMainHandler:Landroid/os/Handler;

    .line 132
    new-instance v0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;-><init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter-IA;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStorageReadyStateAdapter:Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;

    return-void
.end method

.method private getCapturingMode(Landroid/content/Intent;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .locals 1

    .line 1004
    const-string p0, "capturing_mode"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1005
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "EXTRA_CAPTURING_MODE: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1006
    :cond_0
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->convertFrom(Ljava/lang/String;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p0

    return-object p0
.end method

.method private getOneShotMode(Landroid/content/Intent;)Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;
    .locals 1

    .line 1012
    const-string p0, "OneShotMode"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1013
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "EXTRA_ONESHOT_MODE: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1014
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1015
    sget-object p0, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->NONE:Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    goto :goto_0

    .line 1017
    :cond_1
    invoke-static {p0}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private isDeviceInSecureLock()Z
    .locals 2

    .line 1024
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "DeviceInSecurityLock"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isNeedToShowHiSpeedSdCardRecommendation()Z
    .locals 4

    .line 868
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 869
    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    .line 871
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->getType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    return v3

    .line 875
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->getType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/sonyericsson/cameracommon/storage/Storage;->getCurrentState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    move-result-object p0

    .line 877
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->AVAILABLE:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->AVAILABLE_NEAR_FULL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v3, 0x1

    :cond_2
    return v3
.end method

.method private isResetRequested()Z
    .locals 2

    .line 699
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mResultIntent:Landroid/content/Intent;

    const-string v0, "ResetSettings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$setupEdgeToEdge$0(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3

    .line 212
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    .line 214
    iget v0, p1, Landroidx/core/graphics/Insets;->left:I

    iget v1, p1, Landroidx/core/graphics/Insets;->top:I

    iget v2, p1, Landroidx/core/graphics/Insets;->right:I

    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 217
    sget-object p0, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    return-object p0
.end method

.method private launchCameraSettingsFragment(Z)V
    .locals 3

    .line 883
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCameraSettingItemBuilder:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    .line 884
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->create(Lcom/sonyericsson/android/camera/setting/UserSettings;)Ljava/util/List;

    move-result-object v0

    .line 887
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->shouldNotRemainRecentTask()Z

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;->newInstance(Ljava/util/List;ZZ)Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;

    move-result-object p1

    .line 889
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    .line 890
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 891
    const-class v1, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;

    .line 892
    const-string v1, "CameraSettingsFragment"

    const v2, 0x7f0900a7

    .line 891
    invoke-virtual {v0, v2, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 893
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 894
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    return-void
.end method

.method private onSettingValueChanged(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
    .locals 6

    .line 703
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    if-nez v0, :cond_0

    return-void

    .line 707
    :cond_0
    invoke-interface {v0, p1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    if-ne v0, p2, :cond_1

    .line 710
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "not changed value: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void

    .line 715
    :cond_1
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSettingValueChanged: key: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 718
    :cond_2
    sget-object v1, Lcom/sonyericsson/android/camera/CameraSettingsActivity$13;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x5

    if-eq v1, v2, :cond_3

    goto :goto_0

    .line 720
    :cond_3
    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/SettingUtil;->isSideSenseEnabled(Z)Z

    move-result v1

    if-nez v1, :cond_5

    .line 721
    new-instance p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 722
    sget-object p2, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->SIDE_SENSE_DISABLE_ON_CONTEXTUAL_SETTINGS:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iput-object p2, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 723
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showSettingMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    return-void

    .line 729
    :cond_4
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-object v4, p2

    check-cast v4, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    const v5, 0x7f100150

    invoke-virtual {v1, v2, v4, p0, v5}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->canSetGeotag(Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;Landroid/app/Activity;I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 731
    new-instance p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 732
    sget-object p2, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->LOCATION_SERVICE_DISABLE_ON_CONTEXTUAL_SETTINGS:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iput-object p2, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 733
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showSettingMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    return-void

    .line 744
    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    invoke-interface {v1, p2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 746
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 748
    sget-object v2, Lcom/sonyericsson/android/camera/CameraSettingsActivity$13;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result p1

    aget p1, v2, p1

    if-eq p1, v3, :cond_b

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 818
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getOneShotMode(Landroid/content/Intent;)Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_d

    .line 819
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getLastSettings()Lcom/sonyericsson/android/camera/setting/LastSettings;

    move-result-object p1

    move-object v2, p2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    invoke-virtual {p1, v2}, Lcom/sonyericsson/android/camera/setting/LastSettings;->setFastCapture(Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;)V

    .line 820
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getLastSettings()Lcom/sonyericsson/android/camera/setting/LastSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/setting/LastSettings;->save()V

    goto/16 :goto_1

    .line 801
    :pswitch_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 802
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    if-ne p2, v2, :cond_7

    .line 803
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne p1, v2, :cond_6

    .line 804
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-interface {p1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    goto/16 :goto_1

    .line 805
    :cond_6
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_ULTRA_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne p1, v2, :cond_d

    .line 806
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_ULTRA_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-interface {p1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    goto/16 :goto_1

    .line 808
    :cond_7
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    if-ne p2, v2, :cond_d

    .line 809
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne p1, v2, :cond_8

    .line 810
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-interface {p1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    goto/16 :goto_1

    .line 811
    :cond_8
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_ULTRA_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne p1, v2, :cond_d

    .line 812
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_ULTRA_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-interface {p1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    goto/16 :goto_1

    .line 765
    :pswitch_2
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    if-eq p2, p1, :cond_d

    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCameraActionSound:Lcom/sonyericsson/android/camera/device/CameraActionSound;

    if-eqz p1, :cond_d

    .line 766
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result p1

    const/4 v2, 0x0

    if-eq p1, v3, :cond_a

    const/4 v3, 0x2

    if-eq p1, v3, :cond_9

    goto :goto_1

    .line 771
    :cond_9
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCameraActionSound:Lcom/sonyericsson/android/camera/device/CameraActionSound;

    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;->START_VIDEO_RECORDING:Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    .line 772
    invoke-virtual {p1, v3, v2}, Lcom/sonyericsson/android/camera/device/CameraActionSound;->play(Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;Z)V

    goto :goto_1

    .line 768
    :cond_a
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCameraActionSound:Lcom/sonyericsson/android/camera/device/CameraActionSound;

    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;->SHUTTER_CLICK:Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;

    invoke-virtual {p1, v3, v2}, Lcom/sonyericsson/android/camera/device/CameraActionSound;->play(Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;Z)V

    goto :goto_1

    .line 751
    :pswitch_3
    move-object p1, v0

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 753
    move-object v2, p2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 754
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->is4KVideo()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->is4KVideo()Z

    move-result p1

    if-nez p1, :cond_d

    .line 755
    new-instance p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 756
    sget-object v2, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->THERMAL_NOTE:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iput-object v2, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 757
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showSettingMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 758
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showHiSpeedSdCardRecommendDialogOnVideoSizeChange()V

    goto :goto_1

    .line 782
    :cond_b
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->EMMC:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    if-ne v0, p1, :cond_d

    .line 783
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->isNeedToShowHiSpeedSdCardRecommendation()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 784
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 785
    invoke-interface {p1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 786
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->is4KVideo()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 787
    new-instance p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 788
    sget-object v2, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->FOURK_HIGH_SPEED_SD_RECOMMENDATION_ON_DESTINATION_CHANGE:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iput-object v2, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 790
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showSettingMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    goto :goto_1

    .line 791
    :cond_c
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v1, p1, :cond_d

    .line 792
    new-instance p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 793
    sget-object v2, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->HIGH_SPEED_SD_RECOMMENDATION_ON_SETTING_CHANGE:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iput-object v2, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 795
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showSettingMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    .line 828
    :cond_d
    :goto_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->updateSetting()V

    .line 830
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendSettingsCommon(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 831
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p0

    invoke-virtual {p0, v0, p2, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setSettingsValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private prepareUserSettingsIfNeed()V
    .locals 4

    .line 981
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    if-nez v0, :cond_2

    .line 982
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 983
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 984
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 987
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/CameraApplication;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraApplication;->getStorage()Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    .line 988
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/setting/SettingsFactory;->create(Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/Storage;)Lcom/sonyericsson/android/camera/setting/StoredSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    .line 990
    new-instance v1, Lcom/sonyericsson/android/camera/configuration/IntentReader;

    invoke-direct {v1}, Lcom/sonyericsson/android/camera/configuration/IntentReader;-><init>()V

    .line 992
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/configuration/IntentReader;->getVideoQualityConfigurations(Landroid/content/Intent;)Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;

    move-result-object v1

    .line 994
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    .line 996
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 997
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getOneShotMode(Landroid/content/Intent;)Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    move-result-object p0

    .line 998
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 995
    invoke-interface {v2, v3, p0, v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->prepare(Landroid/content/Context;Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;Landroid/net/Uri;Lcom/sonyericsson/android/camera/configuration/IntentReader$VideoQualityConfigurations;)V

    :cond_2
    return-void
.end method

.method private reInitGeoTag()V
    .locals 3

    .line 667
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mIsAllowToUseLocation:Z

    invoke-virtual {v0, p0, v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->initGeotag(Landroid/app/Activity;Lcom/sonyericsson/android/camera/setting/UserSettings;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 668
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-static {v0, p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isGeoTagEnabled(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 669
    new-instance v0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 670
    sget-object v1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->LOCATION_SERVICE_DISABLE_ON_CONTEXTUAL_SETTINGS:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iput-object v1, v0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 671
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showSettingMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    goto :goto_0

    .line 673
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 674
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->updateSetting()V

    goto :goto_0

    .line 678
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->updateLocation(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;)V

    .line 679
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 680
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->updateSetting()V

    :goto_0
    return-void
.end method

.method private requestDismissKeyguard()V
    .locals 2

    .line 1033
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    return-void

    .line 1038
    :cond_0
    new-instance v1, Lcom/sonyericsson/android/camera/CameraSettingsActivity$12;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$12;-><init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V

    invoke-virtual {v0, p0, v1}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    return-void
.end method

.method private setupEdgeToEdge()V
    .locals 1

    const v0, 0x1020002

    .line 210
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    new-instance v0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method private shouldNotRemainRecentTask()Z
    .locals 2

    .line 1028
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string/jumbo v0, "shouldNotRemainRecentTask"

    .line 1029
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private showAccessibilityCompliance()V
    .locals 2

    .line 692
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "showAccessibilityCompliance"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 693
    :cond_0
    new-instance v0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 694
    sget-object v1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ACCESSIBILITY_COMPLIANCE:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iput-object v1, v0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 695
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showSettingMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    return-void
.end method

.method private showDetail(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V
    .locals 3

    .line 925
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->newInstance(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;

    move-result-object p1

    .line 927
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 929
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 930
    const-class v1, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;

    const-string v1, "CameraSettingsDetailFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 931
    const-class v2, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;

    const v2, 0x7f0900a7

    invoke-virtual {v0, v2, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 933
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 934
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    :cond_0
    return-void
.end method

.method private showHiSpeedSdCardRecommendDialogOnVideoSizeChange()V
    .locals 2

    .line 972
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 973
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->isNeedToShowHiSpeedSdCardRecommendation()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->is4KVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 974
    new-instance v0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 975
    sget-object v1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->FOURK_HIGH_SPEED_SD_RECOMMENDATION_ON_VIDEOSIZE_CHANGE:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iput-object v1, v0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 976
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showSettingMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    :cond_0
    return-void
.end method

.method private showResetDataConfirmation()V
    .locals 2

    .line 685
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "showResetDataConfirmation"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 686
    :cond_0
    new-instance v0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 687
    sget-object v1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->RESET_CONFIRMATION:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iput-object v1, v0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 688
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showSettingMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    return-void
.end method

.method private showSettingMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z
    .locals 2

    .line 939
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getMessageSettings()Lcom/sonyericsson/android/camera/setting/MessageSettings;

    move-result-object v0

    iget-object v1, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->getMessageType()Lcom/sonyericsson/android/camera/setting/MessageType;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/MessageSettings;->isNeverShow(Lcom/sonyericsson/android/camera/setting/MessageType;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 940
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 944
    :cond_0
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;->newInstance(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;

    move-result-object p1

    .line 945
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    .line 946
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 947
    const-class v1, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;

    const-string v1, "SettingMessageDialogFragment"

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 948
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 949
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private showValueSelectDialog(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V
    .locals 2

    .line 913
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;->newInstance(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;

    move-result-object p1

    .line 915
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 917
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 918
    const-class v1, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;

    const-string v1, "CameraSettingsDialogFragment"

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 919
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 920
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    :cond_0
    return-void
.end method

.method private toggleSwitch(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V
    .locals 3

    .line 900
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getOptions()Ljava/util/List;

    move-result-object v0

    .line 899
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;

    .line 901
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->isSelected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 902
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->getValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 908
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->onSettingValueChanged(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    :cond_2
    return-void
.end method

.method private updateSetting()V
    .locals 6

    .line 835
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    if-nez v0, :cond_0

    return-void

    .line 838
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCameraSettingItemBuilder:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;

    .line 839
    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->create(Lcom/sonyericsson/android/camera/setting/UserSettings;)Ljava/util/List;

    move-result-object v0

    .line 841
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-class v2, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;

    .line 842
    const-string v2, "CameraSettingsFragment"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 843
    instance-of v2, v1, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemChangedListener;

    if-eqz v2, :cond_1

    .line 844
    check-cast v1, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemChangedListener;

    invoke-interface {v1, v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemChangedListener;->onItemListChanged(Ljava/util/List;)V

    .line 847
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-class v2, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;

    .line 848
    const-string v2, "CameraSettingsDetailFragment"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 849
    instance-of v2, v1, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemChangedListener;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mLastClickedCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    if-eqz v2, :cond_4

    .line 851
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingCategoryItem;

    .line 852
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingCategoryItem;->getCameraSettingItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    .line 853
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mLastClickedCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v5

    if-ne v4, v5, :cond_3

    .line 854
    move-object v4, v1

    check-cast v4, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemChangedListener;

    invoke-interface {v4, v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemChangedListener;->onItemChanged(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public dismissSettingMessageDialog()V
    .locals 2

    .line 955
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    .line 956
    const-class v0, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;

    .line 957
    const-string v0, "SettingMessageDialogFragment"

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;

    if-eqz v0, :cond_0

    .line 959
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;->dismissAllowingStateLoss()V

    .line 960
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 961
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 962
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 963
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    :cond_0
    return-void
.end method

.method public getLatestItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingCategoryItem;",
            ">;"
        }
    .end annotation

    .line 557
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCameraSettingItemBuilder:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;->create(Lcom/sonyericsson/android/camera/setting/UserSettings;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 417
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 418
    sget-boolean p3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p3, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "onActivityResult: requestCode: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ", resultCode: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 420
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result p3

    if-nez p3, :cond_1

    return-void

    :cond_1
    const/16 p3, 0xd

    if-eq p1, p3, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    if-ne p2, p1, :cond_3

    .line 430
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mMainHandler:Landroid/os/Handler;

    new-instance p2, Lcom/sonyericsson/android/camera/CameraSettingsActivity$4;

    invoke-direct {p2, p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$4;-><init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 438
    :cond_3
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->updateLocation(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;)V

    .line 439
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-interface {p1, p2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 440
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->updateSetting()V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 364
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "onBackPressed E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 365
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->isResetRequested()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->commit()V

    :cond_1
    const/4 v0, -0x1

    .line 369
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mResultIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 370
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    .line 371
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "onBackPressed X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onCheckConfirmed(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;Z)V
    .locals 3

    .line 545
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getMessageSettings()Lcom/sonyericsson/android/camera/setting/MessageSettings;

    move-result-object v0

    .line 546
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mBackgroundWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/android/camera/CameraSettingsActivity$8;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$8;-><init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Lcom/sonyericsson/android/camera/setting/MessageSettings;Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onClick(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V
    .locals 3

    .line 562
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onClick: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 563
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mLastClickedCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    .line 564
    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 565
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 567
    sget-object v0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$13;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 597
    :cond_1
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/SettingUtil;->isSideSenseEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_9

    .line 598
    new-instance p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 599
    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->UNLOCK_REQUEST_FOR_OPENING_OPTION_MENU:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iput-object v0, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 600
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showSettingMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 601
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->requestDismissKeyguard()V

    :cond_2
    return-void

    .line 590
    :cond_3
    new-instance p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 591
    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->UNLOCK_REQUEST_FOR_OPENING_OPTION_MENU:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iput-object v0, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 592
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showSettingMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 593
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->requestDismissKeyguard()V

    :cond_4
    return-void

    .line 570
    :cond_5
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;

    .line 571
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->isSelectable()Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    .line 577
    :cond_7
    new-instance p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 578
    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->UNLOCK_REQUEST_FOR_OPENING_OPTION_MENU:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iput-object v0, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 579
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showSettingMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 580
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->requestDismissKeyguard()V

    :cond_8
    return-void

    .line 612
    :cond_9
    :goto_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 613
    new-instance v0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 614
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getRestrictMessageDialogId()Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    move-result-object p1

    iput-object p1, v0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 615
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showSettingMessageDialog(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    return-void

    .line 619
    :cond_a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera/CameraSettingsActivity$9;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$9;-><init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 148
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "onCreate E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 149
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 150
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->setupEdgeToEdge()V

    const v0, 0x7f0c001f

    .line 151
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->setContentView(I)V

    .line 152
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->finish()V

    return-void

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 159
    const-string v1, "isSaved"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 164
    const-string v2, "LastCameraSettingItem"

    const-class v3, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mLastClickedCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    goto :goto_0

    :cond_2
    move v1, v0

    .line 168
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getCapturingMode(Landroid/content/Intent;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 170
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->prepareUserSettingsIfNeed()V

    .line 172
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    .line 174
    invoke-virtual {p1, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const p1, 0x7f0f03b1

    .line 175
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->setTitle(I)V

    .line 178
    :cond_3
    new-instance p1, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    invoke-direct {p1, p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    .line 179
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->assignResource()V

    .line 181
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f050005

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    .line 182
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getOneShotMode(Landroid/content/Intent;)Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/LaunchCondition$OneShotMode;->isEnabled()Z

    move-result v9

    .line 183
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_4

    move v10, v2

    goto :goto_1

    :cond_4
    move v10, v0

    .line 184
    :goto_1
    new-instance p1, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iget-object v7, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/cameracommon/storage/Storage;ZZZ)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCameraSettingItemBuilder:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;

    .line 186
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v3, "allowUseLocation"

    .line 187
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mIsAllowToUseLocation:Z

    .line 189
    new-instance p1, Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    const-string v2, "CameraSettingsActivity"

    invoke-direct {p1, v2}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mBackgroundWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    .line 192
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mResultIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "capturing_mode"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mResultIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 195
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-interface {p1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->changeCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 196
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mIsAllowToUseLocation:Z

    invoke-virtual {p1, p0, v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->initGeotag(Landroid/app/Activity;Lcom/sonyericsson/android/camera/setting/UserSettings;Z)Z

    if-nez v1, :cond_5

    .line 199
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v1, "valueSelect"

    .line 200
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 201
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->launchCameraSettingsFragment(Z)V

    .line 204
    :cond_5
    new-instance p1, Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;-><init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver-IA;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;

    .line 206
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_6

    const-string p0, "onCreate X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 321
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "onDestroy E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 322
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 324
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 329
    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;->unregisterFrom(Landroid/content/Context;)V

    .line 330
    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;

    .line 333
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    if-eqz v0, :cond_3

    .line 334
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->releaseResource()V

    .line 335
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->release()V

    .line 336
    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    .line 339
    :cond_3
    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    .line 342
    :try_start_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mBackgroundWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    if-eqz p0, :cond_4

    .line 343
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->quit()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 346
    const-string v0, "failed to quit worker thread."

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 349
    :cond_4
    :goto_0
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_5

    const-string p0, "onDestroy X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public onDismiss(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;I)V
    .locals 3

    .line 451
    sget-object v0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$13;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    iget-object v1, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, -0x1

    packed-switch v0, :pswitch_data_0

    .line 537
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Please handle "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 538
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "There is unhandled Dialog. "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 539
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 533
    :pswitch_0
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "No handle "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->v([Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    if-ne p2, v2, :cond_2

    .line 511
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->EMMC:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    invoke-interface {p1, p2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 512
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mMainHandler:Landroid/os/Handler;

    new-instance p2, Lcom/sonyericsson/android/camera/CameraSettingsActivity$7;

    invoke-direct {p2, p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$7;-><init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :pswitch_2
    if-ne p2, v2, :cond_2

    .line 496
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStoredSettings:Lcom/sonyericsson/android/camera/setting/StoredSettings;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    invoke-interface {p1, p2}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->clearAllSettings(Lcom/sonyericsson/cameracommon/storage/Storage;)V

    const/4 p1, 0x0

    .line 498
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    .line 499
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->prepareUserSettingsIfNeed()V

    .line 500
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-interface {p1, p2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->changeCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 502
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mResultIntent:Landroid/content/Intent;

    const-string p2, "ResetSettings"

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 503
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mResultIntent:Landroid/content/Intent;

    invoke-virtual {p0, v2, p1}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 504
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->updateSetting()V

    .line 506
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->finish()V

    goto :goto_0

    .line 490
    :pswitch_3
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->showHiSpeedSdCardRecommendDialogOnVideoSizeChange()V

    goto :goto_0

    :pswitch_4
    if-ne p2, v2, :cond_0

    .line 476
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->isSideSenseSystemSettingsLaunched:Z

    .line 477
    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->launchSideSenseSettings(Landroid/app/Activity;)V

    goto :goto_0

    .line 479
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;

    invoke-interface {p1, p2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 480
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mMainHandler:Landroid/os/Handler;

    new-instance p2, Lcom/sonyericsson/android/camera/CameraSettingsActivity$6;

    invoke-direct {p2, p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$6;-><init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_5
    if-ne p2, v2, :cond_1

    .line 460
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->isLocationSystemSettingsLaunched:Z

    .line 461
    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher;->launchLocationSourceSettings(Landroid/app/Activity;)V

    goto :goto_0

    .line 463
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->updateLocation(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;)V

    .line 464
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-interface {p1, p2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 465
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mMainHandler:Landroid/os/Handler;

    new-instance p2, Lcom/sonyericsson/android/camera/CameraSettingsActivity$5;

    invoke-direct {p2, p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$5;-><init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_6
    if-ne p2, v2, :cond_2

    .line 454
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->requestDismissKeyguard()V

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onItemSelected(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
    .locals 2

    .line 648
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera/CameraSettingsActivity$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$10;-><init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x50

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1b

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 386
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    .line 377
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->isResetRequested()Z

    move-result p1

    if-nez p1, :cond_2

    .line 378
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->commit()V

    :cond_2
    const/4 p1, -0x1

    .line 381
    iget-object p2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mResultIntent:Landroid/content/Intent;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 382
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->finish()V

    const/4 p0, 0x1

    return p0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 354
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 355
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->onBackPressed()V

    const/4 p0, 0x1

    return p0

    .line 359
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method protected onPause()V
    .locals 1

    .line 294
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "onPause E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 295
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 297
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStorageReadyStateAdapter:Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;

    invoke-interface {v0, p0}, Lcom/sonyericsson/cameracommon/storage/Storage;->removeStorageReadyStateListener(Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyStateListener;)V

    .line 298
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "onPause X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 247
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onResume E: userSettings:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", capturingMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 249
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 251
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$ScreenOffReceiver;->registerTo(Landroid/content/Context;)V

    .line 252
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_1

    .line 253
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->finish()V

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->clearCachedUserSetting()V

    .line 258
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->changeCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 261
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->isLocationSystemSettingsLaunched:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 262
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->isLocationSystemSettingsLaunched:Z

    .line 263
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-static {v0, p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isGeoTagEnabled(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 264
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-interface {v0, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    move v0, v1

    goto :goto_0

    .line 267
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-interface {v0, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    :cond_3
    move v0, v2

    .line 270
    :goto_0
    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->isSideSenseSystemSettingsLaunched:Z

    if-eqz v3, :cond_5

    .line 271
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->isSideSenseSystemSettingsLaunched:Z

    .line 272
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/SettingUtil;->isSideSenseEnabled(Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 273
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    goto :goto_1

    .line 276
    :cond_4
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    :cond_5
    if-eqz v0, :cond_6

    .line 280
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera/CameraSettingsActivity$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$2;-><init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 288
    :cond_6
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStorage:Lcom/sonyericsson/cameracommon/storage/Storage;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mStorageReadyStateAdapter:Lcom/sonyericsson/android/camera/CameraSettingsActivity$StorageReadyStateAdapter;

    invoke-interface {v0, p0}, Lcom/sonyericsson/cameracommon/storage/Storage;->addStorageReadyStateListener(Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyStateListener;)V

    .line 289
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_7

    const-string p0, "onResume X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 402
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "onSaveInstanceState E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 403
    :cond_0
    const-string v0, "isSaved"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 404
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mLastClickedCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    if-eqz v0, :cond_1

    .line 405
    const-string v1, "LastCameraSettingItem"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 407
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->isResetRequested()Z

    move-result v0

    if-nez v0, :cond_2

    .line 408
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->commit()V

    .line 410
    :cond_2
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 412
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_3

    const-string p0, "onSaveInstanceState X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 223
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "onStart E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 224
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 226
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_1

    .line 227
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->finish()V

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mBackgroundWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/CameraSettingsActivity$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$1;-><init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 242
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "onStart X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 303
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "onStop E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 304
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 306
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mBackgroundWorker:Lcom/sonyericsson/android/camera/util/BackgroundWorker;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/BackgroundWorker;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/CameraSettingsActivity$3;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$3;-><init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 316
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "onStop X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    .line 391
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "onUserLeaveHint E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 392
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->isResetRequested()Z

    move-result v0

    if-nez v0, :cond_1

    .line 393
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mUserSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->commit()V

    .line 396
    :cond_1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onUserLeaveHint()V

    .line 397
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "onUserLeaveHint X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onValueChanged(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
    .locals 2

    .line 658
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera/CameraSettingsActivity$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/sonyericsson/android/camera/CameraSettingsActivity$11;-><init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
