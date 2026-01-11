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
.method static bridge synthetic -$$Nest$fgetmListener(Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;)Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mListener:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 53
    const-string v0, "msm8996"

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

    if-nez v0, :cond_1

    const-string v0, "lito"

    sget-object v3, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 54
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "holi"

    sget-object v3, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    sput v2, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->THRESHOLD_BATTERY_LEVEL:I

    .line 60
    sput v1, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->THRESHOLD_LOW_BATTERY_LEVEL:I

    .line 61
    sput-boolean v2, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->BATTERY_CHECK_ENABLED:Z

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x5

    .line 55
    sput v0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->THRESHOLD_BATTERY_LEVEL:I

    .line 56
    sput v1, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->THRESHOLD_LOW_BATTERY_LEVEL:I

    .line 57
    sput-boolean v2, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->BATTERY_CHECK_ENABLED:Z

    :goto_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;)V
    .locals 3

    .line 86
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mIsAlreadyBcl:Z

    const/4 v1, 0x1

    .line 70
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mIsActive:Z

    const/16 v2, 0x64

    .line 71
    iput v2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryLevel:I

    .line 72
    iput v1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryStatus:I

    .line 73
    iput v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mPlugType:I

    .line 74
    iput v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryTemperature:I

    .line 75
    iput v1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mHealth:I

    .line 87
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mContext:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mListener:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;

    .line 89
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private checkBcl(IZ)Z
    .locals 2

    .line 201
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mIsAlreadyBcl:Z

    if-nez v0, :cond_1

    .line 202
    invoke-static {}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->isCheckEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->THRESHOLD_BATTERY_LEVEL:I

    if-gt p1, v0, :cond_1

    const/4 p1, 0x1

    .line 203
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mIsAlreadyBcl:Z

    .line 204
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mListener:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;

    invoke-interface {p0, p2}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;->onReachBatteryLimit(Z)V

    goto :goto_0

    .line 207
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

    .line 237
    sget-boolean v0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->BATTERY_CHECK_ENABLED:Z

    return v0
.end method

.method private notifyBatteryLevel(I)V
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mListener:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;

    invoke-interface {p0, p1}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;->onBatteryLevelChanged(I)V

    return-void
.end method

.method private notifyLowBattery()V
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mListener:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;

    invoke-interface {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver$BatteryChangedReceiverListener;->onReachLowBattery()V

    return-void
.end method


# virtual methods
.method public checkStartupStatus()V
    .locals 3

    const/4 v0, 0x0

    .line 183
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mIsAlreadyBcl:Z

    .line 184
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mContext:Landroid/content/Context;

    const-string v1, "batterymanager"

    .line 185
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    const/4 v1, 0x4

    .line 186
    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0

    .line 188
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkStartupStatus() : Battery Capacity = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 190
    :cond_0
    iput v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryLevel:I

    const/4 v1, 0x1

    .line 192
    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->checkBcl(IZ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 193
    invoke-static {}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->isCheckEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryLevel:I

    sget v1, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->THRESHOLD_LOW_BATTERY_LEVEL:I

    if-gt v0, v1, :cond_1

    .line 194
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->notifyLowBattery()V

    .line 196
    :cond_1
    iget v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryLevel:I

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->notifyBatteryLevel(I)V

    :cond_2
    return-void
.end method

.method public getBatteryLevel()I
    .locals 0

    .line 233
    iget p0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryLevel:I

    return p0
.end method

.method public isAlreadyBcl()Z
    .locals 0

    .line 221
    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mIsAlreadyBcl:Z

    return p0
.end method

.method public onCreate()V
    .locals 2

    .line 96
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "onCreate"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 97
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x3e7

    .line 98
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 99
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 106
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "onDestroy"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 123
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "onPause"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 124
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mIsAlreadyBcl:Z

    const/4 v0, 0x1

    .line 125
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mIsActive:Z

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .line 131
    iget-boolean p1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mIsActive:Z

    if-eqz p1, :cond_1

    .line 132
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_0

    .line 133
    const-string p0, "Activity is onPause, ignore bcl intent."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 138
    :cond_1
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Receive action: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 139
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 140
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 141
    iget p1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryLevel:I

    .line 142
    const-string v0, "level"

    const/16 v1, 0x64

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryLevel:I

    .line 143
    iget v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryStatus:I

    .line 144
    const-string/jumbo v1, "status"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryStatus:I

    .line 146
    iget v1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mPlugType:I

    .line 147
    const-string v3, "plugged"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mPlugType:I

    .line 148
    iget v3, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryTemperature:I

    .line 149
    const-string/jumbo v5, "temperature"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryTemperature:I

    .line 150
    iget v5, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mHealth:I

    .line 151
    const-string v6, "health"

    invoke-virtual {p2, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mHealth:I

    .line 155
    iget p2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mPlugType:I

    if-eqz p2, :cond_3

    move p2, v2

    goto :goto_0

    :cond_3
    move p2, v4

    :goto_0
    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    move v2, v4

    .line 158
    :goto_1
    sget-boolean v6, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v6, :cond_5

    .line 159
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "level          "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " --> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryLevel:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "BatteryChangedReceiver"

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "status         "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryStatus:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "plugType       "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mPlugType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "plugged        "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v8, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "temperature    "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryTemperature:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v8, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "health         "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mHealth:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v8, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_5
    iget p2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryLevel:I

    invoke-direct {p0, p2, v4}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->checkBcl(IZ)Z

    move-result p2

    if-nez p2, :cond_7

    .line 169
    invoke-static {}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->isCheckEnabled()Z

    move-result p2

    if-eqz p2, :cond_6

    iget p2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryLevel:I

    sget v0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->THRESHOLD_LOW_BATTERY_LEVEL:I

    if-gt p2, v0, :cond_6

    if-le p1, v0, :cond_6

    if-eq p1, p2, :cond_6

    .line 172
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->notifyLowBattery()V

    .line 174
    :cond_6
    iget p1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mBatteryLevel:I

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->notifyBatteryLevel(I)V

    :cond_7
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 114
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "onResume"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mIsAlreadyBcl:Z

    .line 116
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->mIsActive:Z

    return-void
.end method
