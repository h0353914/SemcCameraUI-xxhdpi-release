.class Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$1;
.super Ljava/lang/Object;
.source "AbsDialogScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->setup(ZLcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$OnScrollListener;IIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$1;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$1;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->onInitializeScroll()V

    return-void
.end method
