.class Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$OnClickPositiveListener;
.super Ljava/lang/Object;
.source "MessageDialogController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnClickPositiveListener"
.end annotation


# instance fields
.field private final mParameter:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$OnClickPositiveListener;->this$0:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$OnClickPositiveListener;->mParameter:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 337
    const-string p1, "onClickPositiveListener onClick()"

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->-$$Nest$smtrace(Ljava/lang/String;)V

    .line 339
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$OnClickPositiveListener;->this$0:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->-$$Nest$fgetmOnClickPositiveListener(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;)Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnClickListener;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$OnClickPositiveListener;->mParameter:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnClickListener;->onClick(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)V

    return-void
.end method
