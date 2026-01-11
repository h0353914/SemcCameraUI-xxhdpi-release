.class Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnCancelListener;
.super Ljava/lang/Object;
.source "SettingMessageDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnCancelListener"
.end annotation


# instance fields
.field private final mFragment:Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;

.field private final mParameter:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;)V
    .locals 0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnCancelListener;->mParameter:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    .line 201
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnCancelListener;->mFragment:Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    .line 206
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "OnCancelListener onCancel()"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 207
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnCancelListener;->mFragment:Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;

    .line 208
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;->-$$Nest$mgetOnMessageDialogDismissListener(Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;)Ljava/util/List;

    move-result-object p1

    .line 209
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnMessageDialogDismissListener;

    .line 210
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnCancelListener;->mParameter:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    const/4 v2, -0x3

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnMessageDialogDismissListener;->onDismiss(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;I)V

    goto :goto_0

    :cond_1
    return-void
.end method
