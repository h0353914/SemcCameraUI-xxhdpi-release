.class Lcom/sonyericsson/android/camera/view/setting/SettingUi$SlowMotionExecutor;
.super Ljava/lang/Object;
.source "SettingUi.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/setting/SettingUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlowMotionExecutor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mExecutor:Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/setting/SettingUi;Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface<",
            "TT;>;)V"
        }
    .end annotation

    .line 1281
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$SlowMotionExecutor;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1282
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$SlowMotionExecutor;->mExecutor:Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/setting/SettingUi;Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;)V
    .locals 0

    .line 1277
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/setting/SettingUi$SlowMotionExecutor;-><init>(Lcom/sonyericsson/android/camera/view/setting/SettingUi;Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;)V

    return-void
.end method


# virtual methods
.method public onExecute(Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem<",
            "TT;>;)V"
        }
    .end annotation

    .line 1287
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$SlowMotionExecutor;->mExecutor:Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;

    invoke-interface {v0, p1}, Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;->onExecute(Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;)V

    .line 1289
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$SlowMotionExecutor;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$200(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p1, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    .line 1290
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$3;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SlowMotion:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1300
    :pswitch_0
    sget-object p1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;->CHANGE_TO_STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;

    goto :goto_1

    .line 1296
    :pswitch_1
    sget-object p1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;->CHANGE_TO_SUPER_SLOW_MOTION_SHOT:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;

    goto :goto_1

    :goto_0
    :pswitch_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_0

    .line 1305
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$SlowMotionExecutor;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$1000(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->isTutorialNeededToBeShownForCurrentMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1306
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$SlowMotionExecutor;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$400(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->openTutorial(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$DisplayTrigger;)Z

    .line 1308
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$SlowMotionExecutor;->this$0:Lcom/sonyericsson/android/camera/view/setting/SettingUi;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->access$600(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closeAllSettingDialogs()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
