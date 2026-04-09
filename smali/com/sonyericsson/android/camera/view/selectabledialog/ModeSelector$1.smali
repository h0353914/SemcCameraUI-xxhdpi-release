.class Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$1;
.super Ljava/lang/Object;
.source "ModeSelector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->onScrollFinished(Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$1;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 233
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$1;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closeAllSettingDialogs()V

    return-void
.end method
