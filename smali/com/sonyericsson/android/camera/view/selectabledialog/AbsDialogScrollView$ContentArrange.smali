.class public abstract Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;
.super Landroid/database/DataSetObserver;
.source "AbsDialogScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "ContentArrange"
.end annotation


# instance fields
.field protected container:Landroid/view/ViewGroup;

.field protected mAdapter:Landroid/widget/ArrayAdapter;

.field protected mNewFeatureBar:Landroid/widget/LinearLayout;

.field protected mRowItems:Landroid/widget/LinearLayout;


# direct methods
.method protected constructor <init>(Landroid/widget/ArrayAdapter;)V
    .locals 0

    .line 397
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 398
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 399
    invoke-virtual {p1, p0}, Landroid/widget/ArrayAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method


# virtual methods
.method protected addItemView(Landroid/view/View;I)V
    .locals 0

    .line 413
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;->mRowItems:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected computeArrangeHeight()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected computeHeight()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected computeScrollOffset()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected fetchItems()V
    .locals 4

    .line 448
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fetchItems() E prev-items:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;->mRowItems:Landroid/widget/LinearLayout;

    .line 449
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " adapter-size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 450
    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 448
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;->mRowItems:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 452
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;->mRowItems:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 453
    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;->mRowItems:Landroid/widget/LinearLayout;

    .line 454
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v3

    sub-int/2addr v2, v3

    .line 452
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->removeViews(II)V

    :cond_1
    const/4 v0, 0x0

    .line 457
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 458
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;->mRowItems:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 459
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 461
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;->getPositionItemView(I)Landroid/view/View;

    move-result-object v2

    .line 462
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;->getPositionItemContainerView(I)Landroid/view/ViewGroup;

    move-result-object v3

    .line 459
    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 464
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Update existing item, size:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;->mRowItems:Landroid/widget/LinearLayout;

    .line 465
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 464
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_1

    .line 467
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;->mAdapter:Landroid/widget/ArrayAdapter;

    const/4 v2, 0x0

    .line 470
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;->getPositionItemContainerView(I)Landroid/view/ViewGroup;

    move-result-object v3

    .line 467
    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 471
    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;->addItemView(Landroid/view/View;I)V

    .line 473
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Add new item, size:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;->mRowItems:Landroid/widget/LinearLayout;

    .line 474
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 473
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 477
    :cond_4
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_5

    const-string p0, "fetchItems() X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method protected findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getItemCount()I
    .locals 0

    .line 424
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result p0

    return p0
.end method

.method protected getPositionItemContainerView(I)Landroid/view/ViewGroup;
    .locals 0

    .line 409
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;->mRowItems:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method protected getPositionItemView(I)Landroid/view/View;
    .locals 0

    .line 405
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;->mRowItems:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected getView()Landroid/view/View;
    .locals 0

    .line 428
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;->container:Landroid/view/ViewGroup;

    return-object p0
.end method

.method protected release()V
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p0}, Landroid/widget/ArrayAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method protected abstract setup()V
.end method

.method protected updateItems(Landroid/widget/ArrayAdapter;)V
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p0}, Landroid/widget/ArrayAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 418
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 419
    invoke-virtual {p1, p0}, Landroid/widget/ArrayAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 420
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;->fetchItems()V

    return-void
.end method
