.class Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$1;
.super Ljava/lang/Object;
.source "MruButtonContainer.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/modeselector/Mode$OnStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailabilityChanged(Lcom/sonyericsson/android/camera/view/modeselector/Mode;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->access$000(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;)Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;->getMode()Lcom/sonyericsson/android/camera/view/modeselector/Mode;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/modeselector/Mode;->compare(Lcom/sonyericsson/android/camera/view/modeselector/Mode;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 44
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->setAvailability(Z)V

    :cond_0
    return-void
.end method
