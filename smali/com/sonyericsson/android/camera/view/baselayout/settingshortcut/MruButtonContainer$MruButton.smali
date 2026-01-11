.class Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;
.super Ljava/lang/Object;
.source "MruButtonContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MruButton"
.end annotation


# instance fields
.field private mButton:Landroid/widget/ImageView;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field protected mMode:Lcom/sonyericsson/android/camera/view/modeselector/Mode;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;)V
    .locals 1

    .line 186
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton$1;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;->mClickListener:Landroid/view/View$OnClickListener;

    const v0, 0x7f090125

    .line 187
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;->mButton:Landroid/widget/ImageView;

    .line 188
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method getMode()Lcom/sonyericsson/android/camera/view/modeselector/Mode;
    .locals 0

    .line 212
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;->mMode:Lcom/sonyericsson/android/camera/view/modeselector/Mode;

    return-object p0
.end method

.method setAlpha(F)V
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;->mButton:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method setClickable(Z)V
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;->mButton:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    return-void
.end method

.method setMode(Lcom/sonyericsson/android/camera/view/modeselector/Mode;)V
    .locals 1

    .line 200
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;->mMode:Lcom/sonyericsson/android/camera/view/modeselector/Mode;

    if-nez p1, :cond_0

    .line 203
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->setAvailability(Z)V

    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;->mButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/modeselector/Mode;->loadSmallIcon(Landroid/widget/ImageView;)V

    .line 208
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/modeselector/Mode;->isAvailable()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->setAvailability(Z)V

    return-void
.end method
