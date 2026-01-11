.class Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$CapturingModeSelectorAdapter;
.super Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter;
.source "ModeSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CapturingModeSelectorAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;Landroid/content/Context;)V
    .locals 1

    .line 50
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$CapturingModeSelectorAdapter;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    const/4 p1, -0x1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p2, p1, v0}, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public onCreateItemView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 56
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$CapturingModeSelectorAdapter;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p0

    const p1, 0x7f0c0061

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onPrepareItemView(ILcom/sonyericsson/android/camera/view/modeselector/view/AbsPanelView;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 62
    move-object v0, p2

    check-cast v0, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelView;

    .line 64
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_0

    .line 65
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$CapturingModeSelectorAdapter;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget v2, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->itemWidth:I

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$CapturingModeSelectorAdapter;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget v3, v3, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->itemHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 68
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter;->onPrepareItemView(ILcom/sonyericsson/android/camera/view/modeselector/view/AbsPanelView;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
