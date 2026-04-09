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

    .line 8497
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ShowMessageDialogTask;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8498
    new-instance p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ShowMessageDialogTask;->mRequestParam:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    .line 8499
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ShowMessageDialogTask;->mRequestParam:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    iput-object p2, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 8500
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ShowMessageDialogTask;->mRequestParam:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mOptions:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 8505
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ShowMessageDialogTask;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$8100(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8511
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ShowMessageDialogTask;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$8200(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ShowMessageDialogTask;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$500(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->setSensorOrientation(I)V

    .line 8514
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ShowMessageDialogTask;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$8200(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ShowMessageDialogTask;->mRequestParam:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->request(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8516
    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ShowMessageDialogTask;->mRequestParam:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 8525
    :pswitch_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ShowMessageDialogTask;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$8300(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    goto :goto_0

    .line 8518
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ShowMessageDialogTask;->mRequestParam:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mOptions:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    .line 8519
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ShowMessageDialogTask;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$500(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p0

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;->OPEN_SETTINGS_MENU:Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;

    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->requestLaunchAdvancedCamera(Lcom/sonyericsson/android/camera/LaunchCondition$ExtraOperation;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
