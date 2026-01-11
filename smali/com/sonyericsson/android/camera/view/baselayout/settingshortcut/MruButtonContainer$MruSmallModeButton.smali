.class Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruSmallModeButton;
.super Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;
.source "MruButtonContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MruSmallModeButton"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruSmallModeButton;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruSmallModeButton-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruSmallModeButton;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;)V

    return-void
.end method


# virtual methods
.method setMode(Lcom/sonyericsson/android/camera/view/modeselector/Mode;)V
    .locals 1

    if-nez p1, :cond_1

    .line 226
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruSmallModeButton;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->-$$Nest$fgetmMruSettings(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;)Lcom/sonyericsson/android/camera/setting/MruSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/setting/MruSettings;->getMode()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 230
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruSmallModeButton;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GOOGLE_LENS"

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;->generateId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruSmallModeButton;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->-$$Nest$fgetmModeLoader(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;)Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->findById(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/modeselector/Mode;

    move-result-object p1

    .line 237
    :cond_1
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;->setMode(Lcom/sonyericsson/android/camera/view/modeselector/Mode;)V

    if-eqz p1, :cond_2

    .line 240
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruSmallModeButton;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->-$$Nest$fgetmMruSettings(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;)Lcom/sonyericsson/android/camera/setting/MruSettings;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/modeselector/Mode;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/setting/MruSettings;->setMode(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
