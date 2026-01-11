.class public Lcom/sonyericsson/android/camera/FeatureListFragment;
.super Landroidx/fragment/app/Fragment;
.source "FeatureListFragment.java"


# static fields
.field public static final FRAGMENT_NAME_FEATURE_LIST:Ljava/lang/String; = "feature_list_fragment"

.field private static final STATE_ORIENTATION:Ljava/lang/String; = "orientation"

.field private static final STATE_POSITION:Ljava/lang/String; = "position"

.field private static final STATE_SCROLL_Y:Ljava/lang/String; = "scroll_y"


# instance fields
.field private mOrientation:I

.field private mPosition:I

.field private mScrollY:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmOrientation(Lcom/sonyericsson/android/camera/FeatureListFragment;)I
    .locals 0

    iget p0, p0, Lcom/sonyericsson/android/camera/FeatureListFragment;->mOrientation:I

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/sonyericsson/android/camera/FeatureListFragment;->mOrientation:I

    .line 37
    iput v0, p0, Lcom/sonyericsson/android/camera/FeatureListFragment;->mScrollY:I

    .line 38
    iput v0, p0, Lcom/sonyericsson/android/camera/FeatureListFragment;->mPosition:I

    return-void
.end method

.method private saveScrollPosition()V
    .locals 2

    .line 139
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/FeatureListFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/FeatureListFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    .line 141
    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getFirstVisiblePosition()I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/camera/FeatureListFragment;->mPosition:I

    const/4 v1, 0x0

    .line 142
    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/FeatureListFragment;->mScrollY:I

    :cond_0
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 121
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 123
    iget v0, p0, Lcom/sonyericsson/android/camera/FeatureListFragment;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 125
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/sonyericsson/android/camera/FeatureListFragment;->mOrientation:I

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    if-nez p3, :cond_0

    .line 44
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getConfigurationOrientation()I

    move-result p3

    iput p3, p0, Lcom/sonyericsson/android/camera/FeatureListFragment;->mOrientation:I

    goto :goto_0

    .line 46
    :cond_0
    const-string v0, "orientation"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/FeatureListFragment;->mOrientation:I

    .line 47
    const-string v0, "position"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/FeatureListFragment;->mPosition:I

    .line 48
    const-string v0, "scroll_y"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/sonyericsson/android/camera/FeatureListFragment;->mScrollY:I

    :goto_0
    const p3, 0x7f0c004a

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0900d1

    .line 53
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ExpandableListView;

    .line 54
    new-instance p3, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListAdapter;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/FeatureListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p3, v1}, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 56
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/FeatureListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f080388

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 55
    invoke-virtual {p2, p3}, Landroid/widget/ExpandableListView;->setVerticalScrollbarThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    new-instance p3, Lcom/sonyericsson/android/camera/FeatureListFragment$1;

    invoke-direct {p3, p0}, Lcom/sonyericsson/android/camera/FeatureListFragment$1;-><init>(Lcom/sonyericsson/android/camera/FeatureListFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 87
    new-instance p3, Lcom/sonyericsson/android/camera/FeatureListFragment$2;

    invoke-direct {p3, p0}, Lcom/sonyericsson/android/camera/FeatureListFragment$2;-><init>(Lcom/sonyericsson/android/camera/FeatureListFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 95
    :goto_1
    invoke-virtual {p2}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object p3

    invoke-interface {p3}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result p3

    if-ge v0, p3, :cond_1

    .line 96
    invoke-virtual {p2, v0}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 99
    :cond_1
    iget p3, p0, Lcom/sonyericsson/android/camera/FeatureListFragment;->mPosition:I

    iget p0, p0, Lcom/sonyericsson/android/camera/FeatureListFragment;->mScrollY:I

    invoke-virtual {p2, p3, p0}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 0

    .line 115
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 116
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/FeatureListFragment;->saveScrollPosition()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 106
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 107
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/FeatureListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz p0, :cond_0

    .line 109
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p0

    const v0, 0x7f0f01ef

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 131
    const-string v0, "orientation"

    iget v1, p0, Lcom/sonyericsson/android/camera/FeatureListFragment;->mOrientation:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 132
    const-string v0, "position"

    iget v1, p0, Lcom/sonyericsson/android/camera/FeatureListFragment;->mPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 133
    const-string v0, "scroll_y"

    iget v1, p0, Lcom/sonyericsson/android/camera/FeatureListFragment;->mScrollY:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 134
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
