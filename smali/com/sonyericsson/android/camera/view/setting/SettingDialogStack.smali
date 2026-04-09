.class public Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;
.super Ljava/lang/Object;
.source "SettingDialogStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$ExclusiveViewListener;,
        Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingDialogStack"


# instance fields
.field private final mBackground:Landroid/view/ViewGroup;

.field private mBottomContainer:Landroid/widget/LinearLayout;

.field private mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

.field private final mContainer:Landroid/widget/FrameLayout;

.field private final mContext:Landroid/content/Context;

.field private mContextualMenu:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

.field private mContextualMenu2ndLayer:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

.field private mContextualMenu2ndLayerAdapter:Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;

.field private mContextualMenuListener:Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogListener;

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
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/graphics/Rect;)V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContextualMenuListener:Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogListener;

    const/4 v1, 0x1

    .line 737
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mIsCanceledOnTouchOutside:Z

    .line 74
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContext:Landroid/content/Context;

    .line 75
    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mScreenRect:Landroid/graphics/Rect;

    .line 77
    new-instance p1, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;

    iget-object p3, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, p3}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$Background;-><init>(Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mBackground:Landroid/view/ViewGroup;

    .line 78
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mBackground:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 79
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mBackground:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 p2, -0x1

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 80
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mBackground:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 81
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mBackground:Landroid/view/ViewGroup;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 82
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mBackground:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 84
    new-instance p1, Landroid/widget/FrameLayout;

    iget-object p3, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContext:Landroid/content/Context;

    invoke-direct {p1, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContainer:Landroid/widget/FrameLayout;

    .line 85
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mBackground:Landroid/view/ViewGroup;

    iget-object p3, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 87
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->adjustContainer(Z)V

    .line 89
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    .line 91
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContextualMenu:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    .line 92
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContextualMenu2ndLayer:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    .line 94
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mMonochromeDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    .line 96
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mSettingDialogListenerList:Ljava/util/List;

    .line 98
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;)Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContextualMenu2ndLayer:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;)Ljava/util/HashMap;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;)Landroid/widget/FrameLayout;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;)Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContextualMenu:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mOrientation:I

    return p0
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;)Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogInterface;
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->getCurrentDialog()Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogInterface;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;)Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$ExclusiveViewListener;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mExclusiveViewListener:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$ExclusiveViewListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;)Landroid/view/ViewGroup;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mBackground:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$800(Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mIsCanceledOnTouchOutside:Z

    return p0
.end method

.method private closeMenuDialog(Z)Z
    .locals 2

    .line 631
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContextualMenu:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    if-eqz v0, :cond_2

    .line 632
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContextualMenu:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "mMenuDialog remove:"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 636
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContextualMenu:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->close()V

    goto :goto_0

    .line 638
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContextualMenu:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->closeImmediate()V

    :goto_0
    const/4 p1, 0x0

    .line 640
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContextualMenu:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    .line 642
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SETTING_MENU:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->notifyCloseContextualMenu(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private closeModeSelectDialog(Z)Z
    .locals 2

    .line 668
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mModeSelectorDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    if-eqz v0, :cond_2

    .line 669
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mModeSelectorDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "mControlDialog remove:"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 673
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mModeSelectorDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->close()V

    goto :goto_0

    .line 675
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mModeSelectorDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->closeImmediate()V

    :goto_0
    const/4 p1, 0x0

    .line 677
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mModeSelectorDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private closeShortcutDialog(Z)Z
    .locals 2

    .line 650
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    if-eqz v0, :cond_2

    .line 651
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "mShortcutDialog remove:"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 655
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->close()V

    goto :goto_0

    .line 657
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->closeImmediate()V

    :goto_0
    const/4 p1, 0x0

    .line 660
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private closemMonochromeDialog(Z)Z
    .locals 2

    .line 685
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mMonochromeDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    if-eqz v0, :cond_2

    .line 686
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mMonochromeDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SettingDialogStack"

    const-string v1, "mMonochromeDialog remove:"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 690
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mMonochromeDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->close()V

    goto :goto_0

    .line 692
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mMonochromeDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->closeImmediate()V

    :goto_0
    const/4 p1, 0x0

    .line 694
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mMonochromeDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    .line 696
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->resetEnabledOfDialogs()V

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private getCurrentDialog()Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogInterface;
    .locals 3

    .line 609
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "getCurrentDialog"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 611
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

    const/4 v0, 0x5

    .line 727
    new-array v0, v0, [Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogInterface;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContextualMenu2ndLayer:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContextualMenu:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mMonochromeDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mModeSelectorDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    const/4 v1, 0x4

    aput-object p0, v0, v1

    return-object v0
.end method

.method private notifyCloseContextualMenu(Ljava/lang/Object;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContextualMenuListener:Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogListener;

    if-eqz v0, :cond_0

    .line 117
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContextualMenuListener:Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogListener;

    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogListener;->onCloseSettingDialog(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private notifyCloseSettingDialog(Ljava/lang/Object;)V
    .locals 1

    .line 156
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

    .line 157
    invoke-interface {v0, p1}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogListener;->onCloseSettingDialog(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyOpenSettingDialog(Ljava/lang/Object;)V
    .locals 1

    .line 145
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

    .line 146
    invoke-interface {v0, p1}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogListener;->onOpenSettingDialog(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private resetEnabledOfDialogs()V
    .locals 6

    .line 620
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "resetEnabledOfDialogs"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 621
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->getCurrentDialog()Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogInterface;

    move-result-object v0

    .line 623
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

    .line 625
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

    .line 207
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->removeBottomView()V

    .line 209
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mBottomContainer:Landroid/widget/LinearLayout;

    .line 210
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mBackground:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mBottomContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 211
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mBottomContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 213
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08024a

    .line 214
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 215
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mBottomContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 216
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 217
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 220
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 221
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mBottomContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 222
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f06006c

    .line 223
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 222
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 224
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 225
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContext:Landroid/content/Context;

    .line 226
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getNavigationBarMargin(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 227
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 228
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mBottomContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContext:Landroid/content/Context;

    .line 229
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getNavigationBarMargin(Landroid/content/Context;)I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07018c

    .line 230
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    .line 228
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setPivotX(F)V

    .line 231
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mBottomContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setPivotY(F)V

    .line 232
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mBottomContainer:Landroid/widget/LinearLayout;

    const/high16 v0, -0x3d4c0000    # -90.0f

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setRotation(F)V

    return-void
.end method

.method public addDialogListener(Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogListener;)V
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mSettingDialogListenerList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public adjustContainer(Z)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 879
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->isTablet(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 880
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getNavigationBarMargin(Landroid/content/Context;)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 882
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 883
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 884
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0, v0, p1, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_1

    .line 886
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 887
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 888
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 890
    :goto_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x33

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 892
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mScreenRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 894
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mScreenRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 896
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public closeAllSettingDialogs()V
    .locals 1

    const/4 v0, 0x0

    .line 544
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closeAllSettingDialogs(Z)V

    return-void
.end method

.method public closeAllSettingDialogs(Z)V
    .locals 3

    .line 551
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContextualMenu2ndLayer:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContextualMenu2ndLayer:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 554
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closeSecondLayerDialog(Z)Z

    move-result v1

    const/4 v2, 0x0

    or-int/2addr v1, v2

    .line 555
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mMonochromeDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    if-eqz v2, :cond_1

    .line 556
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mMonochromeDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 558
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closemMonochromeDialog(Z)Z

    move-result v2

    or-int/2addr v1, v2

    .line 559
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    if-eqz v2, :cond_2

    .line 560
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 562
    :cond_2
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closeShortcutDialog(Z)Z

    move-result v2

    or-int/2addr v1, v2

    .line 563
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContextualMenu:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    if-eqz v2, :cond_3

    .line 564
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SETTING_MENU:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 566
    :cond_3
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closeMenuDialog(Z)Z

    move-result v2

    or-int/2addr v1, v2

    .line 567
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mModeSelectorDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    if-eqz v2, :cond_4

    .line 568
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mModeSelectorDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 570
    :cond_4
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closeModeSelectDialog(Z)Z

    move-result p1

    or-int/2addr p1, v1

    .line 571
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->resetEnabledOfDialogs()V

    .line 573
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_5

    const-string v1, "closeAllSettingDialogs"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_5
    if-eqz p1, :cond_6

    .line 576
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->isDialogOpened()Z

    move-result p1

    if-nez p1, :cond_6

    .line 577
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->clearFocus()V

    .line 578
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->notifyCloseSettingDialog(Ljava/lang/Object;)V

    .line 579
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_6

    const-string p0, "closeAllSettingDialogs:NOTIFY CLOSE CALLBACK"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public closeCurrentDialog()Z
    .locals 4

    .line 486
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "closeCurrentDialogs."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 492
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContextualMenu2ndLayer:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    if-eqz v1, :cond_1

    .line 493
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContextualMenu2ndLayer:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_1
    const/4 v1, 0x1

    .line 495
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closeSecondLayerDialog(Z)Z

    move-result v2

    if-nez v2, :cond_3

    .line 498
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mMonochromeDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    if-eqz v2, :cond_2

    .line 499
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mMonochromeDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 501
    :cond_2
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closemMonochromeDialog(Z)Z

    move-result v2

    :cond_3
    if-nez v2, :cond_5

    .line 504
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    if-eqz v2, :cond_4

    .line 505
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 507
    :cond_4
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closeShortcutDialog(Z)Z

    move-result v2

    :cond_5
    if-nez v2, :cond_7

    .line 510
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContextualMenu:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    if-eqz v2, :cond_6

    .line 511
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SETTING_MENU:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 513
    :cond_6
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closeMenuDialog(Z)Z

    move-result v2

    :cond_7
    if-nez v2, :cond_9

    .line 516
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mModeSelectorDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    if-eqz v2, :cond_8

    .line 517
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mModeSelectorDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 519
    :cond_8
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closeModeSelectDialog(Z)Z

    move-result v2

    .line 521
    :cond_9
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->resetEnabledOfDialogs()V

    if-eqz v2, :cond_b

    .line 524
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->isDialogOpened()Z

    move-result v3

    if-nez v3, :cond_a

    .line 526
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->clearFocus()V

    .line 527
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->notifyCloseSettingDialog(Ljava/lang/Object;)V

    .line 528
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_b

    const-string p0, "closeCurrentDialogs:NOTIFY CLOSE CALLBACK"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_0

    .line 532
    :cond_a
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->notifyCloseSettingDialog(Ljava/lang/Object;)V

    .line 533
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_b

    const-string p0, "closeCurrentDialogs:NOTIFY CLOSE CALLBACK NOT ALL DIALOGS"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 538
    :cond_b
    :goto_0
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_c

    new-array p0, v1, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeCurrentDialogs: consumed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_c
    return v2
.end method

.method public closeSecondLayerDialog(Z)Z
    .locals 2

    .line 703
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContextualMenu2ndLayer:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    if-eqz v0, :cond_2

    .line 704
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContextualMenu2ndLayer:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "mSecondLayerDialog remove:"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 708
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContextualMenu2ndLayer:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->close()V

    goto :goto_0

    .line 710
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContextualMenu2ndLayer:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->closeImmediate()V

    :goto_0
    const/4 p1, 0x0

    .line 712
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContextualMenu2ndLayer:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    .line 714
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->resetEnabledOfDialogs()V

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public getBackground()Landroid/view/View;
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mBackground:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getBackgroundHeight()I
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p0

    return p0
.end method

.method public getBackgroundWidth()I
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p0

    return p0
.end method

.method public getContextualMenu()Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;
    .locals 0

    .line 182
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContextualMenu:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    return-object p0
.end method

.method public isDialogOpened()Z
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContextualMenu:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContextualMenu2ndLayer:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

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

.method public isMenuDialogOpened()Z
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContextualMenu:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOpened(Ljava/lang/Object;)Z
    .locals 5

    .line 186
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOpened:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 187
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

    .line 188
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_2
    return v1
.end method

.method public isSecondLayerDialogOpened()Z
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContextualMenu2ndLayer:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShortcutDialogOpened()Z
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public openMenuDialog(Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;Ljava/lang/Object;Z)Z
    .locals 3

    .line 312
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "openFirstLayerMenuDialog"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContextualMenu:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    .line 318
    :cond_1
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closeMenuDialog(Z)Z

    .line 319
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closeShortcutDialog(Z)Z

    .line 320
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closeSecondLayerDialog(Z)Z

    .line 321
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closeModeSelectDialog(Z)Z

    .line 322
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closemMonochromeDialog(Z)Z

    .line 324
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContextualMenu:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    .line 325
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContextualMenu:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->setSettingDialogStack(Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;)V

    .line 326
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContextualMenu:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    iget v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mOrientation:I

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->setSensorOrientation(I)V

    if-eqz p3, :cond_2

    .line 328
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContextualMenu:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    iget-object p3, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p3}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->openImmediate(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 330
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContextualMenu:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    iget-object p3, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p3}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->open(Landroid/view/ViewGroup;)V

    .line 332
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    iget-object p3, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContextualMenu:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 p3, 0x1

    if-eqz p1, :cond_3

    new-array p1, p3, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMenuDialog put:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 335
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->resetEnabledOfDialogs()V

    .line 336
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestFocus()Z

    .line 338
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SETTING_MENU:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->notifyOpenSettingDialog(Ljava/lang/Object;)V

    .line 339
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_4

    const-string p0, "openMenuDialog:NOTIFY OPEN CALLBACK"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_4
    return p3
.end method

.method public openModeSelectorDialog(Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnModeSelectListener;)Z
    .locals 5

    .line 243
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mModeSelectorDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 247
    :cond_0
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closeMenuDialog(Z)Z

    .line 248
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closeShortcutDialog(Z)Z

    .line 249
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closeSecondLayerDialog(Z)Z

    .line 250
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closeModeSelectDialog(Z)Z

    .line 251
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closemMonochromeDialog(Z)Z

    .line 253
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

    .line 255
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContext:Landroid/content/Context;

    .line 256
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->getBackgroundWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->getBackgroundHeight()I

    move-result v4

    .line 255
    invoke-static {v0, v2, v4, v1}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory;->createModeSelector(Landroid/content/Context;IIZ)Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mModeSelectorDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    .line 257
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mModeSelectorDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->setSettingDialogStack(Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;)V

    .line 258
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mModeSelectorDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    iget v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->setSensorOrientation(I)V

    .line 259
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mModeSelectorDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->setOnModeSelectListener(Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnModeSelectListener;)V

    .line 260
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mModeSelectorDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->setModeLoader(Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;)V

    .line 261
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mModeSelectorDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->open(Landroid/view/ViewGroup;)V

    .line 262
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mModeSelectorDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->resetEnabledOfDialogs()V

    .line 265
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestFocus()Z

    .line 267
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->notifyOpenSettingDialog(Ljava/lang/Object;)V

    return v3
.end method

.method public openMonochromeDialog(Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;I)Z
    .locals 5

    .line 273
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SettingDialogStack"

    const-string v1, "openMonochromeDialog"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 275
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closemMonochromeDialog(Z)Z

    .line 279
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mModeSelectorDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 281
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mModeSelectorDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    invoke-virtual {p2, v2}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->getMonochromeGlobalVisibleItemRect(Z)Landroid/graphics/Rect;

    move-result-object p2

    if-nez p2, :cond_2

    return v0

    .line 287
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0, v0, p2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object p2, v1

    move v0, v2

    .line 290
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContainer:Landroid/widget/FrameLayout;

    .line 293
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContainer:Landroid/widget/FrameLayout;

    .line 294
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    .line 290
    invoke-static {v1, v0, v3, v4}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory;->createMonochromeDialog(Landroid/content/Context;ZII)Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mMonochromeDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    .line 295
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mMonochromeDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->setSettingDialogStack(Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;)V

    .line 296
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mMonochromeDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->addPanel(Landroid/widget/ArrayAdapter;)V

    .line 297
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mMonochromeDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    iget v0, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->setTopMarginHint(I)V

    .line 298
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mMonochromeDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->setBottomMarginHint(I)V

    .line 299
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mMonochromeDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    iget p2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mOrientation:I

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->setSensorOrientation(I)V

    .line 300
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mMonochromeDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->open(Landroid/view/ViewGroup;)V

    .line 301
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mMonochromeDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->resetEnabledOfDialogs()V

    .line 304
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestFocus()Z

    .line 306
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->notifyOpenSettingDialog(Ljava/lang/Object;)V

    .line 307
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_3

    const-string p0, "SettingDialogStack"

    const-string p1, "openMonochromeDialog:NOTIFY OPEN CALLBACK"

    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3
    return v2
.end method

.method public openSecondLayerDialog(Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;Ljava/lang/Object;)Z
    .locals 10

    .line 377
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openSecondLayerDialog: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 380
    :cond_0
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closeSecondLayerDialog(Z)Z

    .line 382
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContextualMenu:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    if-nez v0, :cond_1

    return v2

    .line 386
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 387
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    .line 390
    :cond_2
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 391
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContextualMenu:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    invoke-virtual {v4, v3, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->getGlobalVisibleItemRect(Landroid/graphics/Rect;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    return v2

    .line 401
    :cond_3
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    const/4 v6, 0x2

    if-ne v4, v5, :cond_5

    .line 403
    iget v4, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mOrientation:I

    if-ne v4, v6, :cond_4

    .line 404
    new-instance v4, Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/Rect;->top:I

    .line 406
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget v8, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    iget v8, v3, Landroid/graphics/Rect;->bottom:I

    .line 408
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v9

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v3

    invoke-direct {v4, v5, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v3, v4

    .line 410
    :cond_4
    new-instance v4, Landroid/graphics/Rect;

    .line 413
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 414
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-direct {v4, v2, v2, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, v4

    goto :goto_0

    .line 416
    :cond_5
    iget v4, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mOrientation:I

    if-ne v4, v1, :cond_6

    .line 417
    new-instance v4, Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    iget v7, v3, Landroid/graphics/Rect;->left:I

    iget v8, v3, Landroid/graphics/Rect;->top:I

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-direct {v4, v5, v7, v8, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v3, v4

    .line 425
    :cond_6
    :goto_0
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    if-eq p2, v4, :cond_8

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    if-ne p2, v4, :cond_7

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v4, v5, :cond_7

    goto :goto_1

    .line 433
    :cond_7
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContainer:Landroid/widget/FrameLayout;

    .line 435
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContainer:Landroid/widget/FrameLayout;

    .line 436
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v7

    iget-object v8, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContextualMenu:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    .line 437
    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->isExpanded()Z

    move-result v8

    .line 433
    invoke-static {v4, v5, v7, v8}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory;->createSecondLayerDialog(Landroid/content/Context;IIZ)Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContextualMenu2ndLayer:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    goto :goto_2

    .line 427
    :cond_8
    :goto_1
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContainer:Landroid/widget/FrameLayout;

    .line 429
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContainer:Landroid/widget/FrameLayout;

    .line 430
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v7

    iget-object v8, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContextualMenu:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    .line 431
    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->isExpanded()Z

    move-result v8

    .line 427
    invoke-static {v4, v5, v7, v8}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory;->createSecondLayerDialogDetails(Landroid/content/Context;IIZ)Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContextualMenu2ndLayer:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    .line 439
    :goto_2
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContextualMenu2ndLayer:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    invoke-virtual {v4, p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->setSettingDialogStack(Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;)V

    .line 440
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContextualMenu2ndLayer:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    invoke-virtual {v4, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->addPanel(Landroid/widget/ArrayAdapter;)V

    .line 441
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int/2addr v4, v0

    .line 442
    iget v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mOrientation:I

    if-ne v0, v6, :cond_a

    .line 443
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContextualMenu:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 444
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContextualMenu2ndLayer:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->setTopMarginHint(I)V

    goto :goto_3

    .line 446
    :cond_9
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContextualMenu2ndLayer:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->setTopMarginHint(I)V

    goto :goto_3

    .line 451
    :cond_a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContextualMenu2ndLayer:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContainer:Landroid/widget/FrameLayout;

    .line 452
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    .line 451
    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->setTopMarginHint(I)V

    .line 455
    :goto_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContextualMenu2ndLayer:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    iget v3, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mOrientation:I

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->setSensorOrientation(I)V

    .line 456
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContextualMenu2ndLayer:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->open(Landroid/view/ViewGroup;)V

    .line 457
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContextualMenu2ndLayer:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    invoke-virtual {v0, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContextualMenu2ndLayerAdapter:Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;

    .line 460
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_b

    new-array p1, v1, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSecondLayerDialog put: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 462
    :cond_b
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->resetEnabledOfDialogs()V

    .line 463
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestFocus()Z

    .line 465
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->notifyOpenSettingDialog(Ljava/lang/Object;)V

    .line 466
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_c

    const-string p0, "openPopupDialog:NOTIFY OPEN CALLBACK"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_c
    return v1
.end method

.method public openShortcutDialog(Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;Ljava/lang/Object;)Z
    .locals 4

    .line 349
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "openShortcutDialog"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 350
    :cond_0
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->isOpened(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    .line 355
    :cond_1
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closeMenuDialog(Z)Z

    .line 356
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closeShortcutDialog(Z)Z

    .line 357
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closeSecondLayerDialog(Z)Z

    .line 358
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closeModeSelectDialog(Z)Z

    .line 359
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closemMonochromeDialog(Z)Z

    .line 361
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    .line 362
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    iget v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mOrientation:I

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->setSensorOrientation(I)V

    .line 363
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->open(Landroid/view/ViewGroup;)V

    .line 364
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    new-array p1, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mShortcutDialog put:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 367
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->resetEnabledOfDialogs()V

    .line 368
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestFocus()Z

    .line 370
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->notifyOpenSettingDialog(Ljava/lang/Object;)V

    .line 371
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_3

    const-string p0, "openShortcutDialog OPEN CALLBACK"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3
    return v0
.end method

.method public removeBottomView()V
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mBottomContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mBackground:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mBottomContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public removeDialogListener(Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogListener;)V
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mSettingDialogListenerList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public reopenSecondLayerDialog()V
    .locals 3

    .line 477
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContextualMenu2ndLayerAdapter:Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContextualMenu2ndLayer:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    .line 478
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContextualMenu2ndLayerAdapter:Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContextualMenu2ndLayer:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    .line 482
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 481
    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->openSecondLayerDialog(Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;Ljava/lang/Object;)Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 0

    .line 740
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mIsCanceledOnTouchOutside:Z

    return-void
.end method

.method public setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 0

    .line 605
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    return-void
.end method

.method public setContextualMenuListener(Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogListener;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mContextualMenuListener:Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogListener;

    return-void
.end method

.method public setExclusiveViewListener(Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$ExclusiveViewListener;)V
    .locals 0

    .line 873
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mExclusiveViewListener:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$ExclusiveViewListener;

    return-void
.end method

.method public setUiOrientation(I)V
    .locals 5

    .line 586
    iput p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mOrientation:I

    .line 588
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->getDialogList()[Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogInterface;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    if-eqz v3, :cond_0

    .line 589
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mMonochromeDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    if-eq v3, v4, :cond_0

    .line 590
    iget v4, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mOrientation:I

    invoke-interface {v3, v4}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogInterface;->setSensorOrientation(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 594
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mMonochromeDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    if-eqz p1, :cond_3

    .line 595
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mModeSelectorDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    if-eqz p1, :cond_2

    .line 596
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mModeSelectorDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->getMonochromeGlobalVisibleItemRect(Z)Landroid/graphics/Rect;

    move-result-object p1

    .line 597
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mMonochromeDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->setTopMarginHint(I)V

    .line 598
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mMonochromeDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->setBottomMarginHint(I)V

    .line 600
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mMonochromeDialog:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    iget p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->mOrientation:I

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->setSensorOrientation(I)V

    :cond_3
    return-void
.end method
