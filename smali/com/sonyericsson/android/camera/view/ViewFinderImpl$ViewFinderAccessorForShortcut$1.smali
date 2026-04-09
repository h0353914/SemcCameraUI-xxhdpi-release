.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut$1;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->switchCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;)V
    .locals 0

    .line 10186
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 10189
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$10000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    .line 10190
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForShortcut;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 10191
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$5700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Z

    move-result p0

    .line 10190
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$9900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Z)V

    return-void
.end method
