.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PostUiInflatedTask;
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
    name = "PostUiInflatedTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V
    .locals 0

    .line 1699
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PostUiInflatedTask;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/view/ViewFinderImpl$1;)V
    .locals 0

    .line 1699
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PostUiInflatedTask;-><init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1703
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$PostUiInflatedTask;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$3200(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    return-void
.end method
