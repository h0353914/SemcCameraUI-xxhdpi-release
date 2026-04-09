.class Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource$DequeuedBuffer;
.super Ljava/lang/Object;
.source "MutableAudioSampleDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DequeuedBuffer"
.end annotation


# instance fields
.field private final mBuffer:Ljava/nio/ByteBuffer;

.field private final mIndex:I


# direct methods
.method public constructor <init>(ILjava/nio/ByteBuffer;)V
    .locals 0

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    iput p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource$DequeuedBuffer;->mIndex:I

    .line 335
    iput-object p2, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource$DequeuedBuffer;->mBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource$DequeuedBuffer;)I
    .locals 0

    .line 329
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource$DequeuedBuffer;->getLimit()I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource$DequeuedBuffer;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 329
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource$DequeuedBuffer;->mBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource$DequeuedBuffer;)I
    .locals 0

    .line 329
    iget p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource$DequeuedBuffer;->mIndex:I

    return p0
.end method

.method private getLimit()I
    .locals 0

    .line 339
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/source/MutableAudioSampleDataSource$DequeuedBuffer;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p0

    return p0
.end method
