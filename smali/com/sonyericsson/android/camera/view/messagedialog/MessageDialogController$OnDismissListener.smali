.class Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$OnDismissListener;
.super Ljava/lang/Object;
.source "MessageDialogController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnDismissListener"
.end annotation


# instance fields
.field private final mParameter:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)V
    .locals 0

    .line 395
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$OnDismissListener;->this$0:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$OnDismissListener;->mParameter:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 401
    const-string p1, "onDismissListener onDismiss()"

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->-$$Nest$smtrace(Ljava/lang/String;)V

    .line 403
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$OnDismissListener;->this$0:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->-$$Nest$fgetmOnDismissListener(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;)Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnDismissListener;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$OnDismissListener;->mParameter:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-interface {p1, v0}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnDismissListener;->onDismiss(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)V

    .line 404
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$OnDismissListener;->this$0:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->-$$Nest$fgetmDialogList(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 405
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$OnDismissListener;->this$0:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->-$$Nest$fputmCurrentDialogId(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;)V

    .line 406
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$OnDismissListener;->this$0:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->-$$Nest$mshow(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;)V

    return-void
.end method
