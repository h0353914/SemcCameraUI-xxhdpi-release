.class public Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;
.super Landroid/app/Activity;
.source "RequestPermissionSdCardActivity.java"


# static fields
.field public static final EXTERNAL_STORAGE_PROVIDER_AUTHORITY:Ljava/lang/String; = "com.android.externalstorage.documents"

.field public static final EXTRA_SHOW_ADVANCED:Ljava/lang/String; = "android.provider.extra.SHOW_ADVANCED"

.field public static final EXTRA_UUID:Ljava/lang/String; = "extra_key_uuid"


# instance fields
.field private final FLAG_SD_PERMISSION:I

.field private final REQUEST_CODE_SD_CARD_GRANTED:I

.field private mScreenOffReceiver:Lcom/sonyericsson/android/camera/ScreenOffReceiverBase;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/16 v0, 0x100

    .line 42
    iput v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;->REQUEST_CODE_SD_CARD_GRANTED:I

    const/4 v0, 0x3

    .line 44
    iput v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;->FLAG_SD_PERMISSION:I

    .line 53
    new-instance v0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity$1;-><init>(Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/ScreenOffReceiverBase;

    return-void
.end method

.method private finish(I)V
    .locals 1

    .line 97
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 98
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;->setResult(ILandroid/content/Intent;)V

    .line 99
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;->finish()V

    return-void
.end method

.method private requestPermissionSdCard(Ljava/lang/String;)V
    .locals 3

    .line 103
    const-string/jumbo v0, "storage"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 104
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object v0

    .line 105
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageVolume;

    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    const-string v0, "com.android.externalstorage.documents"

    invoke-static {v0, p1}, Landroid/provider/DocumentsContract;->buildRootUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 109
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT_TREE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.provider.extra.INITIAL_URI"

    .line 110
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.provider.extra.SHOW_ADVANCED"

    const/4 v1, 0x1

    .line 111
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x100

    .line 112
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 113
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/ScreenOffReceiverBase;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/ScreenOffReceiverBase;->unregisterFrom(Landroid/content/Context;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 134
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActivityResult: requestCode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resultCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 136
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x100

    if-eq p1, v0, :cond_1

    goto/16 :goto_1

    :cond_1
    const/4 p1, 0x0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    if-eqz p2, :cond_2

    goto/16 :goto_1

    .line 159
    :cond_2
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;->finish(I)V

    goto/16 :goto_1

    .line 142
    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    .line 143
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extra_key_uuid"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 144
    new-instance v2, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 146
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    .line 154
    :cond_4
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;->finish(I)V

    goto :goto_1

    .line 147
    :cond_5
    :goto_0
    invoke-virtual {p3}, Landroid/content/Intent;->getFlags()I

    move-result p1

    and-int/lit8 p1, p1, 0x3

    .line 148
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-virtual {p3, p2, p1}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    .line 149
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_6

    .line 150
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Storage URI Permissin granted :"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 152
    :cond_6
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;->finish(I)V

    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 63
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "onCreate() start"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 67
    const-string v2, "permissions_theme_res_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1

    .line 69
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;->setTheme(I)V

    .line 73
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001e

    .line 74
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;->setContentView(I)V

    .line 75
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra_key_uuid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 76
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 77
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;->requestPermissionSdCard(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_2
    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;->finish(I)V

    .line 82
    :goto_0
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 83
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/ScreenOffReceiverBase;

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 86
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_3

    const-string p0, "onCreate() end"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 128
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 129
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/ScreenOffReceiverBase;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/ScreenOffReceiverBase;->unregisterFrom(Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 91
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 93
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/RequestPermissionSdCardActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/ScreenOffReceiverBase;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/ScreenOffReceiverBase;->registerTo(Landroid/content/Context;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 121
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "onStop() start"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 122
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 123
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_1

    const-string p0, "onStop() end"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void
.end method
