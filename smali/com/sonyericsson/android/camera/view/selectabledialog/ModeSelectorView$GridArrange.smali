.class public Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;
.super Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;
.source "ModeSelectorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "GridArrange"
.end annotation


# instance fields
.field private mItemMargin:I

.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;


# direct methods
.method protected constructor <init>(Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;Landroid/widget/ArrayAdapter;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;

    .line 173
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;-><init>(Landroid/widget/ArrayAdapter;)V

    .line 174
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->setup()V

    .line 175
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->fetchItems()V

    return-void
.end method

.method private getLastRowContainer()Landroid/widget/LinearLayout;
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->mRowItems:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->getRowContainer(I)Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method private getPositionItemsColumnNum(I)I
    .locals 1

    add-int/lit8 v0, p1, 0x1

    .line 329
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->getPositionItemsRowCount(I)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    mul-int/lit8 p0, p0, 0x3

    sub-int/2addr v0, p0

    return v0
.end method

.method private getPositionItemsRowCount(I)I
    .locals 2

    add-int/lit8 p1, p1, 0x1

    int-to-double p0, p1

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    div-double/2addr p0, v0

    .line 324
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method private getRowContainer(I)Landroid/widget/LinearLayout;
    .locals 0

    .line 334
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->mRowItems:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    return-object p0
.end method


# virtual methods
.method protected addItemView(Landroid/view/View;I)V
    .locals 3

    .line 267
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const p2, 0x7f080384

    .line 268
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 269
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->-$$Nest$fgetmOnItemClickListener(Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;)Landroid/view/View$OnClickListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->mRowItems:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p2

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-lez p2, :cond_1

    .line 272
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->getLastRowContainer()Landroid/widget/LinearLayout;

    move-result-object p2

    .line 273
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-gt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p2

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 278
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {v1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    .line 279
    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->setMotionEventSplittingEnabled(Z)V

    .line 280
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 281
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->mRowItems:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 282
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const/4 v0, -0x1

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 283
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const/4 v0, -0x2

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 287
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 288
    iget p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->mItemMargin:I

    iput p0, p2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 290
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected computeArrangeHeight()I
    .locals 7

    .line 231
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;

    const v1, 0x7f070131

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->dimenToPixel(I)I

    move-result v0

    .line 232
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;

    iget-boolean v1, v1, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->mIsNewFeatureBarNeeded:Z

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;

    const v2, 0x7f07013a

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->dimenToPixel(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 234
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget v2, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->itemHeight:I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->getItemCount()I

    move-result p0

    int-to-double v3, p0

    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p0, v3

    mul-int/2addr v2, p0

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    return v2
.end method

.method protected computeHeight()I
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;

    iget-boolean v0, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->mIsExpandedWhenOpened:Z

    if-nez v0, :cond_0

    .line 223
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->getScrolledHeight()I

    move-result p0

    return p0

    .line 225
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->getScrollableContentLength()I

    move-result p0

    return p0
.end method

.method protected fetchItems()V
    .locals 4

    .line 240
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->mRowItems:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, 0x0

    .line 243
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 244
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->mAdapter:Landroid/widget/ArrayAdapter;

    const/4 v2, 0x0

    .line 247
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->getPositionItemContainerView(I)Landroid/view/ViewGroup;

    move-result-object v3

    .line 244
    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 248
    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->addItemView(Landroid/view/View;I)V

    .line 250
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Add new item, size:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->mRowItems:Landroid/widget/LinearLayout;

    .line 251
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 250
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    .line 255
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->getLastRowContainer()Landroid/widget/LinearLayout;

    move-result-object p0

    .line 256
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 257
    rem-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_2

    if-le v1, v0, :cond_2

    sub-int v0, v1, v0

    neg-int v0, v0

    .line 259
    invoke-virtual {p0, v1, v0}, Landroid/widget/LinearLayout;->removeViews(II)V

    :cond_2
    return-void
.end method

.method protected findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 302
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->mRowItems:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 303
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->getRowContainer(I)Landroid/widget/LinearLayout;

    move-result-object v2

    move v3, v0

    .line 304
    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 305
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 306
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;

    if-eqz v5, :cond_0

    .line 308
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;

    .line 309
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;->getModeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getPositionItemContainerView(I)Landroid/view/ViewGroup;
    .locals 0

    .line 320
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->getPositionItemsRowCount(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->getRowContainer(I)Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method protected getPositionItemView(I)Landroid/view/View;
    .locals 1

    .line 295
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->getPositionItemContainerView(I)Landroid/view/ViewGroup;

    move-result-object v0

    .line 296
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->getPositionItemsColumnNum(I)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    .line 297
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected setup()V
    .locals 7

    .line 180
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->container:Landroid/view/ViewGroup;

    .line 181
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 182
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 183
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->container:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 184
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;

    iget-boolean v2, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->mIsNewFeatureBarNeeded:Z

    if-eqz v2, :cond_0

    .line 185
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v3, 0x7f0c0065

    const/4 v4, 0x0

    .line 187
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->mNewFeatureBar:Landroid/widget/LinearLayout;

    .line 188
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->mNewFeatureBar:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->-$$Nest$fgetmOnNewFeatureBarClickListener(Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->mNewFeatureBar:Landroid/widget/LinearLayout;

    const v3, 0x7f0901f0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 190
    sget-object v3, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->REGULAR:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    invoke-static {v2, v3}, Lcom/sonymobile/cameracommon/font/FontUtil;->setRobotoFont(Landroid/widget/TextView;Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;)Z

    .line 191
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->mNewFeatureBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 194
    :cond_0
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 195
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;

    const v4, 0x7f070131

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->dimenToPixel(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 196
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 197
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v3, -0x1

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 198
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v5, -0x2

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 200
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget v0, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->panelBackgroundColor:I

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->container:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;

    iget-object v6, v6, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget v6, v6, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->panelBackgroundColor:I

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 203
    :cond_1
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 205
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->mRowItems:Landroid/widget/LinearLayout;

    .line 206
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->mRowItems:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setMotionEventSplittingEnabled(Z)V

    .line 207
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->mRowItems:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 208
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->mRowItems:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 209
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->mRowItems:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 210
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->mRowItems:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 212
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 213
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->isPortrait()Z

    move-result v1

    if-nez v1, :cond_2

    .line 214
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getNavigationBarMargin(Landroid/content/Context;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 216
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget v1, v1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->itemWidth:I

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    .line 217
    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelectorView$GridArrange;->mItemMargin:I

    return-void
.end method
