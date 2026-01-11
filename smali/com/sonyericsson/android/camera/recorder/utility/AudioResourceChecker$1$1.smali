.class Lcom/sonyericsson/android/camera/recorder/utility/AudioResourceChecker$1$1;
.super Ljava/lang/Object;
.source "AudioResourceChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/recorder/utility/AudioResourceChecker$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/recorder/utility/AudioResourceChecker$1;

.field final synthetic val$isAvailable:Z


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/recorder/utility/AudioResourceChecker$1;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/AudioResourceChecker$1$1;->this$0:Lcom/sonyericsson/android/camera/recorder/utility/AudioResourceChecker$1;

    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/recorder/utility/AudioResourceChecker$1$1;->val$isAvailable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/AudioResourceChecker$1$1;->this$0:Lcom/sonyericsson/android/camera/recorder/utility/AudioResourceChecker$1;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/recorder/utility/AudioResourceChecker$1;->val$listener:Lcom/sonyericsson/android/camera/recorder/utility/AudioResourceChecker$AudioResourceCheckerListener;

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/AudioResourceChecker$1$1;->val$isAvailable:Z

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/recorder/utility/AudioResourceChecker$AudioResourceCheckerListener;->onResult(Z)V

    return-void
.end method
