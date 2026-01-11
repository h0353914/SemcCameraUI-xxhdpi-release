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


# static fields
.field private static final GRAY_OUT_ALPHA:F = 0.4f

.field private static final VISIBLE_ALPHA:F = 1.0f


# instance fields
.field private mIsAvailable:Z

.field private mIsGray:Z

.field private mIsTouchable:Z

.field private mModeChangeListener:Lcom/sonyericsson/android/camera/view/modeselector/Mode$OnStateChangeListener;

.field private mModeListChangeListener:Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader$OnModeListChangeListener;

.field private mModeLoader:Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;

.field private mModeSelectListener:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnModeSelectListener;

.field private mMruButton:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;

.field private mMruSettings:Lcom/sonyericsson/android/camera/setting/MruSettings;

.field private mRequestVisible:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsGray(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mIsGray:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmModeChangeListener(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;)Lcom/sonyericsson/android/camera/view/modeselector/Mode$OnStateChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mModeChangeListener:Lcom/sonyericsson/android/camera/view/modeselector/Mode$OnStateChangeListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmModeLoader(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;)Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mModeLoader:Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmModeSelectListener(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;)Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnModeSelectListener;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mModeSelectListener:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnModeSelectListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMruButton(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;)Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mMruButton:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMruSettings(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;)Lcom/sonyericsson/android/camera/setting/MruSettings;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mMruSettings:Lcom/sonyericsson/android/camera/setting/MruSettings;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance p1, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$1;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$1;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mModeChangeListener:Lcom/sonyericsson/android/camera/view/modeselector/Mode$OnStateChangeListener;

    .line 55
    new-instance p1, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$2;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$2;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mModeListChangeListener:Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader$OnModeListChangeListener;

    .line 71
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance p1, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$1;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$1;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mModeChangeListener:Lcom/sonyericsson/android/camera/view/modeselector/Mode$OnStateChangeListener;

    .line 55
    new-instance p1, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$2;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$2;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mModeListChangeListener:Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader$OnModeListChangeListener;

    .line 76
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    new-instance p1, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$1;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$1;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mModeChangeListener:Lcom/sonyericsson/android/camera/view/modeselector/Mode$OnStateChangeListener;

    .line 55
    new-instance p1, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$2;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$2;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mModeListChangeListener:Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader$OnModeListChangeListener;

    .line 82
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mIsAvailable:Z

    .line 94
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mRequestVisible:Z

    .line 95
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mIsGray:Z

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mIsTouchable:Z

    .line 97
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->update()V

    return-void
.end method


# virtual methods
.method public grayOut()V
    .locals 1

    const/4 v0, 0x1

    .line 126
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mIsGray:Z

    .line 127
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->update()V

    return-void
.end method

.method public hasInternalMode()Z
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mMruButton:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;->getMode()Lcom/sonyericsson/android/camera/view/modeselector/Mode;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 167
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

    .line 122
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mRequestVisible:Z

    .line 123
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->update()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 87
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 89
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruSmallModeButton;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruSmallModeButton;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruSmallModeButton-IA;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mMruButton:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;

    return-void
.end method

.method public release()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mModeLoader:Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;

    if-eqz v0, :cond_0

    .line 107
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mModeListChangeListener:Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader$OnModeListChangeListener;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->removeModeChangeListener(Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader$OnModeListChangeListener;)V

    :cond_0
    return-void
.end method

.method public setAvailability(Z)V
    .locals 0

    .line 131
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mIsAvailable:Z

    .line 132
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->update()V

    return-void
.end method

.method public setMode(Lcom/sonyericsson/android/camera/view/modeselector/Mode;)V
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mMruButton:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;->setMode(Lcom/sonyericsson/android/camera/view/modeselector/Mode;)V

    return-void
.end method

.method public setMruSettings(Lcom/sonyericsson/android/camera/setting/MruSettings;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mMruSettings:Lcom/sonyericsson/android/camera/setting/MruSettings;

    return-void
.end method

.method public setOnModeSelectListener(Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnModeSelectListener;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mModeSelectListener:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnModeSelectListener;

    return-void
.end method

.method public setTouchable(Z)V
    .locals 0

    .line 136
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mIsTouchable:Z

    .line 137
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->update()V

    return-void
.end method

.method public setup(Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mModeLoader:Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;

    .line 102
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mModeListChangeListener:Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader$OnModeListChangeListener;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->addModeChangeListener(Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader$OnModeListChangeListener;)V

    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x1

    .line 116
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mRequestVisible:Z

    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mIsGray:Z

    .line 118
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->update()V

    return-void
.end method

.method public update()V
    .locals 3

    .line 141
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mIsAvailable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mRequestVisible:Z

    if-eqz v0, :cond_3

    .line 142
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mMruButton:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;

    if-eqz v0, :cond_2

    .line 143
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mIsTouchable:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mIsGray:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;->setClickable(Z)V

    .line 144
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mMruButton:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;

    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mIsGray:Z

    if-eqz v2, :cond_1

    const v2, 0x3ecccccd    # 0.4f

    goto :goto_1

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;->setAlpha(F)V

    .line 146
    :cond_2
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->setVisibility(I)V

    goto :goto_2

    .line 148
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->mMruButton:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;

    if-eqz v0, :cond_4

    .line 149
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer$MruButton;->setClickable(Z)V

    :cond_4
    const/16 v0, 0x8

    .line 151
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->setVisibility(I)V

    :goto_2
    return-void
.end method
