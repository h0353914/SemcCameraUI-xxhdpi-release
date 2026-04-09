.class Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ServiceConnectionSysmon;
.super Ljava/lang/Object;
.source "ThermalAlertReceiver.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceConnectionSysmon"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ServiceConnectionSysmon;->this$0:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 224
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ServiceConnectionSysmon;->this$0:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    invoke-static {p2}, Lcom/sonyericsson/psm/sysmonservice/ISysmonService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonyericsson/psm/sysmonservice/ISysmonService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->access$002(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;Lcom/sonyericsson/psm/sysmonservice/ISysmonService;)Lcom/sonyericsson/psm/sysmonservice/ISysmonService;

    .line 226
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ServiceConnectionSysmon;->this$0:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->access$000(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;)Lcom/sonyericsson/psm/sysmonservice/ISysmonService;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 228
    :try_start_0
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ServiceConnectionSysmon;->this$0:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->access$000(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;)Lcom/sonyericsson/psm/sysmonservice/ISysmonService;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/psm/sysmonservice/ISysmonService;->getThermalLevelForCamera()I

    move-result p1

    .line 229
    iget-object p2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ServiceConnectionSysmon;->this$0:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    const-string v0, "sysmon"

    invoke-static {p2, p1, v0}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->access$100(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;ILjava/lang/String;)V

    .line 244
    iget-object p2, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ServiceConnectionSysmon;->this$0:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    invoke-static {p2}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->access$000(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;)Lcom/sonyericsson/psm/sysmonservice/ISysmonService;

    move-result-object p2

    invoke-interface {p2}, Lcom/sonyericsson/psm/sysmonservice/ISysmonService;->getCameraLowTempBurnTimeoutSec()I

    move-result p2

    .line 245
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ServiceConnectionSysmon;->this$0:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    invoke-static {p0, p1, p2}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->access$200(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "sysmon ServiceConnection failed."

    .line 248
    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 255
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver$ServiceConnectionSysmon;->this$0:Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;->access$002(Lcom/sonyericsson/cameracommon/systemmonitor/ThermalAlertReceiver;Lcom/sonyericsson/psm/sysmonservice/ISysmonService;)Lcom/sonyericsson/psm/sysmonservice/ISysmonService;

    return-void
.end method
