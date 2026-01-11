.class Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$ListArrange;
.super Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;
.source "SettingMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListArrange"
.end annotation


# instance fields
.field private final mIsTop:Z

.field private final mTitle:Ljava/lang/String;

.field private final mTitleLeftPadding:I

.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;


# direct methods
.method protected constructor <init>(Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;Ljava/lang/String;Landroid/widget/ArrayAdapter;Z)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$ListArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;

    .line 325
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;-><init>(Landroid/widget/ArrayAdapter;)V

    .line 326
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$ListArrange;->mTitle:Ljava/lang/String;

    .line 327
    iput-boolean p4, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$ListArrange;->mIsTop:Z

    const p2, 0x7f0701b7

    .line 328
    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->dimenToPixel(I)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$ListArrange;->mTitleLeftPadding:I

    .line 329
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$ListArrange;->setup()V

    .line 330
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$ListArrange;->fetchItems()V

    return-void
.end method


# virtual methods
.method protected computeArrangeHeight()I
    .locals 5

    .line 378
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$ListArrange;->mTitle:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$ListArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;

    const v2, 0x7f0701be

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->dimenToPixel(I)I

    move-result v0

    .line 379
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$ListArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget v2, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->itemHeight:I

    .line 380
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$ListArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;

    const v4, 0x7f0701d9

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->dimenToPixel(I)I

    move-result v3

    .line 382
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$ListArrange;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 383
    invoke-virtual {v4}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v4

    mul-int/2addr v2, v4

    add-int/2addr v0, v2

    .line 384
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$ListArrange;->mIsTop:Z

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method protected computeHeight()I
    .locals 0

    .line 373
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$ListArrange;->computeArrangeHeight()I

    move-result p0

    return p0
.end method

.method protected computeScrollOffset()I
    .locals 7

    .line 425
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$ListArrange;->mTitle:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$ListArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;

    const v2, 0x7f0701be

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->dimenToPixel(I)I

    move-result v0

    .line 426
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$ListArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget v2, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->itemHeight:I

    .line 427
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$ListArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;

    const v4, 0x7f0701c0

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->dimenToPixel(I)I

    move-result v3

    .line 428
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$ListArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;

    const v5, 0x7f0701d9

    invoke-virtual {v4, v5}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->dimenToPixel(I)I

    move-result v4

    move v5, v1

    .line 431
    :goto_1
    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$ListArrange;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 432
    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$ListArrange;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    invoke-interface {v6}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->isSelected()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_3

    :cond_1
    if-nez v1, :cond_2

    add-int v6, v0, v2

    goto :goto_2

    :cond_2
    add-int v6, v2, v3

    :goto_2
    add-int/2addr v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    add-int/2addr v5, v4

    return v5
.end method

.method protected findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    .line 389
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$ListArrange;->mRowItems:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 390
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$ListArrange;->mRowItems:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 391
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;

    if-eqz v2, :cond_0

    .line 392
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;

    .line 393
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->compareData(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public onChanged()V
    .locals 0

    .line 415
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$ListArrange;->fetchItems()V

    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .line 420
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$ListArrange;->fetchItems()V

    return-void
.end method

.method protected release()V
    .locals 4

    .line 403
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$ListArrange;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p0}, Landroid/widget/ArrayAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    const/4 v0, 0x0

    move v1, v0

    .line 404
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$ListArrange;->mRowItems:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 405
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$ListArrange;->mRowItems:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 406
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;

    if-eqz v3, :cond_0

    .line 407
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;

    .line 408
    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;->setClickable(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected setup()V
    .locals 9

    .line 335
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$ListArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$ListArrange;->container:Landroid/view/ViewGroup;

    .line 336
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$ListArrange;->mIsTop:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$ListArrange;->container:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$ListArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;

    const v3, 0x7f0701d9

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->dimenToPixel(I)I

    move-result v2

    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 340
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$ListArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 341
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$ListArrange;->container:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 342
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, -0x1

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 343
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v4, -0x2

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 344
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$ListArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget v2, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->panelBackgroundColor:I

    if-eqz v2, :cond_1

    .line 345
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$ListArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget v2, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->panelBackgroundColor:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :cond_1
    const/4 v2, 0x1

    .line 347
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 349
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$ListArrange;->mTitle:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 350
    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$ListArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 351
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 352
    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iput v3, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 353
    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$ListArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;

    const v8, 0x7f0701be

    invoke-virtual {v7, v8}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->dimenToPixel(I)I

    move-result v7

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 354
    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$ListArrange;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$ListArrange;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 356
    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$ListArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;

    .line 357
    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f06006e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 356
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v6, 0x41600000    # 14.0f

    .line 358
    invoke-virtual {v5, v2, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v6, 0x10

    .line 359
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 360
    iget v6, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$ListArrange;->mTitleLeftPadding:I

    invoke-virtual {v5, v6, v1, v1, v1}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 363
    :cond_2
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$ListArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$ListArrange;->mRowItems:Landroid/widget/LinearLayout;

    .line 364
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$ListArrange;->mRowItems:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setMotionEventSplittingEnabled(Z)V

    .line 365
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$ListArrange;->mRowItems:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 366
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$ListArrange;->mRowItems:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 367
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$ListArrange;->mRowItems:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 368
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$ListArrange;->mRowItems:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iput v4, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method
