.class Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource$2;
.super Ljava/lang/Object;
.source "MutableAudioSampleDataSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->requestToEnqueueSilentSamples()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource$2;->this$0:Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource$2;->this$0:Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->access$300(Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;)J

    move-result-wide v0

    .line 256
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource$2;->this$0:Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;->addSampleCount(J)V

    return-void
.end method
