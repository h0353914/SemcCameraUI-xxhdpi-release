.class Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffTask;
.super Ljava/util/TimerTask;
.source "AutoPowerOffTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/AutoPowerOffTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoPowerOffTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/AutoPowerOffTimer;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/AutoPowerOffTimer;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffTask;->this$0:Lcom/sonyericsson/android/camera/AutoPowerOffTimer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/AutoPowerOffTimer;Lcom/sonyericsson/android/camera/AutoPowerOffTimer$1;)V
    .locals 0

    .line 154
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffTask;-><init>(Lcom/sonyericsson/android/camera/AutoPowerOffTimer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffTask;->this$0:Lcom/sonyericsson/android/camera/AutoPowerOffTimer;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/AutoPowerOffTimer;->access$200(Lcom/sonyericsson/android/camera/AutoPowerOffTimer;)Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/AutoPowerOffTimer$AutoPowerOffHandler;->sendAutoPowerOffMessage()V

    return-void
.end method
