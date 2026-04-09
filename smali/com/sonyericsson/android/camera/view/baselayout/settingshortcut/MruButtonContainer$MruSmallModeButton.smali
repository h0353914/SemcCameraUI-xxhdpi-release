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
.field private mPreferenceAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruSmallModeButton;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$1;)V
    .locals 0

    .line 188
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruSmallModeButton;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;)V

    return-void
.end method


# virtual methods
.method setMode(Lcom/sonyericsson/android/camera/view/modeselector/Mode;)V
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruSmallModeButton;->mPreferenceAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruSmallModeButton;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mode-shortcut"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruSmallModeButton;->mPreferenceAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    :cond_0
    if-nez p1, :cond_2

    .line 199
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruSmallModeButton;->mPreferenceAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const-string v0, "MODE_SHORTCUT_ID"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 204
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruSmallModeButton;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GOOGLE_LENS"

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;->generateId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruSmallModeButton;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->access$400(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;)Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->findById(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/modeselector/Mode;

    move-result-object p1

    .line 211
    :cond_2
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;->setMode(Lcom/sonyericsson/android/camera/view/modeselector/Mode;)V

    if-eqz p1, :cond_3

    .line 214
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruSmallModeButton;->mPreferenceAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const-string v1, "MODE_SHORTCUT_ID"

    .line 215
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/modeselector/Mode;->getId()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 214
    invoke-virtual {v0, v1, p1, v2}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->writeString(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 216
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruSmallModeButton;->mPreferenceAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->apply()V

    :cond_3
    return-void
.end method
