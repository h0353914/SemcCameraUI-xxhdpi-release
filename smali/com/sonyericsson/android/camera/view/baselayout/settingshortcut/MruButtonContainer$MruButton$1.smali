.class Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton$1;
.super Ljava/lang/Object;
.source "MruButtonContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton$1;->this$1:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 177
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton$1;->this$1:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;->mMode:Lcom/sonyericsson/android/camera/view/modeselector/Mode;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton$1;->this$1:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->-$$Nest$fgetmIsGray(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton$1;->this$1:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->-$$Nest$fgetmModeSelectListener(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;)Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnModeSelectListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 181
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton$1;->this$1:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->-$$Nest$fgetmModeSelectListener(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;)Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnModeSelectListener;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton$1;->this$1:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;->mMode:Lcom/sonyericsson/android/camera/view/modeselector/Mode;

    const/4 v0, 0x1

    invoke-interface {p1, p0, v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnModeSelectListener;->onModeSelected(Lcom/sonyericsson/android/camera/view/modeselector/Mode;Z)V

    :cond_1
    :goto_0
    return-void
.end method
