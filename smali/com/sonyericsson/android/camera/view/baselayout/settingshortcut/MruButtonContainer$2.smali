.class Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$2;
.super Ljava/lang/Object;
.source "MruButtonContainer.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader$OnModeListChangeListener;


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

    .line 56
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$2;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onModeListChanged(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/modeselector/Mode;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;",
            ">;)V"
        }
    .end annotation

    .line 60
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/view/modeselector/Mode;

    .line 61
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$2;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->-$$Nest$fgetmModeChangeListener(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;)Lcom/sonyericsson/android/camera/view/modeselector/Mode$OnStateChangeListener;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sonyericsson/android/camera/view/modeselector/Mode;->setOnStateChangeListener(Lcom/sonyericsson/android/camera/view/modeselector/Mode$OnStateChangeListener;)V

    goto :goto_0

    .line 65
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$2;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->-$$Nest$fgetmMruButton(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;)Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;->setMode(Lcom/sonyericsson/android/camera/view/modeselector/Mode;)V

    return-void
.end method
