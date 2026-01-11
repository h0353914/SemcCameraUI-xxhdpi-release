.class Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffWarningTask;
.super Ljava/util/TimerTask;
.source "AutoPowerOffTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/AutoPowerOffTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoPowerOffWarningTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/AutoPowerOffTimer;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/AutoPowerOffTimer;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffWarningTask;->this$0:Lcom/sonyericsson/android/camera/AutoPowerOffTimer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/AutoPowerOffTimer;Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffWarningTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffWarningTask;-><init>(Lcom/sonyericsson/android/camera/AutoPowerOffTimer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffWarningTask;->this$0:Lcom/sonyericsson/android/camera/AutoPowerOffTimer;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->-$$Nest$fgetmHandler(Lcom/sonyericsson/android/camera/AutoPowerOffTimer;)Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffHandler;->sendAutoPowerOffWarningMessage()V

    return-void
.end method
