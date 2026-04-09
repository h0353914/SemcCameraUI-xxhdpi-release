.class Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$OnCancelListener;
.super Ljava/lang/Object;
.source "MessageDialogController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnCancelListener"
.end annotation


# instance fields
.field private final mParameter:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$OnCancelListener;->this$0:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$OnCancelListener;->mParameter:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "onCancelListener onCancel()"

    .line 378
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->access$100(Ljava/lang/String;)V

    .line 380
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$OnCancelListener;->this$0:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->access$400(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;)Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnCancelListener;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$OnCancelListener;->mParameter:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnCancelListener;->onCancel(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)V

    return-void
.end method
