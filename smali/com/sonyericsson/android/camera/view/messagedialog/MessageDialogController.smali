.class public Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;
.super Ljava/lang/Object;
.source "MessageDialogController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$OnDismissListener;,
        Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$OnCancelListener;,
        Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$OnClickNegativeListener;,
        Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$OnClickPositiveListener;,
        Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$PriorityComparator;,
        Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$Priority;,
        Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnOpenListener;,
        Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnDismissListener;,
        Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnCancelListener;,
        Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnClickListener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "MessageDialogController"

.field private static final TRACE:Z = true


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

.field private final mDialogList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;",
            ">;"
        }
    .end annotation
.end field

.field private final mMessageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mMessageSettings:Lcom/sonyericsson/android/camera/setting/MessageSettings;

.field private final mOnCancelListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnCancelListener;

.field private final mOnClickNegativeListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnClickListener;

.field private final mOnClickPositiveListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnClickListener;

.field private final mOnDismissListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnDismissListener;

.field private final mOnOpenListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnOpenListener;

.field private mSensorOrientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/sonyericsson/android/camera/setting/MessageSettings;Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnClickListener;Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnClickListener;Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnCancelListener;Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnDismissListener;Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnOpenListener;)V
    .locals 1

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mMessageList:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mDialogList:Ljava/util/List;

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mSensorOrientation:I

    .line 138
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mContext:Landroid/content/Context;

    .line 139
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mMessageSettings:Lcom/sonyericsson/android/camera/setting/MessageSettings;

    .line 140
    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mOnClickPositiveListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnClickListener;

    .line 141
    iput-object p4, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mOnClickNegativeListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnClickListener;

    .line 142
    iput-object p5, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mOnCancelListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnCancelListener;

    .line 143
    iput-object p6, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mOnDismissListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnDismissListener;

    .line 144
    iput-object p7, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mOnOpenListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnOpenListener;

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->trace(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;)Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnClickListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mOnClickPositiveListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnClickListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;)Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnClickListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mOnClickNegativeListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnClickListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;)Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnCancelListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mOnCancelListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnCancelListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;)Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnDismissListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mOnDismissListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnDismissListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;)Ljava/util/List;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mDialogList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$702(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;)Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mCurrentDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->show()V

    return-void
.end method

.method private isNeverShow(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;)Z
    .locals 2

    .line 242
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->getMessageType()Lcom/sonyericsson/android/camera/setting/MessageType;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/setting/MessageType;->NO_MESSAGE:Lcom/sonyericsson/android/camera/setting/MessageType;

    if-eq v0, v1, :cond_0

    .line 243
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mMessageSettings:Lcom/sonyericsson/android/camera/setting/MessageSettings;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->getMessageType()Lcom/sonyericsson/android/camera/setting/MessageType;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/setting/MessageSettings;->isNeverShow(Lcom/sonyericsson/android/camera/setting/MessageType;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private show()V
    .locals 12

    const-string v0, "show() E"

    .line 199
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->trace(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mMessageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mMessageList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->priority:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$Priority;

    sget-object v2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$Priority;->IMMEDIATELY:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$Priority;

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mCurrentDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    if-eqz v0, :cond_1

    const-string p0, "show() Message is shown"

    .line 208
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->trace(Ljava/lang/String;)V

    return-void

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mDialogList:Ljava/util/List;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mMessageList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget-object v3, v2, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->builderType:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogBuilder;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mSensorOrientation:I

    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mMessageSettings:Lcom/sonyericsson/android/camera/setting/MessageSettings;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mMessageList:Ljava/util/List;

    .line 216
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    new-instance v8, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$OnClickPositiveListener;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mMessageList:Ljava/util/List;

    .line 217
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {v8, p0, v2}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$OnClickPositiveListener;-><init>(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)V

    new-instance v9, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$OnClickNegativeListener;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mMessageList:Ljava/util/List;

    .line 218
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {v9, p0, v2}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$OnClickNegativeListener;-><init>(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)V

    new-instance v10, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$OnCancelListener;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mMessageList:Ljava/util/List;

    .line 219
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {v10, p0, v2}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$OnCancelListener;-><init>(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)V

    new-instance v11, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$OnDismissListener;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mMessageList:Ljava/util/List;

    .line 220
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {v11, p0, v2}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$OnDismissListener;-><init>(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)V

    .line 212
    invoke-virtual/range {v3 .. v11}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogBuilder;->create(Landroid/content/Context;ILcom/sonyericsson/android/camera/setting/MessageSettings;Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mOnOpenListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnOpenListener;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mMessageList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-interface {v0, v2}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnOpenListener;->onOpen(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)V

    .line 226
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mDialogList:Ljava/util/List;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mDialogList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->show()V

    .line 227
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mMessageList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mCurrentDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 228
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mMessageList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const-string p0, "show() X"

    .line 230
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->trace(Ljava/lang/String;)V

    return-void
.end method

.method private static trace(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 50
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    const-string v0, "clear()"

    .line 253
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->trace(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mDialogList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 256
    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 257
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    goto :goto_0

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mDialogList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 260
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mMessageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 261
    iput-object v2, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mCurrentDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    return-void
.end method

.method public isCurrentDialogInList(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;",
            ">;)Z"
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mCurrentDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 316
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCurrentDialogInList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mCurrentDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->trace(Ljava/lang/String;)V

    .line 317
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mCurrentDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isOpened()Z
    .locals 0

    .line 296
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mCurrentDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    if-eqz p0, :cond_0

    const-string p0, "isOpened() true"

    .line 297
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->trace(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "isOpened() false"

    .line 300
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->trace(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public removeDialogsInList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;",
            ">;)V"
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mCurrentDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mCurrentDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeDialogsInList dismiss = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mCurrentDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->trace(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mDialogList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 275
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mDialogList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    .line 276
    iput-object v2, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mCurrentDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 279
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mMessageList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 280
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 281
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    .line 282
    iget-object v1, v0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 283
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeDialogsInList remove = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->trace(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public request(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z
    .locals 4

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request() E DLG_ID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->trace(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mCurrentDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mCurrentDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->priority:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$Priority;

    sget-object v2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$Priority;->IMMEDIATELY:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$Priority;

    if-ne v0, v2, :cond_0

    const-string p0, "request() current showing"

    .line 175
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->trace(Ljava/lang/String;)V

    return v1

    .line 179
    :cond_0
    iget-object v0, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->isNeverShow(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "request() isNeverShow = true"

    .line 180
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->trace(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mMessageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mMessageList:Ljava/util/List;

    new-instance v2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$PriorityComparator;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$PriorityComparator;-><init>(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$1;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 187
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->show()V

    .line 188
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "request() X DLG_ID = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->trace(Ljava/lang/String;)V

    return v1
.end method

.method public setSensorOrientation(I)V
    .locals 1

    .line 155
    iput p1, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mSensorOrientation:I

    .line 156
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mDialogList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 157
    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOrientation(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
