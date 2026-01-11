.class Lcom/sonyericsson/android/camera/FeatureListFragment$1;
.super Ljava/lang/Object;
.source "FeatureListFragment.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/FeatureListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/FeatureListFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/FeatureListFragment;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/sonyericsson/android/camera/FeatureListFragment$1;->this$0:Lcom/sonyericsson/android/camera/FeatureListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 0

    .line 62
    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object p1

    .line 63
    invoke-interface {p1, p3, p4}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    .line 64
    iget-object p2, p0, Lcom/sonyericsson/android/camera/FeatureListFragment$1;->this$0:Lcom/sonyericsson/android/camera/FeatureListFragment;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/FeatureListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/app/AppCompatActivity;

    const/4 p3, 0x0

    if-nez p2, :cond_0

    return p3

    .line 69
    :cond_0
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 70
    const-string p5, "key_tutorial_type"

    invoke-virtual {p4, p5, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 71
    iget-object p0, p0, Lcom/sonyericsson/android/camera/FeatureListFragment$1;->this$0:Lcom/sonyericsson/android/camera/FeatureListFragment;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/FeatureListFragment;->-$$Nest$fgetmOrientation(Lcom/sonyericsson/android/camera/FeatureListFragment;)I

    move-result p0

    const-string p1, "key_orientation"

    invoke-virtual {p4, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 72
    new-instance p0, Lcom/sonyericsson/android/camera/FeatureContentFragment;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/FeatureContentFragment;-><init>()V

    .line 73
    invoke-virtual {p0, p4}, Lcom/sonyericsson/android/camera/FeatureContentFragment;->setArguments(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 75
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const/16 p2, 0x1001

    .line 76
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentTransaction;->setTransition(I)Landroidx/fragment/app/FragmentTransaction;

    const p2, 0x7f0900ac

    .line 77
    const-string p4, "feature_content_fragment"

    invoke-virtual {p1, p2, p0, p4}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    const/4 p0, 0x0

    .line 79
    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 80
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return p3
.end method
