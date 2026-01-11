.class Lcom/sonyericsson/android/camera/CameraSettingsActivity$8;
.super Ljava/lang/Object;
.source "CameraSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/CameraSettingsActivity;->onCheckConfirmed(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

.field final synthetic val$dialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

.field final synthetic val$isChecked:Z

.field final synthetic val$messageSettings:Lcom/sonyericsson/android/camera/setting/MessageSettings;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;Lcom/sonyericsson/android/camera/setting/MessageSettings;Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 546
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$8;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$8;->val$messageSettings:Lcom/sonyericsson/android/camera/setting/MessageSettings;

    iput-object p3, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$8;->val$dialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iput-boolean p4, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$8;->val$isChecked:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 549
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$8;->val$messageSettings:Lcom/sonyericsson/android/camera/setting/MessageSettings;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$8;->val$dialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->getMessageType()Lcom/sonyericsson/android/camera/setting/MessageType;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$8;->val$isChecked:Z

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/setting/MessageSettings;->setNeverShow(Lcom/sonyericsson/android/camera/setting/MessageType;Z)V

    .line 550
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$8;->val$messageSettings:Lcom/sonyericsson/android/camera/setting/MessageSettings;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/setting/MessageSettings;->save()V

    return-void
.end method
