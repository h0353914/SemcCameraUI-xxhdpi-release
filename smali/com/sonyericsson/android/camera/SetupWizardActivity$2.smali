.class Lcom/sonyericsson/android/camera/SetupWizardActivity$2;
.super Ljava/lang/Object;
.source "SetupWizardActivity.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/SetupWizardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$2;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)V
    .locals 1

    .line 169
    sget-object v0, Lcom/sonyericsson/android/camera/SetupWizardActivity$11;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 180
    :pswitch_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$2;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$500(Lcom/sonyericsson/android/camera/SetupWizardActivity;Z)V

    .line 181
    iget-object p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$2;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$600(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V

    goto :goto_0

    .line 171
    :pswitch_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$2;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$102(Lcom/sonyericsson/android/camera/SetupWizardActivity;Z)Z

    .line 172
    iget-object p1, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$2;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$300(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->SAVE_LOCATION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->hasNext(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 173
    iget-object p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$2;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$400(Lcom/sonyericsson/android/camera/SetupWizardActivity;)V

    goto :goto_0

    .line 175
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$2;->this$0:Lcom/sonyericsson/android/camera/SetupWizardActivity;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/SetupWizardActivity;->access$300(Lcom/sonyericsson/android/camera/SetupWizardActivity;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;->SAVE_LOCATION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->doNextAction(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
