.class Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffHandler;
.super Landroid/os/Handler;
.source "AutoPowerOffTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/AutoPowerOffTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoPowerOffHandler"
.end annotation


# static fields
.field private static final MSG_AUTO_POWER_OFF:I = 0x2

.field private static final MSG_AUTO_POWER_OFF_WARNING:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/AutoPowerOffTimer;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/AutoPowerOffTimer;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffHandler;->this$0:Lcom/sonyericsson/android/camera/AutoPowerOffTimer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/AutoPowerOffTimer;Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffHandler;-><init>(Lcom/sonyericsson/android/camera/AutoPowerOffTimer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 184
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffHandler;->this$0:Lcom/sonyericsson/android/camera/AutoPowerOffTimer;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->-$$Nest$mstopAutoPowerOffTimer(Lcom/sonyericsson/android/camera/AutoPowerOffTimer;)V

    .line 197
    iget-object p1, p0, Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffHandler;->this$0:Lcom/sonyericsson/android/camera/AutoPowerOffTimer;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->-$$Nest$fgetmListener(Lcom/sonyericsson/android/camera/AutoPowerOffTimer;)Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffListener;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffHandler;->this$0:Lcom/sonyericsson/android/camera/AutoPowerOffTimer;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->-$$Nest$fgetmUserdata(Lcom/sonyericsson/android/camera/AutoPowerOffTimer;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffListener;->onAutoPowerOff(Ljava/lang/Object;)V

    goto :goto_0

    .line 187
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffHandler;->this$0:Lcom/sonyericsson/android/camera/AutoPowerOffTimer;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->-$$Nest$mstopAutoPowerOffTimer(Lcom/sonyericsson/android/camera/AutoPowerOffTimer;)V

    .line 189
    iget-object p1, p0, Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffHandler;->this$0:Lcom/sonyericsson/android/camera/AutoPowerOffTimer;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->-$$Nest$fgetmAutoPowerOffWarningTimeOutOffset(Lcom/sonyericsson/android/camera/AutoPowerOffTimer;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->-$$Nest$mstartAutoPowerOff(Lcom/sonyericsson/android/camera/AutoPowerOffTimer;I)Z

    .line 190
    iget-object p0, p0, Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffHandler;->this$0:Lcom/sonyericsson/android/camera/AutoPowerOffTimer;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->-$$Nest$fgetmListener(Lcom/sonyericsson/android/camera/AutoPowerOffTimer;)Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffListener;->onAutoPowerOffWarning()V

    :goto_0
    return-void
.end method

.method public removeAllMessages()V
    .locals 1

    const/4 v0, 0x1

    .line 178
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffHandler;->removeMessages(I)V

    const/4 v0, 0x2

    .line 179
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffHandler;->removeMessages(I)V

    return-void
.end method

.method public sendAutoPowerOffMessage()V
    .locals 1

    const/4 v0, 0x2

    .line 174
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public sendAutoPowerOffWarningMessage()V
    .locals 1

    const/4 v0, 0x1

    .line 170
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffHandler;->sendEmptyMessage(I)Z

    return-void
.end method
