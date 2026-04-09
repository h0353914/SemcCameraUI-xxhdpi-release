.class public Lcom/sonymobile/android/media/internal/Track$EncodedBuffer;
.super Ljava/lang/Object;
.source "Track.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/media/internal/Track;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "EncodedBuffer"
.end annotation


# instance fields
.field public final bufferIndex:I

.field public final bufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field public byteBuffer:Ljava/nio/ByteBuffer;

.field public containsCopiedBuffer:Z


# direct methods
.method constructor <init>(ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    iput p1, p0, Lcom/sonymobile/android/media/internal/Track$EncodedBuffer;->bufferIndex:I

    .line 241
    iput-object p2, p0, Lcom/sonymobile/android/media/internal/Track$EncodedBuffer;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const/4 p1, 0x0

    .line 242
    iput-object p1, p0, Lcom/sonymobile/android/media/internal/Track$EncodedBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    .line 243
    iput-boolean p1, p0, Lcom/sonymobile/android/media/internal/Track$EncodedBuffer;->containsCopiedBuffer:Z

    return-void
.end method
