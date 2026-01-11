.class public Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "SettingMessageDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnClickPositiveListener;,
        Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnClickNegativeListener;,
        Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnCancelListener;,
        Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnDismissListener;,
        Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnCheckStateConfirmedListener;,
        Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnMessageDialogDismissListener;,
        Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnMessageDialogCheckConfirmedListener;
    }
.end annotation


# static fields
.field private static final ARGS_MESSAGE_DIALOG_REQUEST:Ljava/lang/String; = "message_dialog_request"


# instance fields
.field private mBuilder:Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder;

.field private mOnMessageDialogCheckConfirmedListener:Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnMessageDialogCheckConfirmedListener;

.field private mOnMessageDialogDismissListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnMessageDialogDismissListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRequest:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;


# direct methods
.method static bridge synthetic -$$Nest$mgetOnMessageDialogCheckConfirmedListener(Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;)Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnMessageDialogCheckConfirmedListener;
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;->getOnMessageDialogCheckConfirmedListener()Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnMessageDialogCheckConfirmedListener;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetOnMessageDialogDismissListener(Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;->getOnMessageDialogDismissListener()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;->mOnMessageDialogDismissListeners:Ljava/util/List;

    return-void
.end method

.method private getOnMessageDialogCheckConfirmedListener()Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnMessageDialogCheckConfirmedListener;
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;->mOnMessageDialogCheckConfirmedListener:Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnMessageDialogCheckConfirmedListener;

    return-object p0
.end method

.method private getOnMessageDialogDismissListener()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnMessageDialogDismissListener;",
            ">;"
        }
    .end annotation

    .line 136
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;->mOnMessageDialogDismissListeners:Ljava/util/List;

    return-object p0
.end method

.method public static newInstance(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;
    .locals 3

    .line 42
    new-instance v0, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;-><init>()V

    .line 43
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 44
    const-string v2, "message_dialog_request"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 46
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    .line 127
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 128
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "onCancel()"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 129
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;->getOnMessageDialogDismissListener()Ljava/util/List;

    move-result-object p1

    .line 130
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnMessageDialogDismissListener;

    .line 131
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;->mRequest:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    const/4 v2, -0x3

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnMessageDialogDismissListener;->onDismiss(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    .line 57
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "message_dialog_request"

    const-class v1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    .line 60
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 61
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "create setting message dialog : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 63
    :cond_0
    iput-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;->mRequest:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    .line 65
    new-instance v3, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnClickPositiveListener;

    invoke-direct {v3, v2, p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnClickPositiveListener;-><init>(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;)V

    .line 67
    new-instance v4, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnClickNegativeListener;

    invoke-direct {v4, v2, p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnClickNegativeListener;-><init>(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;)V

    .line 69
    new-instance v5, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnCancelListener;

    invoke-direct {v5, v2, p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnCancelListener;-><init>(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;)V

    .line 70
    new-instance v6, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnDismissListener;

    invoke-direct {v6}, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnDismissListener;-><init>()V

    .line 71
    new-instance v7, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnCheckStateConfirmedListener;

    invoke-direct {v7, v2, p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnCheckStateConfirmedListener;-><init>(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;)V

    .line 74
    new-instance v0, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;->mBuilder:Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder;

    .line 76
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 75
    invoke-virtual/range {v0 .. v7}, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder;->create(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder$OnCheckStateConfirmedListener;)Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public onPause()V
    .locals 1

    .line 120
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onPause()V

    .line 121
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;->mOnMessageDialogDismissListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;->mOnMessageDialogCheckConfirmedListener:Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnMessageDialogCheckConfirmedListener;

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 97
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onResume()V

    .line 98
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 99
    instance-of v1, v0, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnMessageDialogDismissListener;

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;->mOnMessageDialogDismissListeners:Ljava/util/List;

    move-object v2, v0

    check-cast v2, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnMessageDialogDismissListener;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 102
    :cond_0
    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 103
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    .line 104
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 105
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    instance-of v3, v2, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnMessageDialogDismissListener;

    if-eqz v3, :cond_1

    .line 106
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;->mOnMessageDialogDismissListeners:Ljava/util/List;

    check-cast v2, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnMessageDialogDismissListener;

    .line 107
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 112
    :cond_2
    :goto_1
    instance-of v1, v0, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnMessageDialogCheckConfirmedListener;

    if-eqz v1, :cond_3

    .line 113
    check-cast v0, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnMessageDialogCheckConfirmedListener;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;->mOnMessageDialogCheckConfirmedListener:Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnMessageDialogCheckConfirmedListener;

    :cond_3
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 88
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 89
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;->mBuilder:Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    check-cast p0, Landroid/app/AlertDialog;

    invoke-virtual {v0, v1, p0}, Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder;->attachCheckBoxIfNeeded(Landroid/content/Context;Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method
