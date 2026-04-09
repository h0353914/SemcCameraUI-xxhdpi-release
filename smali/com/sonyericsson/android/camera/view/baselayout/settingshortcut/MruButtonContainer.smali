.class public Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;
.super Landroid/widget/FrameLayout;
.source "MruButtonContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruSmallModeButton;,
        Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;
    }
.end annotation


# instance fields
.field private mIsAvailable:Z

.field private mModeChangeListener:Lcom/sonyericsson/android/camera/view/modeselector/Mode$OnStateChangeListener;

.field private mModeListChangeListener:Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader$OnModeListChangeListener;

.field private mModeLoader:Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;

.field private mModeSelectListener:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnModeSelectListener;

.field private mMruButton:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;

.field private mRequestVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 64
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance p1, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$1;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$1;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mModeChangeListener:Lcom/sonyericsson/android/camera/view/modeselector/Mode$OnStateChangeListener;

    .line 49
    new-instance p1, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$2;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$2;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mModeListChangeListener:Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader$OnModeListChangeListener;

    .line 65
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance p1, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$1;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$1;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mModeChangeListener:Lcom/sonyericsson/android/camera/view/modeselector/Mode$OnStateChangeListener;

    .line 49
    new-instance p1, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$2;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$2;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mModeListChangeListener:Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader$OnModeListChangeListener;

    .line 70
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    new-instance p1, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$1;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$1;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mModeChangeListener:Lcom/sonyericsson/android/camera/view/modeselector/Mode$OnStateChangeListener;

    .line 49
    new-instance p1, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$2;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$2;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mModeListChangeListener:Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader$OnModeListChangeListener;

    .line 76
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;)Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mMruButton:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;)Lcom/sonyericsson/android/camera/view/modeselector/Mode$OnStateChangeListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mModeChangeListener:Lcom/sonyericsson/android/camera/view/modeselector/Mode$OnStateChangeListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;)Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnModeSelectListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mModeSelectListener:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnModeSelectListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;)Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mModeLoader:Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;

    return-object p0
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mIsAvailable:Z

    .line 88
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mRequestVisible:Z

    .line 89
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->update()V

    return-void
.end method


# virtual methods
.method public hasInternalMode()Z
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mMruButton:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;->getMode()Lcom/sonyericsson/android/camera/view/modeselector/Mode;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 138
    :cond_0
    const-class v0, Lcom/sonyericsson/android/camera/view/modeselector/InternalMode;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mMruButton:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;->getMode()Lcom/sonyericsson/android/camera/view/modeselector/Mode;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public hide()V
    .locals 1

    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mRequestVisible:Z

    .line 104
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->update()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 81
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 83
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruSmallModeButton;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruSmallModeButton;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mMruButton:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;

    return-void
.end method

.method public setAvailability(Z)V
    .locals 0

    .line 108
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mIsAvailable:Z

    .line 109
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->update()V

    return-void
.end method

.method public setMode(Lcom/sonyericsson/android/camera/view/modeselector/Mode;)V
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mMruButton:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;->setMode(Lcom/sonyericsson/android/camera/view/modeselector/Mode;)V

    return-void
.end method

.method public setOnModeSelectListener(Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnModeSelectListener;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mModeSelectListener:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnModeSelectListener;

    return-void
.end method

.method public setup(Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mModeLoader:Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;

    .line 94
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mModeLoader:Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mModeListChangeListener:Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader$OnModeListChangeListener;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->addModeChangeListener(Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader$OnModeListChangeListener;)V

    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mRequestVisible:Z

    .line 99
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->update()V

    return-void
.end method

.method public update()V
    .locals 3

    .line 113
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mIsAvailable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mRequestVisible:Z

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mMruButton:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mMruButton:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;->setClickable(Z)V

    .line 117
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->setVisibility(I)V

    goto :goto_0

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mMruButton:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;

    if-eqz v0, :cond_2

    .line 120
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mMruButton:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;->setClickable(Z)V

    :cond_2
    const/16 v0, 0x8

    .line 122
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->setVisibility(I)V

    :goto_0
    return-void
.end method
