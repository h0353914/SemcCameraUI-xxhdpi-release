.class public final Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialController;
.super Ljava/lang/Object;
.source "PagingTutorialContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "PagingTutorialController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;


# direct methods
.method protected constructor <init>(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)V
    .locals 0

    .line 468
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialController;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeTutorial(Landroid/view/View;)V
    .locals 0

    .line 474
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialController;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->notifyOnDoneClicked(Landroid/view/View;)V

    return-void
.end method

.method public movePageToBack()V
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialController;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->access$1100(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialController;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->access$000(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;

    move-result-object p0

    iget p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mPageIndex:I

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public movePageToNext()V
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialController;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->access$1100(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialController;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->access$000(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;

    move-result-object p0

    iget p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mPageIndex:I

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-void
.end method
