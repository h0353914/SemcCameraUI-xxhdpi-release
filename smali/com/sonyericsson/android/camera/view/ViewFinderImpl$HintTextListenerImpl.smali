.class public Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$HintTextContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HintTextListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V
    .locals 0

    .line 8931
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private onClickSlowMotionDescription(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotionDescription;)V
    .locals 4

    .line 8955
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 8956
    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    .line 8957
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    if-ne v0, v1, :cond_0

    return-void

    .line 8961
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->hide()Z

    .line 8962
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getTutorial()Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    move-result-object v0

    .line 8964
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotionDescription;->getTutorialType()Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;->createByReadMore(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl$1;

    invoke-direct {v3, p0, p1, p2, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl$1;-><init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotionDescription;Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;)V

    .line 8963
    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->open(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OpenType;Lcom/sonyericsson/android/camera/setting/StoredSettings;Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;)Z

    .line 8998
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    sget-object p2, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->CLEAR:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$9200(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 8999
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1300(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Z)V

    .line 9000
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_DIALOG_OPENED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method private onClickThermalReadMore()V
    .locals 3

    .line 9004
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9006
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    const v2, 0x7f0f0173

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$9300(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9008
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 9009
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 9010
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 9011
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v1, v2, :cond_1

    .line 9013
    :cond_0
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9014
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    const v2, 0x7f0f00ab

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$9300(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9017
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v1

    if-nez v1, :cond_2

    .line 9018
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9019
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    const v2, 0x7f0f0177

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$9300(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9022
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result v1

    if-nez v1, :cond_3

    .line 9024
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9025
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    const v2, 0x7f0f018c

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$9300(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9028
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$9400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9029
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9030
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    const v2, 0x7f0f0215

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$9300(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9033
    :cond_4
    new-instance v1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {v1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    .line 9034
    sget-object v2, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->COOLING_MODE:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iput-object v2, v1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 9035
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mMessageList:Ljava/lang/String;

    .line 9036
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$8200(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->request(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    return-void
.end method


# virtual methods
.method public onContentButtonClick(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)V
    .locals 1

    .line 8939
    instance-of v0, p2, Lcom/sonyericsson/android/camera/view/hint/HintTextThermal;

    if-eqz v0, :cond_0

    .line 8941
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->onClickThermalReadMore()V

    goto :goto_0

    .line 8942
    :cond_0
    instance-of v0, p2, Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotionDescription;

    if-eqz v0, :cond_1

    .line 8944
    check-cast p2, Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotionDescription;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->onClickSlowMotionDescription(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;Lcom/sonyericsson/android/camera/view/hint/HintTextSlowMotionDescription;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStateChanged()V
    .locals 0

    .line 8950
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$HintTextListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$7000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    return-void
.end method
