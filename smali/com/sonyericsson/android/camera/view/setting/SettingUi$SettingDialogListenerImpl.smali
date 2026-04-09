.class Lcom/sonyericsson/android/camera/view/setting/SettingUi$SettingDialogListenerImpl;
.super Ljava/lang/Object;
.source "SettingUi.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/setting/SettingUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingDialogListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$SettingDialogListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/setting/SettingUi;Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;)V
    .locals 0

    .line 134
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi$SettingDialogListenerImpl;-><init>(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)V

    return-void
.end method


# virtual methods
.method public onCloseSettingDialog(Ljava/lang/Object;)V
    .locals 1

    .line 143
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SETTING_MENU:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    if-ne p1, v0, :cond_0

    .line 144
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$SettingDialogListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$100(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)V

    :cond_0
    return-void
.end method

.method public onOpenSettingDialog(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
