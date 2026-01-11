.class public Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;
.super Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;
.source "ModeSelector.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader$OnModeListChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnItemClickListener;,
        Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnNewFeatureBarClickListener;,
        Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnModeSelectListener;,
        Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$CapturingModeSelectorAdapter;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z

.field protected static final TAG:Ljava/lang/String; = "ModeSelector"


# instance fields
.field private mModeLoader:Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;

.field private mOnModeSelectListener:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnModeSelectListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmModeLoader(Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;)Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->mModeLoader:Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnModeSelectListener(Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;)Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnModeSelectListener;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->mOnModeSelectListener:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnModeSelectListener;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 38
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    sput-boolean v0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;IZZ)V
    .locals 9

    .line 121
    invoke-direct {p0, p1, p2, p4}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;Z)V

    .line 122
    new-instance v8, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;

    invoke-direct {v8, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;-><init>(Landroid/content/Context;)V

    .line 123
    new-instance p1, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnItemClickListener;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnItemClickListener;-><init>(Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnItemClickListener-IA;)V

    invoke-virtual {v8, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->setOnItemClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    new-instance p1, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnNewFeatureBarClickListener;

    invoke-direct {p1, p0, v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnNewFeatureBarClickListener;-><init>(Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnNewFeatureBarClickListener-IA;)V

    invoke-virtual {v8, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->setOnNewFeatureBarClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x1

    const/4 v4, -0x1

    move-object v0, v8

    move-object v2, p2

    move-object v3, p0

    move v5, p3

    move v6, p4

    move v7, p5

    .line 125
    invoke-virtual/range {v0 .. v7}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->setup(ZLcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$OnScrollListener;IIZZ)V

    if-eqz p4, :cond_0

    .line 128
    sget-object p1, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->FULLSCREEN:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    invoke-virtual {v8, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->setScrollStatus(Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;)V

    .line 131
    :cond_0
    iput-object v8, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->mDialogScrollView:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    return-void
.end method

.method private adjustAttachedContainer()V
    .locals 1

    .line 189
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->addBottomView()V

    .line 191
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->adjustContainer(Z)V

    goto :goto_0

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->removeBottomView()V

    .line 194
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->adjustContainer(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public closeImmediate()V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->mModeLoader:Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->removeModeChangeListener(Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader$OnModeListChangeListener;)V

    .line 235
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->removeBottomView()V

    .line 236
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->adjustContainer(Z)V

    .line 237
    invoke-super {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->closeImmediate()V

    return-void
.end method

.method public getMonochromeGlobalVisibleItemRect(Z)Landroid/graphics/Rect;
    .locals 5

    .line 204
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->mDialogScrollView:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->DUAL_MONOCHROME:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    .line 205
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->name()Ljava/lang/String;

    move-result-object v1

    .line 204
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->findItemViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 207
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 208
    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 209
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->mDialogScrollView:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->getContentLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    .line 210
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->mDialogScrollView:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->getContentLayout()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    .line 212
    iget p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->mOrientation:I

    if-ne p0, v3, :cond_0

    .line 213
    new-instance p0, Landroid/graphics/Rect;

    iget p1, v1, Landroid/graphics/Rect;->left:I

    invoke-direct {p0, v4, v4, p1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 215
    :cond_0
    new-instance p0, Landroid/graphics/Rect;

    iget p1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v4, v4, p1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 218
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object p1

    .line 219
    iget p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->mOrientation:I

    if-ne p0, v3, :cond_2

    .line 220
    new-instance p0, Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 221
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    sub-int/2addr v2, p1

    sub-int/2addr v1, v2

    invoke-direct {p0, v4, v4, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 223
    :cond_2
    new-instance p0, Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 224
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    sub-int/2addr v2, p1

    sub-int/2addr v1, v2

    invoke-direct {p0, v4, v4, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public onModeListChanged(Ljava/util/List;Ljava/util/List;)V
    .locals 3
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

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 159
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 160
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/modeselector/Mode;

    .line 161
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/modeselector/Mode;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    :cond_1
    new-instance p1, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$CapturingModeSelectorAdapter;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$CapturingModeSelectorAdapter;-><init>(Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;Landroid/content/Context;)V

    .line 170
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->mContext:Landroid/content/Context;

    invoke-static {p2, v0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->toAttributesList(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$CapturingModeSelectorAdapter;->updateItems(Ljava/util/List;)V

    .line 171
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->mDialogScrollView:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    if-eqz p2, :cond_2

    .line 172
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->addPanel(Landroid/widget/ArrayAdapter;)V

    .line 173
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->adjustLayout()V

    .line 174
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->startOpenAnimation()V

    :cond_2
    return-void
.end method

.method protected onOrientationChanged(I)V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->mDialogScrollView:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->setUiOrientation(I)V

    .line 182
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->mDialogScrollView:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 183
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->adjustAttachedContainer()V

    .line 184
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->adjustLayout()V

    :cond_0
    return-void
.end method

.method public onScrollFinished(Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;)V
    .locals 1

    .line 242
    sget-object v0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->EXIT:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    if-ne p1, v0, :cond_0

    .line 243
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$1;-><init>(Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public open(Landroid/view/ViewGroup;)V
    .locals 1

    .line 144
    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->mParent:Landroid/widget/FrameLayout;

    .line 145
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->mParent:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->mDialogScrollView:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 146
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->adjustAttachedContainer()V

    .line 147
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->adjustLayout()V

    .line 148
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->mModeLoader:Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->addModeChangeListener(Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader$OnModeListChangeListener;)V

    return-void
.end method

.method public setModeLoader(Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->mModeLoader:Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;

    return-void
.end method

.method public setOnModeSelectListener(Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnModeSelectListener;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->mOnModeSelectListener:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnModeSelectListener;

    return-void
.end method
