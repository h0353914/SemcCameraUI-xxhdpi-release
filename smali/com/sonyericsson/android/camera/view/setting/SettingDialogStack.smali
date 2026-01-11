.class public Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;
.super Ljava/lang/Object;
.source "SettingDialogStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;,
        Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$ExclusiveViewListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingDialogStack"


# instance fields
.field private final mBackground:Landroid/view/ViewGroup;

.field private mBottomContainer:Landroid/widget/LinearLayout;

.field private final mContainer:Landroid/widget/FrameLayout;

.field private final mContext:Landroid/content/Context;

.field private final mDialogTags:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogInterface;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mExclusiveViewListener:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$ExclusiveViewListener;

.field private mIsCanceledOnTouchOutside:Z

.field private mModeSelectorDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

.field private mMonochromeDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

.field private mOrientation:I

.field private final mScreenRect:Landroid/graphics/Rect;

.field private final mSettingDialogListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogListener;",
            ">;"
        }
    .end annotation
.end field

.field private mShortcutDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBackground(Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mBackground:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmExclusiveViewListener(Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;)Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$ExclusiveViewListener;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mExclusiveViewListener:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$ExclusiveViewListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsCanceledOnTouchOutside(Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mIsCanceledOnTouchOutside:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetCurrentDialog(Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;)Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogInterface;
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->getCurrentDialog()Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogInterface;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/graphics/Rect;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 490
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mIsCanceledOnTouchOutside:Z

    .line 67
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContext:Landroid/content/Context;

    .line 68
    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mScreenRect:Landroid/graphics/Rect;

    .line 70
    new-instance p3, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;

    invoke-direct {p3, p0, p1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;-><init>(Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;Landroid/content/Context;)V

    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mBackground:Landroid/view/ViewGroup;

    .line 71
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 72
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const/4 v0, -0x1

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 73
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 p2, 0x0

    .line 74
    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 75
    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 77
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContainer:Landroid/widget/FrameLayout;

    .line 78
    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 80
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->adjustContainer(Z)V

    const/4 p1, 0x0

    .line 82
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    .line 84
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mMonochromeDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    .line 86
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mSettingDialogListenerList:Ljava/util/List;

    .line 88
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    return-void
.end method

.method private closeModeSelectDialog(Z)Z
    .locals 2

    .line 441
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mModeSelectorDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    if-eqz v0, :cond_2

    .line 442
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "mControlDialog remove:"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 446
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mModeSelectorDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->close()V

    goto :goto_0

    .line 448
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mModeSelectorDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->closeImmediate()V

    :goto_0
    const/4 p1, 0x0

    .line 450
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mModeSelectorDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private closeShortcutDialog(Z)Z
    .locals 2

    .line 423
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    if-eqz v0, :cond_2

    .line 424
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "mShortcutDialog remove:"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 428
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->close()V

    goto :goto_0

    .line 430
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->closeImmediate()V

    :goto_0
    const/4 p1, 0x0

    .line 433
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private closemMonochromeDialog(Z)Z
    .locals 2

    .line 458
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mMonochromeDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    if-eqz v0, :cond_2

    .line 459
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SettingDialogStack"

    const-string v1, "mMonochromeDialog remove:"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 463
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mMonochromeDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->close()V

    goto :goto_0

    .line 465
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mMonochromeDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->closeImmediate()V

    :goto_0
    const/4 p1, 0x0

    .line 467
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mMonochromeDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    .line 469
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->resetEnabledOfDialogs()V

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private getCurrentDialog()Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogInterface;
    .locals 3

    .line 401
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "getCurrentDialog"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 403
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->getDialogList()[Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogInterface;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private getDialogList()[Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogInterface;
    .locals 3

    const/4 v0, 0x3

    .line 482
    new-array v0, v0, [Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogInterface;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mMonochromeDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mModeSelectorDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    aput-object p0, v0, v1

    return-object v0
.end method

.method private isNewFeatureBarNeeded(Lcom/sonyericsson/android/camera/setting/MessageSettings;)Z
    .locals 2

    .line 580
    invoke-static {}, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListBuilder;->getNewFeatureList()Ljava/util/ArrayList;

    move-result-object p0

    .line 581
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ltz v0, :cond_2

    .line 582
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    .line 583
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->getMessageTypes()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 584
    invoke-interface {p1, v1}, Lcom/sonyericsson/android/camera/setting/MessageSettings;->isNeverShow(Lcom/sonyericsson/android/camera/setting/MessageType;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private notifyCloseSettingDialog(Ljava/lang/Object;)V
    .locals 1

    .line 126
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mSettingDialogListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogListener;

    .line 127
    invoke-interface {v0, p1}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogListener;->onCloseSettingDialog(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyOpenSettingDialog(Ljava/lang/Object;)V
    .locals 1

    .line 115
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mSettingDialogListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogListener;

    .line 116
    invoke-interface {v0, p1}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogListener;->onOpenSettingDialog(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private resetEnabledOfDialogs()V
    .locals 6

    .line 412
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "resetEnabledOfDialogs"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 413
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->getCurrentDialog()Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogInterface;

    move-result-object v0

    .line 415
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->getDialogList()[Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogInterface;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p0, v3

    if-eqz v4, :cond_2

    if-ne v4, v0, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    move v5, v2

    .line 417
    :goto_1
    invoke-interface {v4, v5}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogInterface;->setEnabled(Z)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public addBottomView()V
    .locals 4

    .line 167
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->removeBottomView()V

    .line 169
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mBottomContainer:Landroid/widget/LinearLayout;

    .line 170
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mBackground:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 171
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mBottomContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 173
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0802a4

    .line 174
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 175
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mBottomContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 176
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 177
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 180
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 181
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mBottomContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 182
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f06006c

    .line 183
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 182
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 184
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 185
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContext:Landroid/content/Context;

    .line 186
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getNavigationBarMargin(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 187
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 188
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mBottomContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContext:Landroid/content/Context;

    .line 189
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getNavigationBarMargin(Landroid/content/Context;)I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701b8

    .line 190
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    .line 188
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setPivotX(F)V

    .line 191
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mBottomContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setPivotY(F)V

    .line 192
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mBottomContainer:Landroid/widget/LinearLayout;

    const/high16 v0, -0x3d4c0000    # -90.0f

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setRotation(F)V

    return-void
.end method

.method public addDialogListener(Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogListener;)V
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mSettingDialogListenerList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public adjustContainer(Z)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 559
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->isTablet(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 560
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getNavigationBarMargin(Landroid/content/Context;)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 562
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 563
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 564
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0, v0, p1, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_1

    .line 566
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 567
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 568
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 570
    :goto_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x33

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 572
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mScreenRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 574
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mScreenRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 576
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public closeAllSettingDialogs()V
    .locals 1

    const/4 v0, 0x0

    .line 348
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closeAllSettingDialogs(Z)V

    return-void
.end method

.method public closeAllSettingDialogs(Z)V
    .locals 3

    .line 355
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mMonochromeDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    if-eqz v0, :cond_0

    .line 356
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 358
    :goto_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closemMonochromeDialog(Z)Z

    move-result v1

    .line 359
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    if-eqz v2, :cond_1

    .line 360
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 362
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closeShortcutDialog(Z)Z

    move-result v2

    or-int/2addr v1, v2

    .line 363
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mModeSelectorDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    if-eqz v2, :cond_2

    .line 364
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 366
    :cond_2
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closeModeSelectDialog(Z)Z

    move-result p1

    or-int/2addr p1, v1

    .line 367
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->resetEnabledOfDialogs()V

    .line 369
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_3

    const-string v1, "closeAllSettingDialogs"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3
    if-eqz p1, :cond_4

    .line 372
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->isDialogOpened()Z

    move-result p1

    if-nez p1, :cond_4

    .line 373
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->clearFocus()V

    .line 374
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->notifyCloseSettingDialog(Ljava/lang/Object;)V

    .line 375
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_4

    const-string p0, "closeAllSettingDialogs:NOTIFY CLOSE CALLBACK"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public closeCurrentDialog()Z
    .locals 3

    .line 302
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "closeCurrentDialogs."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mMonochromeDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    if-eqz v0, :cond_1

    .line 309
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    .line 311
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closemMonochromeDialog(Z)Z

    move-result v2

    if-nez v2, :cond_3

    .line 314
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    if-eqz v2, :cond_2

    .line 315
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 317
    :cond_2
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closeShortcutDialog(Z)Z

    move-result v2

    :cond_3
    if-nez v2, :cond_5

    .line 320
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mModeSelectorDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    if-eqz v2, :cond_4

    .line 321
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 323
    :cond_4
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closeModeSelectDialog(Z)Z

    move-result v2

    .line 325
    :cond_5
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->resetEnabledOfDialogs()V

    if-eqz v2, :cond_7

    .line 328
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->isDialogOpened()Z

    move-result v1

    if-nez v1, :cond_6

    .line 330
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->clearFocus()V

    .line 331
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->notifyCloseSettingDialog(Ljava/lang/Object;)V

    .line 332
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_7

    const-string p0, "closeCurrentDialogs:NOTIFY CLOSE CALLBACK"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_1

    .line 336
    :cond_6
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->notifyCloseSettingDialog(Ljava/lang/Object;)V

    .line 337
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_7

    const-string p0, "closeCurrentDialogs:NOTIFY CLOSE CALLBACK NOT ALL DIALOGS"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 342
    :cond_7
    :goto_1
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_8

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "closeCurrentDialogs: consumed: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_8
    return v2
.end method

.method public getBackground()Landroid/view/View;
    .locals 0

    .line 272
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mBackground:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getBackgroundHeight()I
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p0

    return p0
.end method

.method public getBackgroundWidth()I
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p0

    return p0
.end method

.method public isDialogOpened()Z
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mModeSelectorDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mMonochromeDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isModeSelectorOpened()Z
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mModeSelectorDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOpened(Ljava/lang/Object;)Z
    .locals 2

    .line 146
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isOpened:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 147
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 148
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public isShortcutDialogOpened()Z
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public openModeSelectorDialog(Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnModeSelectListener;Lcom/sonyericsson/android/camera/setting/MessageSettings;)Z
    .locals 5

    .line 204
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mModeSelectorDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 208
    :cond_0
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closeShortcutDialog(Z)Z

    .line 209
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closeModeSelectDialog(Z)Z

    .line 210
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closemMonochromeDialog(Z)Z

    .line 212
    iget v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mOrientation:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->adjustContainer(Z)V

    .line 214
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContext:Landroid/content/Context;

    .line 215
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->getBackgroundWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->getBackgroundHeight()I

    move-result v4

    .line 216
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->isNewFeatureBarNeeded(Lcom/sonyericsson/android/camera/setting/MessageSettings;)Z

    move-result p3

    .line 215
    invoke-static {v0, v2, v4, v1, p3}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory;->createModeSelector(Landroid/content/Context;IIZZ)Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    move-result-object p3

    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mModeSelectorDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    .line 217
    invoke-virtual {p3, p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->setSettingDialogStack(Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;)V

    .line 218
    iget-object p3, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mModeSelectorDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    iget v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mOrientation:I

    invoke-virtual {p3, v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->setSensorOrientation(I)V

    .line 219
    iget-object p3, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mModeSelectorDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    invoke-virtual {p3, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->setOnModeSelectListener(Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnModeSelectListener;)V

    .line 220
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mModeSelectorDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->setModeLoader(Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;)V

    .line 221
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mModeSelectorDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->open(Landroid/view/ViewGroup;)V

    .line 222
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mModeSelectorDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->resetEnabledOfDialogs()V

    .line 225
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestFocus()Z

    .line 227
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->notifyOpenSettingDialog(Ljava/lang/Object;)V

    return v3
.end method

.method public openMonochromeDialog(Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;I)Z
    .locals 6

    .line 233
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    const-string v1, "SettingDialogStack"

    if-eqz v0, :cond_0

    const-string v0, "openMonochromeDialog"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 235
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closemMonochromeDialog(Z)Z

    .line 239
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mModeSelectorDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 241
    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->getMonochromeGlobalVisibleItemRect(Z)Landroid/graphics/Rect;

    move-result-object p2

    if-nez p2, :cond_2

    return v0

    .line 247
    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v0, v0, p2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object p2, v2

    move v0, v3

    .line 250
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContainer:Landroid/widget/FrameLayout;

    .line 253
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContainer:Landroid/widget/FrameLayout;

    .line 254
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    .line 250
    invoke-static {v2, v0, v4, v5}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory;->createMonochromeDialog(Landroid/content/Context;ZII)Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mMonochromeDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    .line 255
    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->setSettingDialogStack(Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;)V

    .line 256
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mMonochromeDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->addPanel(Landroid/widget/ArrayAdapter;)V

    .line 257
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mMonochromeDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    iget v0, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->setTopMarginHint(I)V

    .line 258
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mMonochromeDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->setBottomMarginHint(I)V

    .line 259
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mMonochromeDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    iget p2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mOrientation:I

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->setSensorOrientation(I)V

    .line 260
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mMonochromeDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->open(Landroid/view/ViewGroup;)V

    .line 261
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mMonochromeDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->resetEnabledOfDialogs()V

    .line 264
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestFocus()Z

    .line 266
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->notifyOpenSettingDialog(Ljava/lang/Object;)V

    .line 267
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_3

    const-string p0, "openMonochromeDialog:NOTIFY OPEN CALLBACK"

    filled-new-array {v1, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3
    return v3
.end method

.method public openShortcutDialog(Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;Ljava/lang/Object;)Z
    .locals 2

    .line 276
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "openShortcutDialog"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 277
    :cond_0
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->isOpened(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    .line 282
    :cond_1
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closeShortcutDialog(Z)Z

    .line 283
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closeModeSelectDialog(Z)Z

    .line 284
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closemMonochromeDialog(Z)Z

    .line 286
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    .line 287
    iget v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mOrientation:I

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->setSensorOrientation(I)V

    .line 288
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->open(Landroid/view/ViewGroup;)V

    .line 289
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mShortcutDialog put:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 292
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->resetEnabledOfDialogs()V

    .line 293
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestFocus()Z

    .line 295
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->notifyOpenSettingDialog(Ljava/lang/Object;)V

    .line 296
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_3

    const-string p0, "openShortcutDialog OPEN CALLBACK"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public removeBottomView()V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mBottomContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 197
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mBackground:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public removeDialogListener(Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogListener;)V
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mSettingDialogListenerList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 0

    .line 493
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mIsCanceledOnTouchOutside:Z

    return-void
.end method

.method public setExclusiveViewListener(Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$ExclusiveViewListener;)V
    .locals 0

    .line 553
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mExclusiveViewListener:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$ExclusiveViewListener;

    return-void
.end method

.method public setUiOrientation(I)V
    .locals 5

    .line 382
    iput p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mOrientation:I

    .line 384
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->getDialogList()[Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogInterface;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    if-eqz v3, :cond_0

    .line 385
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mMonochromeDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    if-eq v3, v4, :cond_0

    .line 386
    iget v4, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mOrientation:I

    invoke-interface {v3, v4}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogInterface;->setSensorOrientation(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 390
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mMonochromeDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    if-eqz p1, :cond_3

    .line 391
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mModeSelectorDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    if-eqz p1, :cond_2

    .line 392
    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->getMonochromeGlobalVisibleItemRect(Z)Landroid/graphics/Rect;

    move-result-object p1

    .line 393
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mMonochromeDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->setTopMarginHint(I)V

    .line 394
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mMonochromeDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->setBottomMarginHint(I)V

    .line 396
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mMonochromeDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    iget p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mOrientation:I

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->setSensorOrientation(I)V

    :cond_3
    return-void
.end method
