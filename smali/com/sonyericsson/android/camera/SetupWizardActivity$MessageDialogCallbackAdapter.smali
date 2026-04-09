.class Lcom/sonyericsson/android/camera/SetupWizardActivity$MessageDialogCallbackAdapter;
.super Ljava/lang/Object;
.source "SetupWizardActivity.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnDismissListener;
.implements Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnOpenListener;
.implements Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/SetupWizardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageDialogCallbackAdapter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/SetupWizardActivity$1;)V
    .locals 0

    .line 125
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity$MessageDialogCallbackAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)V
    .locals 0

    return-void
.end method

.method public onDismiss(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)V
    .locals 0

    return-void
.end method

.method public onOpen(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)V
    .locals 0

    return-void
.end method
