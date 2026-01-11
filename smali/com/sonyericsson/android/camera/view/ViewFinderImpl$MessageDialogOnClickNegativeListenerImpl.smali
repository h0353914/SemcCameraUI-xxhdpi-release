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

    .line 9810
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$MessageDialogOnClickNegativeListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/view/ViewFinderImpl$MessageDialogOnClickNegativeListenerImpl-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$MessageDialogOnClickNegativeListenerImpl;-><init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)V
    .locals 2

    .line 9814
    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$android$camera$view$messagedialog$DialogId:[I

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 9820
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$MessageDialogOnClickNegativeListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_START_QR_SCANNING:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendStaticEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;[Ljava/lang/Object;)V

    goto :goto_0

    .line 9824
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$MessageDialogOnClickNegativeListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_START_QR_SCANNING:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendStaticEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;[Ljava/lang/Object;)V

    goto :goto_0

    .line 9816
    :cond_2
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$MessageDialogOnClickNegativeListenerImpl;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$mupdateLocation(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    :goto_0
    return-void
.end method
