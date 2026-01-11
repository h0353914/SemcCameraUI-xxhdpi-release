.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenButtonHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler$OnScreenButtonListenerImpl;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method static bridge synthetic -$$Nest$mclearAllButton(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;->clearAllButton()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearMain(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;->clearMain()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearOption1(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;->clearOption1()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearOption2(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;->clearOption2()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshButton(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;->refreshButton()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetMainRotatability(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;->setMainRotatability(IZ)V

    return-void
.end method

.method private constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V
    .locals 0

    .line 10768
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;-><init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    return-void
.end method

.method private clearAllButton()V
    .locals 0

    .line 10886
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;->clearOption1()V

    .line 10887
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;->clearOption2()V

    .line 10888
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;->clearMain()V

    return-void
.end method

.method private clearMain()V
    .locals 0

    .line 10874
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$mgetBaseLayout(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->clearMain()V

    return-void
.end method

.method private clearOption1()V
    .locals 0

    .line 10878
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$mgetBaseLayout(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->clearOption1()V

    return-void
.end method

.method private clearOption2()V
    .locals 0

    .line 10882
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$mgetBaseLayout(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->clearOption2()V

    return-void
.end method

.method private refreshButton()V
    .locals 0

    .line 10892
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;->clearOption1()V

    .line 10893
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;->clearOption2()V

    .line 10894
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$mgetBaseLayout(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->show()V

    return-void
.end method

.method private setMainRotatability(IZ)V
    .locals 0

    .line 10898
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$mgetBaseLayout(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->setMainRotatability(IZ)V

    return-void
.end method


# virtual methods
.method protected setMain(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;IZ)V
    .locals 1

    const/4 v0, 0x1

    .line 10806
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;->setMain(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;IZZ)V

    return-void
.end method

.method protected setMain(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;IZZ)V
    .locals 1

    .line 10812
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$mgetBaseLayout(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    move-result-object v0

    if-eqz p4, :cond_0

    .line 10816
    new-instance p4, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler$OnScreenButtonListenerImpl;

    invoke-direct {p4, p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler$OnScreenButtonListenerImpl;-><init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;)V

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    .line 10813
    :goto_0
    invoke-static {p1, p4}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory;->createButton(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;)Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;

    move-result-object p1

    .line 10812
    invoke-virtual {v0, p1, p2, p3}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->setMain(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;IZ)V

    .line 10820
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;->setMainAccessibilityTraversalBefore()V

    return-void
.end method

.method protected setMainAccessibilityTraversalBefore()V
    .locals 2

    .line 10825
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    .line 10826
    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const v0, 0x7f0900ae

    goto :goto_0

    :cond_0
    const v0, 0x7f090231

    .line 10835
    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$mgetBaseLayout(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    move-result-object p0

    .line 10836
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->setMainAccessibilityTraversalBefore(I)V

    return-void
.end method

.method protected setOption1(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;IZ)V
    .locals 0

    .line 10850
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$mgetBaseLayout(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->setOption1(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;IZ)V

    return-void
.end method

.method protected setOption1(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;IZ)V
    .locals 2

    .line 10841
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$mgetBaseLayout(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler$OnScreenButtonListenerImpl;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler$OnScreenButtonListenerImpl;-><init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;)V

    .line 10842
    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory;->createButton(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;)Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;

    move-result-object p0

    .line 10841
    invoke-virtual {v0, p0, p2, p3}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->setOption1(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;IZ)V

    return-void
.end method

.method public setOption2(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;IZ)V
    .locals 0

    .line 10867
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$mgetBaseLayout(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->setOption2(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;IZ)V

    return-void
.end method

.method public setOption2(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;IZ)V
    .locals 2

    .line 10858
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$mgetBaseLayout(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler$OnScreenButtonListenerImpl;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler$OnScreenButtonListenerImpl;-><init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;)V

    .line 10859
    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory;->createButton(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;)Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;

    move-result-object p0

    .line 10858
    invoke-virtual {v0, p0, p2, p3}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->setOption2(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;IZ)V

    return-void
.end method
