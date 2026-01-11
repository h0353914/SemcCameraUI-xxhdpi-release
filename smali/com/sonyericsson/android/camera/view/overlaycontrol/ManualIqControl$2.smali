.class Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$2;
.super Ljava/lang/Object;
.source "ManualIqControl.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->generateValueItems(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Ljava/util/List;
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
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$2;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute(Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
            ">;)V"
        }
    .end annotation

    .line 275
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$2;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->-$$Nest$fgetmValueAccessor(Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;)Ljava/util/Map;

    move-result-object v1

    .line 276
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 275
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setManualIqControlValueChange(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 277
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$2;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->-$$Nest$mapplyValue(Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 278
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl$2;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->-$$Nest$fgetmSelectedTab(Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;)Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->-$$Nest$mupdate(Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V

    return-void
.end method
