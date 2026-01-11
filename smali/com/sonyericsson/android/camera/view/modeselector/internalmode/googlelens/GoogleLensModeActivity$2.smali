.class Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$2;
.super Lcom/sonyericsson/android/camera/ScreenOffReceiverBase;
.source "GoogleLensModeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$2;->this$0:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/ScreenOffReceiverBase;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenOff()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$2;->this$0:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;->setShowWhenLocked(Z)V

    .line 56
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$2;->this$0:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;->setTurnScreenOn(Z)V

    return-void
.end method
