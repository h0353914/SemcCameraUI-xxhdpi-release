.class Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnCheckStateConfirmedListener;
.super Ljava/lang/Object;
.source "SettingMessageDialogFragment.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/messagedialog/SettingMessageDialogBuilder$OnCheckStateConfirmedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnCheckStateConfirmedListener"
.end annotation


# instance fields
.field private final mFragment:Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;

.field private final mParameter:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;)V
    .locals 0

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnCheckStateConfirmedListener;->mParameter:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    .line 241
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnCheckStateConfirmedListener;->mFragment:Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;

    return-void
.end method


# virtual methods
.method public onCheckedStateConfirmed(Z)V
    .locals 1

    .line 245
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OnCheckStateConfirmedListener onCheckedStateConfirmed()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnCheckStateConfirmedListener;->mFragment:Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;

    .line 247
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;->-$$Nest$mgetOnMessageDialogCheckConfirmedListener(Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment;)Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnMessageDialogCheckConfirmedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 249
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnCheckStateConfirmedListener;->mParameter:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-interface {v0, p0, p1}, Lcom/sonyericsson/android/camera/view/setting/fragment/SettingMessageDialogFragment$OnMessageDialogCheckConfirmedListener;->onCheckConfirmed(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;Z)V

    :cond_1
    return-void
.end method
