.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$MessageDialogOnClickNegativeListenerImpl;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageDialogOnClickNegativeListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V
    .locals 0

    .line 8616
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$MessageDialogOnClickNegativeListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/view/ViewFinderImpl$1;)V
    .locals 0

    .line 8616
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$MessageDialogOnClickNegativeListenerImpl;-><init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)V
    .locals 1

    .line 8620
    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$32;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 8626
    :pswitch_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$MessageDialogOnClickNegativeListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$8800(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    .line 8627
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$MessageDialogOnClickNegativeListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$8700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    goto :goto_0

    .line 8622
    :pswitch_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$MessageDialogOnClickNegativeListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$8700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    goto :goto_0

    .line 8631
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$MessageDialogOnClickNegativeListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;

    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
