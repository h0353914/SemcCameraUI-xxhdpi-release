.class Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$PriorityComparator;
.super Ljava/lang/Object;
.source "MessageDialogController.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PriorityComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$1;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$PriorityComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)I
    .locals 0

    .line 115
    iget-object p0, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->priority:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$Priority;

    iget p0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$Priority;->priority:I

    .line 116
    iget-object p1, p2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->priority:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$Priority;

    iget p1, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$Priority;->priority:I

    if-ge p0, p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-le p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 110
    check-cast p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    check-cast p2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$PriorityComparator;->compare(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)I

    move-result p0

    return p0
.end method
