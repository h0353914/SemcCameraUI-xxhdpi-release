.class Lcom/sonyericsson/android/camera/FeatureListActivity$ScreenOffReceiver;
.super Lcom/sonyericsson/android/camera/ScreenOffReceiverBase;
.source "FeatureListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/FeatureListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenOffReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/FeatureListActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/FeatureListActivity;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/sonyericsson/android/camera/FeatureListActivity$ScreenOffReceiver;->this$0:Lcom/sonyericsson/android/camera/FeatureListActivity;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/ScreenOffReceiverBase;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/FeatureListActivity;Lcom/sonyericsson/android/camera/FeatureListActivity$ScreenOffReceiver-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/FeatureListActivity$ScreenOffReceiver;-><init>(Lcom/sonyericsson/android/camera/FeatureListActivity;)V

    return-void
.end method


# virtual methods
.method public onScreenOff()V
    .locals 2

    .line 130
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 131
    const-string v0, "invoked"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/FeatureListActivity$ScreenOffReceiver;->this$0:Lcom/sonyericsson/android/camera/FeatureListActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/FeatureListActivity;->setShowWhenLocked(Z)V

    .line 135
    iget-object v0, p0, Lcom/sonyericsson/android/camera/FeatureListActivity$ScreenOffReceiver;->this$0:Lcom/sonyericsson/android/camera/FeatureListActivity;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/FeatureListActivity;->setTurnScreenOn(Z)V

    .line 137
    iget-object v0, p0, Lcom/sonyericsson/android/camera/FeatureListActivity$ScreenOffReceiver;->this$0:Lcom/sonyericsson/android/camera/FeatureListActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/FeatureListActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/android/camera/FeatureListActivity$ScreenOffReceiver;->this$0:Lcom/sonyericsson/android/camera/FeatureListActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/FeatureListActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/FeatureListActivity$ScreenOffReceiver;->this$0:Lcom/sonyericsson/android/camera/FeatureListActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/FeatureListActivity;->-$$Nest$fgetmIsFinishWhenScreenOff(Lcom/sonyericsson/android/camera/FeatureListActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    iget-object p0, p0, Lcom/sonyericsson/android/camera/FeatureListActivity$ScreenOffReceiver;->this$0:Lcom/sonyericsson/android/camera/FeatureListActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/FeatureListActivity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method
