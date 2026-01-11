.class Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent$1;
.super Ljava/lang/Object;
.source "PagingTutorialContentView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->getPageContentView(Landroid/content/Context;I)Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;

.field final synthetic val$featureSettingItems:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 718
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent$1;->val$featureSettingItems:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 721
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;

    iget-object p2, p2, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mParams:[Ljava/lang/Object;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent$1;->val$featureSettingItems:Ljava/util/List;

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItem;->getValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    const/4 p4, 0x0

    aput-object p0, p2, p4

    .line 723
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$ValueArrayAdapter;

    .line 724
    invoke-static {p0, p3}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$ValueArrayAdapter;->-$$Nest$fputmSelectedIndex(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$ValueArrayAdapter;I)V

    .line 725
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$ValueArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method
