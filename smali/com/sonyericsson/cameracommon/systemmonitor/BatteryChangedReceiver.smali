.class public Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BatteryChangedReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;
    }
.end annotation


# static fields
.field private static final BATTERY_CHECK_ENABLED:Z

.field private static final TAG:Ljava/lang/String; = "BatteryChangedReceiver"

.field private static final THRESHOLD_BATTERY_LEVEL:I

.field public static final THRESHOLD_LOW_BATTERY_LEVEL:I


# instance fields
.field private mBatteryLevel:I

.field private mBatteryStatus:I

.field private mBatteryTemperature:I

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mHealth:I

.field private mIsActive:Z

.field private mIsAlreadyBcl:Z

.field private final mListener:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;

.field private mPlugType:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "msm8996"

    .line 55
    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0xf

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const-string v0, "sdm845"

    sget-object v3, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    sput v2, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->THRESHOLD_BATTERY_LEVEL:I

    .line 61
    sput v1, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->THRESHOLD_LOW_BATTERY_LEVEL:I

    .line 62
    sput-boolean v2, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->BATTERY_CHECK_ENABLED:Z

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x5

    .line 56
    sput v0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->THRESHOLD_BATTERY_LEVEL:I

    .line 57
    sput v1, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->THRESHOLD_LOW_BATTERY_LEVEL:I

    .line 58
    sput-boolean v2, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->BATTERY_CHECK_ENABLED:Z

    :goto_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;)V
    .locals 3

    .line 87
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mIsAlreadyBcl:Z

    const/4 v1, 0x1

    .line 71
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mIsActive:Z

    const/16 v2, 0x64

    .line 72
    iput v2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryLevel:I

    .line 73
    iput v1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryStatus:I

    .line 74
    iput v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mPlugType:I

    .line 75
    iput v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryTemperature:I

    .line 76
    iput v1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mHealth:I

    .line 88
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mContext:Landroid/content/Context;

    .line 89
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mListener:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;

    .line 90
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;)Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mListener:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;

    return-object p0
.end method

.method private checkBcl(IZ)Z
    .locals 2

    .line 202
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mIsAlreadyBcl:Z

    if-nez v0, :cond_1

    .line 203
    invoke-static {}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->isCheckEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->THRESHOLD_BATTERY_LEVEL:I

    if-gt p1, v0, :cond_1

    const/4 p1, 0x1

    .line 204
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mIsAlreadyBcl:Z

    .line 205
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mListener:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;

    invoke-interface {p0, p2}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;->onReachBatteryLimit(Z)V

    goto :goto_0

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$1;

    invoke-direct {v1, p0, p2}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$1;-><init>(Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return p1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isCheckEnabled()Z
    .locals 1

    .line 238
    sget-boolean v0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->BATTERY_CHECK_ENABLED:Z

    return v0
.end method

.method private notifyBatteryLevel(I)V
    .locals 0

    .line 230
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mListener:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;

    invoke-interface {p0, p1}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;->onBatteryLevelChanged(I)V

    return-void
.end method

.method private notifyLowBattery()V
    .locals 0

    .line 226
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mListener:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;

    invoke-interface {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;->onReachLowBattery()V

    return-void
.end method


# virtual methods
.method public checkStartupStatus()V
    .locals 6

    const/4 v0, 0x0

    .line 184
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mIsAlreadyBcl:Z

    .line 185
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mContext:Landroid/content/Context;

    const-string v2, "batterymanager"

    .line 186
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryManager;

    const/4 v2, 0x4

    .line 187
    invoke-virtual {v1, v2}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v1

    .line 189
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    new-array v2, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkStartupStatus() : Battery Capacity = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 191
    :cond_0
    iput v1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryLevel:I

    .line 193
    iget v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryLevel:I

    invoke-direct {p0, v0, v3}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->checkBcl(IZ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 194
    invoke-static {}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->isCheckEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryLevel:I

    sget v1, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->THRESHOLD_LOW_BATTERY_LEVEL:I

    if-gt v0, v1, :cond_1

    .line 195
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->notifyLowBattery()V

    .line 197
    :cond_1
    iget v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryLevel:I

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->notifyBatteryLevel(I)V

    :cond_2
    return-void
.end method

.method public getBatteryLevel()I
    .locals 0

    .line 234
    iget p0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryLevel:I

    return p0
.end method

.method public isAlreadyBcl()Z
    .locals 0

    .line 222
    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mIsAlreadyBcl:Z

    return p0
.end method

.method public onCreate()V
    .locals 2

    .line 97
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "onCreate"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 98
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x3e7

    .line 99
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 100
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 107
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "onDestroy"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 124
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "onPause"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mIsAlreadyBcl:Z

    const/4 v0, 0x1

    .line 126
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mIsActive:Z

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .line 132
    iget-boolean p1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mIsActive:Z

    if-eqz p1, :cond_1

    .line 133
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_0

    const-string p0, "Activity is onPause, ignore bcl intent."

    .line 134
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 139
    :cond_1
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    new-array p1, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receive action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 140
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    .line 141
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 142
    iget p1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryLevel:I

    const-string v2, "level"

    const/16 v3, 0x64

    .line 143
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryLevel:I

    .line 144
    iget v2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryStatus:I

    const-string v3, "status"

    .line 145
    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryStatus:I

    .line 147
    iget v3, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mPlugType:I

    const-string v4, "plugged"

    .line 148
    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mPlugType:I

    .line 149
    iget v4, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryTemperature:I

    const-string v5, "temperature"

    .line 150
    invoke-virtual {p2, v5, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryTemperature:I

    .line 151
    iget v5, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mHealth:I

    const-string v6, "health"

    .line 152
    invoke-virtual {p2, v6, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mHealth:I

    .line 156
    iget p2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mPlugType:I

    if-eqz p2, :cond_3

    move p2, v0

    goto :goto_0

    :cond_3
    move p2, v1

    :goto_0
    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    move v0, v1

    .line 159
    :goto_1
    sget-boolean v6, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v6, :cond_5

    const-string v6, "BatteryChangedReceiver"

    .line 160
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "level          "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " --> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryLevel:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "BatteryChangedReceiver"

    .line 161
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "status         "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " --> "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryStatus:I

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "BatteryChangedReceiver"

    .line 162
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "plugType       "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " --> "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mPlugType:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "BatteryChangedReceiver"

    .line 163
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "plugged        "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " --> "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "BatteryChangedReceiver"

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "temperature    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " --> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryTemperature:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "BatteryChangedReceiver"

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "health         "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " --> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mHealth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_5
    iget p2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryLevel:I

    invoke-direct {p0, p2, v1}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->checkBcl(IZ)Z

    move-result p2

    if-nez p2, :cond_7

    .line 170
    invoke-static {}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->isCheckEnabled()Z

    move-result p2

    if-eqz p2, :cond_6

    iget p2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryLevel:I

    sget v0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->THRESHOLD_LOW_BATTERY_LEVEL:I

    if-gt p2, v0, :cond_6

    sget p2, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->THRESHOLD_LOW_BATTERY_LEVEL:I

    if-le p1, p2, :cond_6

    iget p2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryLevel:I

    if-eq p1, p2, :cond_6

    .line 173
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->notifyLowBattery()V

    .line 175
    :cond_6
    iget p1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryLevel:I

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->notifyBatteryLevel(I)V

    :cond_7
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 115
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "onResume"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 116
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mIsAlreadyBcl:Z

    .line 117
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mIsActive:Z

    return-void
.end method
