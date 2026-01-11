.class Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$1;
.super Ljava/lang/Object;
.source "HintTextViewController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$1;->this$0:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 73
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$1;->this$0:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->-$$Nest$mreferTop(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)Lcom/sonyericsson/android/camera/view/hint/HintTextContent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$1;->this$0:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->-$$Nest$fgetmListener(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$HintTextContentListener;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$1;->this$0:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    invoke-interface {v0, p0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$HintTextContentListener;->onContentLeftButtonClick(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V

    :cond_0
    return-void
.end method
