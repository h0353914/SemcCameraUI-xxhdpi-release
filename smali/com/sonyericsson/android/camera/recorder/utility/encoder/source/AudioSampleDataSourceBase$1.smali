.class Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase$1;
.super Ljava/lang/Object;
.source "AudioSampleDataSourceBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->requestToReadSampleData(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;

.field final synthetic val$eos:Z


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;Z)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase$1;->this$0:Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;

    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase$1;->val$eos:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase$1;->this$0:Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase$1;->val$eos:Z

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;->access$000(Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/AudioSampleDataSourceBase;Z)V

    return-void
.end method
