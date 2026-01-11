.class final enum Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$Priority;
.super Ljava/lang/Enum;
.source "MessageDialogController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Priority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$Priority;

.field public static final enum IMMEDIATELY:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$Priority;

.field public static final enum LOW:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$Priority;

.field public static final enum NORMAL:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$Priority;


# instance fields
.field protected final priority:I


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$Priority;
    .locals 3

    .line 85
    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$Priority;->IMMEDIATELY:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$Priority;

    sget-object v1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$Priority;->NORMAL:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$Priority;

    sget-object v2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$Priority;->LOW:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$Priority;

    filled-new-array {v0, v1, v2}, [Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$Priority;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 90
    new-instance v0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$Priority;

    const-string v1, "IMMEDIATELY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$Priority;->IMMEDIATELY:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$Priority;

    .line 95
    new-instance v0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$Priority;

    const-string v1, "NORMAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$Priority;->NORMAL:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$Priority;

    .line 99
    new-instance v0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$Priority;

    const-string v1, "LOW"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$Priority;->LOW:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$Priority;

    .line 85
    invoke-static {}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$Priority;->$values()[Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$Priority;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$Priority;->$VALUES:[Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$Priority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 103
    iput p3, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$Priority;->priority:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$Priority;
    .locals 1

    .line 85
    const-class v0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$Priority;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$Priority;
    .locals 1

    .line 85
    sget-object v0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$Priority;->$VALUES:[Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$Priority;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$Priority;

    return-object v0
.end method
