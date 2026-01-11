.class Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnClickNegativeListener;
.super Ljava/lang/Object;
.source "SettingMessageDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnClickNegativeListener"
.end annotation


# instance fields
.field private final mFragment:Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;

.field private final mParameter:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;)V
    .locals 0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnClickNegativeListener;->mParameter:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    .line 177
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnClickNegativeListener;->mFragment:Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 182
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "OnClickNegativeListener onClick()"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 183
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnClickNegativeListener;->mFragment:Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;

    .line 184
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;->-$$Nest$mgetOnMessageDialogDismissListener(Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;)Ljava/util/List;

    move-result-object p1

    .line 185
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnMessageDialogDismissListener;

    .line 186
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnClickNegativeListener;->mParameter:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    const/4 v1, -0x2

    invoke-interface {p2, v0, v1}, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnMessageDialogDismissListener;->onDismiss(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;I)V

    goto :goto_0

    :cond_1
    return-void
.end method
