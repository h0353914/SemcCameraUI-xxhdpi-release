.class Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource$1;
.super Ljava/lang/Object;
.source "MutableAudioSampleDataSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->requestToEnqueueSamples([BZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;

.field final synthetic val$eos:Z

.field final synthetic val$inputByteArray:[B


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;[BZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 242
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource$1;->this$0:Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource$1;->val$inputByteArray:[B

    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource$1;->val$eos:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 245
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource$1;->this$0:Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource$1;->val$inputByteArray:[B

    array-length v2, v1

    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource$1;->val$eos:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->pushToEncoder([BIZ)J

    move-result-wide v0

    .line 246
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource$1;->this$0:Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->addSampleCount(J)V

    return-void
.end method
