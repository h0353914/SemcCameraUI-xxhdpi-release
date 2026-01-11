.class public Lcom/sonyericsson/android/camera/MultiWindowActivity;
.super Landroid/app/Activity;
.source "MultiWindowActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiWindowActivity"


# instance fields
.field private final REQUESTED_PERMISSIONS:[Ljava/lang/String;

.field private grantedPermission:Z

.field private isCameraActivityLaunched:Z

.field private isForeground:Z

.field private mActivityResultListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sonyericsson/cameracommon/activity/OnActivityResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private mFreeFromWindow:Z

.field private mMultiWindowMessage:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetgrantedPermission(Lcom/sonyericsson/android/camera/MultiWindowActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity;->grantedPermission:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputgrantedPermission(Lcom/sonyericsson/android/camera/MultiWindowActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity;->grantedPermission:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/MultiWindowActivity;->getPermissionList()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity;->REQUESTED_PERMISSIONS:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity;->isForeground:Z

    const/4 v1, 0x1

    .line 40
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity;->grantedPermission:Z

    .line 41
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity;->isCameraActivityLaunched:Z

    .line 42
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity;->mFreeFromWindow:Z

    return-void
.end method

.method private addActivityResultListener(ILcom/sonyericsson/cameracommon/activity/OnActivityResultListener;)Z
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity;->mActivityResultListeners:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity;->mActivityResultListeners:Landroid/util/SparseArray;

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity;->mActivityResultListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 194
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity;->mActivityResultListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method private checkCameraDisabled()Z
    .locals 1

    .line 218
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/MultiWindowActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    const/4 v0, 0x0

    .line 220
    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 221
    const-string p0, "[CameraNotAvailable] startCameraOpen: dpm.getCameraDisabled(null)"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getPermissionList()[Ljava/lang/String;
    .locals 3

    .line 252
    const-string p0, "android.permission.READ_MEDIA_IMAGES"

    const-string v0, "android.permission.READ_MEDIA_VIDEO"

    const-string v1, "android.permission.CAMERA"

    const-string v2, "android.permission.RECORD_AUDIO"

    filled-new-array {v1, v2, p0, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private launchCamera()V
    .locals 3

    .line 100
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/MultiWindowActivity;->checkCameraDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity;->mMultiWindowMessage:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/MultiWindowActivity;->showCameraNotAvailableError()V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity;->isCameraActivityLaunched:Z

    .line 107
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/MultiWindowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 108
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 109
    const-string v2, "android.media.action.IMAGE_CAPTURE"

    if-ne v1, v2, :cond_1

    .line 110
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/MultiWindowActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sonyericsson/android/camera/OneshotPhotoActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 111
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/MultiWindowActivity;->resetNewTaskFlag(Landroid/content/Intent;)V

    goto :goto_1

    .line 112
    :cond_1
    const-string v2, "android.media.action.VIDEO_CAPTURE"

    if-ne v1, v2, :cond_2

    .line 113
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/MultiWindowActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sonyericsson/android/camera/OneshotVideoActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 114
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/MultiWindowActivity;->resetNewTaskFlag(Landroid/content/Intent;)V

    goto :goto_1

    .line 115
    :cond_2
    const-string v2, "android.media.action.STILL_IMAGE_CAMERA"

    if-eq v1, v2, :cond_5

    const-string v2, "android.media.action.VIDEO_CAMERA"

    if-ne v1, v2, :cond_3

    goto :goto_0

    .line 119
    :cond_3
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No oneshot action found : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 121
    :cond_4
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/MultiWindowActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 123
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/MultiWindowActivity;->startActivity(Landroid/content/Intent;)V

    .line 124
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/MultiWindowActivity;->finish()V

    return-void

    .line 117
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/MultiWindowActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :goto_1
    const/high16 v1, 0x2000000

    .line 127
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 128
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/MultiWindowActivity;->startActivity(Landroid/content/Intent;)V

    .line 129
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/MultiWindowActivity;->finish()V

    return-void
.end method

.method private resetNewTaskFlag(Landroid/content/Intent;)V
    .locals 1

    .line 133
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p0

    const/high16 v0, 0x10000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const v0, -0x10000001

    and-int/2addr p0, v0

    .line 136
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private showCameraNotAvailableError()V
    .locals 3

    .line 228
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0174

    .line 229
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0f046c

    .line 230
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 231
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 232
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    const/4 v1, 0x1

    .line 233
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    const/4 v1, 0x0

    .line 234
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 235
    new-instance v1, Lcom/sonyericsson/android/camera/MultiWindowActivity$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/MultiWindowActivity$2;-><init>(Lcom/sonyericsson/android/camera/MultiWindowActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 241
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public checkAndRequestSelfPermissions(I[Ljava/lang/String;)Z
    .locals 2

    .line 148
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/cameracommon/utility/PermissionsUtil;->checkAndRequestSelfPermissions(Landroid/app/Activity;I[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    new-instance v1, Lcom/sonyericsson/android/camera/MultiWindowActivity$1;

    invoke-direct {v1, p0, p2}, Lcom/sonyericsson/android/camera/MultiWindowActivity$1;-><init>(Lcom/sonyericsson/android/camera/MultiWindowActivity;[Ljava/lang/String;)V

    .line 175
    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/MultiWindowActivity;->addActivityResultListener(ILcom/sonyericsson/cameracommon/activity/OnActivityResultListener;)Z

    :cond_0
    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 200
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 201
    iget-object v0, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity;->mActivityResultListeners:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    return-void

    .line 205
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/activity/OnActivityResultListener;

    if-eqz v0, :cond_1

    .line 207
    invoke-interface {v0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/activity/OnActivityResultListener;->onActivityResult(IILandroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 208
    iget-object p2, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity;->mActivityResultListeners:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 211
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity;->mActivityResultListeners:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 212
    iput-object p1, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity;->mActivityResultListeners:Landroid/util/SparseArray;

    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c002a

    .line 49
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/MultiWindowActivity;->setContentView(I)V

    .line 50
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/MultiWindowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/MultiWindowActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f090127

    .line 51
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/MultiWindowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity;->mMultiWindowMessage:Landroid/widget/TextView;

    .line 52
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/MultiWindowActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.freeform_window_management"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity;->mFreeFromWindow:Z

    .line 54
    iget-object v1, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity;->mMultiWindowMessage:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/MultiWindowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0f0501

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/MultiWindowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0f02da

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1

    .line 90
    invoke-super {p0, p1}, Landroid/app/Activity;->onMultiWindowModeChanged(Z)V

    .line 91
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity;->isForeground:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 94
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity;->grantedPermission:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity;->isCameraActivityLaunched:Z

    if-nez p1, :cond_1

    .line 95
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/MultiWindowActivity;->launchCamera()V

    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 84
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity;->isForeground:Z

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 68
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity;->isForeground:Z

    const/16 v1, 0xc

    .line 70
    iget-object v2, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity;->REQUESTED_PERMISSIONS:[Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/sonyericsson/android/camera/MultiWindowActivity;->checkAndRequestSelfPermissions(I[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity;->grantedPermission:Z

    goto :goto_0

    .line 74
    :cond_0
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity;->grantedPermission:Z

    .line 77
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/MultiWindowActivity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity;->grantedPermission:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity;->isCameraActivityLaunched:Z

    if-nez v0, :cond_1

    .line 78
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/MultiWindowActivity;->launchCamera()V

    :cond_1
    return-void
.end method
