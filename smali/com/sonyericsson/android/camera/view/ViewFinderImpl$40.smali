.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$40;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V
    .locals 0

    .line 11542
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$40;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Integer;
    .locals 1

    .line 11545
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$40;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FOCUS_RANGE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p0, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->getInt(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)I

    move-result p0

    .line 11546
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 11542
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$40;->get()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public reset()Ljava/lang/Integer;
    .locals 0

    const/4 p0, 0x0

    .line 11557
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic reset()Ljava/lang/Object;
    .locals 0

    .line 11542
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$40;->reset()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public set(Ljava/lang/Integer;)V
    .locals 1

    .line 11551
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$40;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FOCUS_RANGE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 11552
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 11551
    invoke-interface {p0, v0, p1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->setInt(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;I)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .line 11542
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$40;->set(Ljava/lang/Integer;)V

    return-void
.end method
