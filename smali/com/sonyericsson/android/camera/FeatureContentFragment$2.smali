.class Lcom/sonyericsson/android/camera/FeatureContentFragment$2;
.super Ljava/lang/Object;
.source "FeatureContentFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/FeatureContentFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/FeatureContentFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/FeatureContentFragment;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment$2;->this$0:Lcom/sonyericsson/android/camera/FeatureContentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 126
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 127
    iget-object p0, p0, Lcom/sonyericsson/android/camera/FeatureContentFragment$2;->this$0:Lcom/sonyericsson/android/camera/FeatureContentFragment;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/FeatureContentFragment;->-$$Nest$fgetmTutorial(Lcom/sonyericsson/android/camera/FeatureContentFragment;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->backToPreviousPage()Z

    move-result p0

    if-eqz p0, :cond_0

    return p2

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
