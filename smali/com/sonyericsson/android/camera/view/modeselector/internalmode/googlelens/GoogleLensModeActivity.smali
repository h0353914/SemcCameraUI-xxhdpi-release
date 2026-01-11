.class public Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;
.super Landroid/app/Activity;
.source "GoogleLensModeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;,
        Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$KeyguardDismissCallbackImpl;
    }
.end annotation


# static fields
.field private static final START_TIMEOUT_MILLIS:J = 0x1388L


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mLensApi:Lcom/google/lens/sdk/LensApi;

.field private mScreenOffReceiver:Lcom/sonyericsson/android/camera/ScreenOffReceiverBase;

.field private final mStartTimeoutTask:Ljava/lang/Runnable;

.field private mState:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;


# direct methods
.method static bridge synthetic -$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;->changeTo(Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowErrorToast(Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;->showErrorToast()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartGoogleLensActivity(Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;->startGoogleLensActivity()Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    sget-object v0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;->READY:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;->mState:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;

    .line 41
    new-instance v0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$1;-><init>(Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;->mStartTimeoutTask:Ljava/lang/Runnable;

    .line 52
    new-instance v0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$2;-><init>(Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/ScreenOffReceiverBase;

    return-void
.end method

.method private changeTo(Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;)V
    .locals 2

    .line 76
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "prev:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;->mState:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " next:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 77
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;->mState:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;

    return-void
.end method

.method private showErrorToast()V
    .locals 2

    const v0, 0x7f0f00f0

    .line 183
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f0f0109

    .line 182
    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 184
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private startGoogleLensActivity()Z
    .locals 6

    const/4 v0, 0x0

    .line 166
    :try_start_0
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    new-array v1, v2, [Ljava/lang/String;

    const-string v3, "Launch Lens activity"

    aput-object v3, v1, v0

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;->mLensApi:Lcom/google/lens/sdk/LensApi;

    invoke-virtual {v1, p0}, Lcom/google/lens/sdk/LensApi;->launchLensActivity(Landroid/app/Activity;)V

    .line 170
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;->mStartTimeoutTask:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 175
    :catch_0
    const-string v1, "Fail to launch Lens activity."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 176
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;->showErrorToast()V

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 82
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "onCreate() : E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 84
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    new-instance p1, Lcom/google/lens/sdk/LensApi;

    invoke-direct {p1, p0}, Lcom/google/lens/sdk/LensApi;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;->mLensApi:Lcom/google/lens/sdk/LensApi;

    .line 86
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;->mHandler:Landroid/os/Handler;

    .line 87
    sget-object p1, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;->READY:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;->changeTo(Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;)V

    .line 89
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 90
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/ScreenOffReceiverBase;

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 93
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "onCreate() : X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 158
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 160
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/ScreenOffReceiverBase;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/ScreenOffReceiverBase;->unregisterFrom(Landroid/content/Context;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 98
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onNewIntent() : E state:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;->mState:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 100
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 101
    sget-object p1, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;->READY:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;->changeTo(Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;)V

    .line 103
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "onNewIntent() : X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 144
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPause() : E state:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;->mState:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;->mState:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;

    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;->DONE:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;

    if-ne v0, v1, :cond_1

    .line 147
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;->mStartTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 150
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 151
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;->mLensApi:Lcom/google/lens/sdk/LensApi;

    invoke-virtual {p0}, Lcom/google/lens/sdk/LensApi;->onPause()V

    .line 153
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "onPause() : X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 108
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onResume() : E state:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;->mState:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 110
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 111
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/ScreenOffReceiverBase;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/ScreenOffReceiverBase;->registerTo(Landroid/content/Context;)V

    .line 112
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;->mLensApi:Lcom/google/lens/sdk/LensApi;

    invoke-virtual {v0}, Lcom/google/lens/sdk/LensApi;->onResume()V

    .line 114
    sget-object v0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$3;->$SwitchMap$com$sonyericsson$android$camera$view$modeselector$internalmode$googlelens$GoogleLensModeActivity$State:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;->mState:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;->finish()V

    goto :goto_0

    .line 116
    :cond_2
    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 117
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 118
    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;->KEYGUARD:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;->changeTo(Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;)V

    .line 119
    new-instance v1, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$KeyguardDismissCallbackImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$KeyguardDismissCallbackImpl;-><init>(Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$KeyguardDismissCallbackImpl-IA;)V

    invoke-virtual {v0, p0, v1}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    goto :goto_0

    .line 121
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;->startGoogleLensActivity()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 122
    sget-object v0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;->DONE:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;->changeTo(Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;)V

    goto :goto_0

    .line 124
    :cond_4
    sget-object v0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;->READY:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;->changeTo(Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;)V

    .line 125
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;->finish()V

    .line 139
    :goto_0
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_5

    const-string p0, "onResume() : X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_5
    return-void
.end method
