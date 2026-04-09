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
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V
    .locals 0

    .line 9503
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/view/ViewFinderImpl$1;)V
    .locals 0

    .line 9503
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;-><init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;)V
    .locals 0

    .line 9503
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;->refreshButton()V

    return-void
.end method

.method static synthetic access$5300(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;)V
    .locals 0

    .line 9503
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;->clearMain()V

    return-void
.end method

.method static synthetic access$5400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;IZ)V
    .locals 0

    .line 9503
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;->setMainRotatability(IZ)V

    return-void
.end method

.method static synthetic access$5500(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;)V
    .locals 0

    .line 9503
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;->clearOption1()V

    return-void
.end method

.method static synthetic access$5600(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;)V
    .locals 0

    .line 9503
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;->clearOption2()V

    return-void
.end method

.method static synthetic access$7300(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;)V
    .locals 0

    .line 9503
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;->clearAllButton()V

    return-void
.end method

.method private clearAllButton()V
    .locals 0

    .line 9604
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;->clearOption1()V

    .line 9605
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;->clearOption2()V

    .line 9606
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;->clearMain()V

    return-void
.end method

.method private clearMain()V
    .locals 0

    .line 9592
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->clearMain()V

    return-void
.end method

.method private clearOption1()V
    .locals 0

    .line 9596
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->clearOption1()V

    return-void
.end method

.method private clearOption2()V
    .locals 0

    .line 9600
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->clearOption2()V

    return-void
.end method

.method private refreshButton()V
    .locals 0

    .line 9610
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;->clearOption1()V

    .line 9611
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;->clearOption2()V

    .line 9612
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->show()V

    return-void
.end method

.method private setMainRotatability(IZ)V
    .locals 0

    .line 9616
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

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

    .line 9541
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;->setMain(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;IZZ)V

    return-void
.end method

.method protected setMain(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;IZZ)V
    .locals 1

    .line 9547
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    move-result-object v0

    if-eqz p4, :cond_0

    new-instance p4, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler$OnScreenButtonListenerImpl;

    invoke-direct {p4, p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler$OnScreenButtonListenerImpl;-><init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;)V

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    .line 9548
    :goto_0
    invoke-static {p1, p4}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory;->createButton(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;)Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;

    move-result-object p0

    .line 9547
    invoke-virtual {v0, p0, p2, p3}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->setMain(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;IZ)V

    return-void
.end method

.method protected setOption1(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;IZ)V
    .locals 0

    .line 9568
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->setOption1(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;IZ)V

    return-void
.end method

.method protected setOption1(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;IZ)V
    .locals 2

    .line 9559
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler$OnScreenButtonListenerImpl;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler$OnScreenButtonListenerImpl;-><init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;)V

    .line 9560
    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory;->createButton(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;)Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;

    move-result-object p0

    .line 9559
    invoke-virtual {v0, p0, p2, p3}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->setOption1(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;IZ)V

    return-void
.end method

.method public setOption2(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;IZ)V
    .locals 0

    .line 9585
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->setOption2(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;IZ)V

    return-void
.end method

.method public setOption2(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;IZ)V
    .locals 2

    .line 9576
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler$OnScreenButtonListenerImpl;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler$OnScreenButtonListenerImpl;-><init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ScreenButtonHandler;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;)V

    .line 9577
    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory;->createButton(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;)Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;

    move-result-object p0

    .line 9576
    invoke-virtual {v0, p0, p2, p3}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->setOption2(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;IZ)V

    return-void
.end method
