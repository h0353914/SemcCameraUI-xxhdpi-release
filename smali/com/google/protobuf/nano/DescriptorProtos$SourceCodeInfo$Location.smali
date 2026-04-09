.class public final Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Location"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;


# instance fields
.field public leadingComments:Ljava/lang/String;

.field public leadingDetachedComments:[Ljava/lang/String;

.field public path:[I

.field public span:[I

.field public trailingComments:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6056
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 6057
    invoke-virtual {p0}, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->clear()Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;

    return-void
.end method

.method public static emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;
    .locals 2

    .line 6028
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;

    if-nez v0, :cond_1

    .line 6029
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 6031
    :try_start_0
    sget-object v1, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 6032
    new-array v1, v1, [Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;

    sput-object v1, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;

    .line 6034
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6036
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6301
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 6295
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;

    return-object p0
.end method


# virtual methods
.method public clear()Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;
    .locals 1

    .line 6061
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    .line 6062
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    const-string v0, ""

    .line 6063
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingComments:Ljava/lang/String;

    const-string v0, ""

    .line 6064
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->trailingComments:Ljava/lang/String;

    .line 6065
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 6066
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 6067
    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    .line 6119
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 6120
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    array-length v1, v1

    if-lez v1, :cond_1

    move v1, v3

    move v4, v1

    .line 6122
    :goto_0
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    array-length v5, v5

    if-ge v1, v5, :cond_0

    .line 6123
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    aget v5, v5, v1

    .line 6125
    invoke-static {v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr v0, v4

    add-int/2addr v0, v2

    .line 6130
    invoke-static {v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 6132
    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    array-length v1, v1

    if-lez v1, :cond_3

    move v1, v3

    move v4, v1

    .line 6134
    :goto_1
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    array-length v5, v5

    if-ge v1, v5, :cond_2

    .line 6135
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    aget v5, v5, v1

    .line 6137
    invoke-static {v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr v0, v4

    add-int/2addr v0, v2

    .line 6142
    invoke-static {v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 6144
    :cond_3
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingComments:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingComments:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x3

    .line 6145
    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingComments:Ljava/lang/String;

    .line 6146
    invoke-static {v1, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6148
    :cond_4
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->trailingComments:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->trailingComments:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x4

    .line 6149
    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->trailingComments:Ljava/lang/String;

    .line 6150
    invoke-static {v1, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6152
    :cond_5
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments:[Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_8

    move v1, v3

    move v4, v1

    .line 6155
    :goto_2
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_7

    .line 6156
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments:[Ljava/lang/String;

    aget-object v5, v5, v3

    if-eqz v5, :cond_6

    add-int/lit8 v4, v4, 0x1

    .line 6160
    invoke-static {v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    add-int/2addr v0, v1

    mul-int/2addr v2, v4

    add-int/2addr v0, v2

    :cond_8
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6174
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_19

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_15

    const/16 v1, 0xa

    if-eq v0, v1, :cond_10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_c

    const/16 v1, 0x12

    if-eq v0, v1, :cond_7

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_6

    const/16 v1, 0x22

    if-eq v0, v1, :cond_5

    const/16 v1, 0x32

    if-eq v0, v1, :cond_1

    .line 6179
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 6274
    :cond_1
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 6275
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments:[Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments:[Ljava/lang/String;

    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    .line 6276
    new-array v0, v0, [Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 6278
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments:[Ljava/lang/String;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6280
    :cond_3
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_4

    .line 6281
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 6282
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 6285
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 6286
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments:[Ljava/lang/String;

    goto :goto_0

    .line 6269
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->trailingComments:Ljava/lang/String;

    goto :goto_0

    .line 6265
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingComments:Ljava/lang/String;

    goto :goto_0

    .line 6242
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 6243
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v0

    .line 6246
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    move v3, v2

    .line 6247
    :goto_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_8

    .line 6248
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 6251
    :cond_8
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 6252
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    if-nez v1, :cond_9

    move v1, v2

    goto :goto_4

    :cond_9
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    array-length v1, v1

    :goto_4
    add-int/2addr v3, v1

    .line 6253
    new-array v3, v3, [I

    if-eqz v1, :cond_a

    .line 6255
    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6257
    :cond_a
    :goto_5
    array-length v2, v3

    if-ge v1, v2, :cond_b

    .line 6258
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 6260
    :cond_b
    iput-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    .line 6261
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 6226
    :cond_c
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 6227
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    if-nez v1, :cond_d

    move v1, v2

    goto :goto_6

    :cond_d
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    array-length v1, v1

    :goto_6
    add-int/2addr v0, v1

    .line 6228
    new-array v0, v0, [I

    if-eqz v1, :cond_e

    .line 6230
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6232
    :cond_e
    :goto_7
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_f

    .line 6233
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    aput v2, v0, v1

    .line 6234
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 6237
    :cond_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    aput v2, v0, v1

    .line 6238
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    goto/16 :goto_0

    .line 6202
    :cond_10
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 6203
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v0

    .line 6206
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    move v3, v2

    .line 6207
    :goto_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_11

    .line 6208
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 6211
    :cond_11
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 6212
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    if-nez v1, :cond_12

    move v1, v2

    goto :goto_9

    :cond_12
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    array-length v1, v1

    :goto_9
    add-int/2addr v3, v1

    .line 6213
    new-array v3, v3, [I

    if-eqz v1, :cond_13

    .line 6215
    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6217
    :cond_13
    :goto_a
    array-length v2, v3

    if-ge v1, v2, :cond_14

    .line 6218
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 6220
    :cond_14
    iput-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    .line 6221
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 6186
    :cond_15
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 6187
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    if-nez v1, :cond_16

    move v1, v2

    goto :goto_b

    :cond_16
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    array-length v1, v1

    :goto_b
    add-int/2addr v0, v1

    .line 6188
    new-array v0, v0, [I

    if-eqz v1, :cond_17

    .line 6190
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6192
    :cond_17
    :goto_c
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_18

    .line 6193
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    aput v2, v0, v1

    .line 6194
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 6197
    :cond_18
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    aput v2, v0, v1

    .line 6198
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    goto/16 :goto_0

    :cond_19
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6022
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object p0

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6074
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    move v2, v0

    .line 6076
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 6077
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    aget v3, v3, v0

    .line 6079
    invoke-static {v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    .line 6081
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 6082
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    move v0, v1

    .line 6083
    :goto_1
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 6084
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->path:[I

    aget v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32NoTag(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6087
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    move v2, v0

    .line 6089
    :goto_2
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 6090
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    aget v3, v3, v0

    .line 6092
    invoke-static {v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const/16 v0, 0x12

    .line 6094
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 6095
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    move v0, v1

    .line 6096
    :goto_3
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 6097
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->span:[I

    aget v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32NoTag(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 6100
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingComments:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingComments:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x3

    .line 6101
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingComments:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6103
    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->trailingComments:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->trailingComments:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x4

    .line 6104
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->trailingComments:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 6106
    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments:[Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_7

    .line 6107
    :goto_4
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_7

    .line 6108
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo$Location;->leadingDetachedComments:[Ljava/lang/String;

    aget-object v0, v0, v1

    if-eqz v0, :cond_6

    const/4 v2, 0x6

    .line 6110
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 6114
    :cond_7
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
