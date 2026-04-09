.class Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl$2;
.super Ljava/lang/Object;
.source "ImageQualityControl.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->generateValueItems(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl$2;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute(Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
            ">;)V"
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl$2;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->access$400(Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 266
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl$2;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl$2;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->access$500(Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;)Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;->access$300(Lcom/sonyericsson/android/camera/view/overlaycontrol/ImageQualityControl;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V

    return-void
.end method
