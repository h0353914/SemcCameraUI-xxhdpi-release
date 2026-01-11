.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ShowMessageDialogTask;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShowMessageDialogTask"
.end annotation


# instance fields
.field private mRequestParam:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method public varargs constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;[Ljava/lang/Object;)V
    .locals 0

    .line 9723
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ShowMessageDialogTask;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9724
    new-instance p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ShowMessageDialogTask;->mRequestParam:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    .line 9725
    iput-object p2, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 9726
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ShowMessageDialogTask;->mRequestParam:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mOptions:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 9731
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ShowMessageDialogTask;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmIsSetupHeadupDisplayInvoked(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9737
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ShowMessageDialogTask;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmMessageDialog(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ShowMessageDialogTask;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmActivity(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->setSensorOrientation(I)V

    .line 9740
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ShowMessageDialogTask;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmMessageDialog(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ShowMessageDialogTask;->mRequestParam:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->request(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 9742
    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ShowMessageDialogTask;->mRequestParam:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 9744
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ShowMessageDialogTask;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$mshowHiSpeedSdCardRecommendDialogOnVideoSizeChange(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    :cond_2
    :goto_0
    return-void
.end method
