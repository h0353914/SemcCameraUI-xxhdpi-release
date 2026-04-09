.class public final Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/nano/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileDescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;


# instance fields
.field public dependency:[Ljava/lang/String;

.field public enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

.field public extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

.field public messageType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

.field public name:Ljava/lang/String;

.field public options:Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

.field public package_:Ljava/lang/String;

.field public publicDependency:[I

.field public service:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

.field public sourceCodeInfo:Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo;

.field public syntax:Ljava/lang/String;

.field public weakDependency:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 179
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 180
    invoke-virtual {p0}, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->clear()Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;

    return-void
.end method

.method public static emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;
    .locals 2

    .line 130
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;

    if-nez v0, :cond_1

    .line 131
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 133
    :try_start_0
    sget-object v1, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 134
    new-array v1, v1, [Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;

    sput-object v1, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;

    .line 136
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 138
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;
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

    .line 598
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;
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

    .line 592
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;

    return-object p0
.end method


# virtual methods
.method public clear()Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;
    .locals 2

    const-string v0, ""

    .line 184
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->name:Ljava/lang/String;

    const-string v0, ""

    .line 185
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/String;

    .line 186
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->dependency:[Ljava/lang/String;

    .line 187
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    .line 188
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    .line 189
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->messageType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    .line 190
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    .line 191
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->service:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    .line 192
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    const/4 v0, 0x0

    .line 193
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    .line 194
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->sourceCodeInfo:Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo;

    const-string v1, ""

    .line 195
    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->syntax:Ljava/lang/String;

    .line 196
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 197
    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 7

    .line 274
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 275
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->name:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->name:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->name:Ljava/lang/String;

    .line 277
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 279
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    .line 280
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/String;

    .line 281
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 283
    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->dependency:[Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->dependency:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_4

    move v1, v3

    move v4, v1

    move v5, v4

    .line 286
    :goto_0
    iget-object v6, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->dependency:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_3

    .line 287
    iget-object v6, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->dependency:[Ljava/lang/String;

    aget-object v6, v6, v1

    if-eqz v6, :cond_2

    add-int/lit8 v5, v5, 0x1

    .line 291
    invoke-static {v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v4, v6

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    add-int/2addr v0, v4

    mul-int/2addr v5, v2

    add-int/2addr v0, v5

    .line 297
    :cond_4
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->messageType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->messageType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    array-length v1, v1

    if-lez v1, :cond_7

    move v1, v0

    move v0, v3

    .line 298
    :goto_1
    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->messageType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    array-length v4, v4

    if-ge v0, v4, :cond_6

    .line 299
    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->messageType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    aget-object v4, v4, v0

    if-eqz v4, :cond_5

    const/4 v5, 0x4

    .line 302
    invoke-static {v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    move v0, v1

    .line 306
    :cond_7
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    array-length v1, v1

    if-lez v1, :cond_a

    move v1, v0

    move v0, v3

    .line 307
    :goto_2
    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    array-length v4, v4

    if-ge v0, v4, :cond_9

    .line 308
    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    aget-object v4, v4, v0

    if-eqz v4, :cond_8

    const/4 v5, 0x5

    .line 311
    invoke-static {v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    move v0, v1

    .line 315
    :cond_a
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->service:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->service:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    array-length v1, v1

    if-lez v1, :cond_d

    move v1, v0

    move v0, v3

    .line 316
    :goto_3
    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->service:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    array-length v4, v4

    if-ge v0, v4, :cond_c

    .line 317
    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->service:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    aget-object v4, v4, v0

    if-eqz v4, :cond_b

    const/4 v5, 0x6

    .line 320
    invoke-static {v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_c
    move v0, v1

    .line 324
    :cond_d
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    array-length v1, v1

    if-lez v1, :cond_10

    move v1, v0

    move v0, v3

    .line 325
    :goto_4
    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    array-length v4, v4

    if-ge v0, v4, :cond_f

    .line 326
    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    aget-object v4, v4, v0

    if-eqz v4, :cond_e

    const/4 v5, 0x7

    .line 329
    invoke-static {v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_f
    move v0, v1

    .line 333
    :cond_10
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    if-eqz v1, :cond_11

    const/16 v1, 0x8

    .line 334
    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    .line 335
    invoke-static {v1, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 337
    :cond_11
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->sourceCodeInfo:Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo;

    if-eqz v1, :cond_12

    const/16 v1, 0x9

    .line 338
    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->sourceCodeInfo:Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo;

    .line 339
    invoke-static {v1, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 341
    :cond_12
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    array-length v1, v1

    if-lez v1, :cond_14

    move v1, v3

    move v4, v1

    .line 343
    :goto_5
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    array-length v5, v5

    if-ge v1, v5, :cond_13

    .line 344
    iget-object v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    aget v5, v5, v1

    .line 346
    invoke-static {v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_13
    add-int/2addr v0, v4

    .line 349
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    array-length v1, v1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 351
    :cond_14
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    array-length v1, v1

    if-lez v1, :cond_16

    move v1, v3

    .line 353
    :goto_6
    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    array-length v4, v4

    if-ge v3, v4, :cond_15

    .line 354
    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    aget v4, v4, v3

    .line 356
    invoke-static {v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_15
    add-int/2addr v0, v1

    .line 359
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    array-length v1, v1

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 361
    :cond_16
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->syntax:Ljava/lang/String;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->syntax:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const/16 v1, 0xc

    .line 362
    iget-object p0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->syntax:Ljava/lang/String;

    .line 363
    invoke-static {v1, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result p0

    add-int/2addr v0, p0

    :cond_17
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;
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

    .line 373
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 378
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 583
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->syntax:Ljava/lang/String;

    goto :goto_0

    .line 560
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 561
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v0

    .line 564
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    move v3, v1

    .line 565
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_1

    .line 566
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 569
    :cond_1
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 570
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    array-length v2, v2

    :goto_2
    add-int/2addr v3, v2

    .line 571
    new-array v3, v3, [I

    if-eqz v2, :cond_3

    .line 573
    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 575
    :cond_3
    :goto_3
    array-length v1, v3

    if-ge v2, v1, :cond_4

    .line 576
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 578
    :cond_4
    iput-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    .line 579
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x58

    .line 544
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 545
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    if-nez v2, :cond_5

    move v2, v1

    goto :goto_4

    :cond_5
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    array-length v2, v2

    :goto_4
    add-int/2addr v0, v2

    .line 546
    new-array v0, v0, [I

    if-eqz v2, :cond_6

    .line 548
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 550
    :cond_6
    :goto_5
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_7

    .line 551
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v0, v2

    .line 552
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 555
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v0, v2

    .line 556
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    goto/16 :goto_0

    .line 520
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 521
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v0

    .line 524
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    move v3, v1

    .line 525
    :goto_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_8

    .line 526
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 529
    :cond_8
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 530
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    if-nez v2, :cond_9

    move v2, v1

    goto :goto_7

    :cond_9
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    array-length v2, v2

    :goto_7
    add-int/2addr v3, v2

    .line 531
    new-array v3, v3, [I

    if-eqz v2, :cond_a

    .line 533
    iget-object v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 535
    :cond_a
    :goto_8
    array-length v1, v3

    if-ge v2, v1, :cond_b

    .line 536
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 538
    :cond_b
    iput-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    .line 539
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_4
    const/16 v0, 0x50

    .line 504
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 505
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    if-nez v2, :cond_c

    move v2, v1

    goto :goto_9

    :cond_c
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    array-length v2, v2

    :goto_9
    add-int/2addr v0, v2

    .line 506
    new-array v0, v0, [I

    if-eqz v2, :cond_d

    .line 508
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 510
    :cond_d
    :goto_a
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_e

    .line 511
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v0, v2

    .line 512
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 515
    :cond_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v0, v2

    .line 516
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    goto/16 :goto_0

    .line 496
    :sswitch_5
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->sourceCodeInfo:Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo;

    if-nez v0, :cond_f

    .line 497
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->sourceCodeInfo:Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo;

    .line 499
    :cond_f
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->sourceCodeInfo:Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 489
    :sswitch_6
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    if-nez v0, :cond_10

    .line 490
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    .line 492
    :cond_10
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_7
    const/16 v0, 0x3a

    .line 470
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 471
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    if-nez v2, :cond_11

    move v2, v1

    goto :goto_b

    :cond_11
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    array-length v2, v2

    :goto_b
    add-int/2addr v0, v2

    .line 472
    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    if-eqz v2, :cond_12

    .line 475
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 477
    :cond_12
    :goto_c
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_13

    .line 478
    new-instance v1, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    invoke-direct {v1}, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;-><init>()V

    aput-object v1, v0, v2

    .line 479
    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 480
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 483
    :cond_13
    new-instance v1, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    invoke-direct {v1}, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;-><init>()V

    aput-object v1, v0, v2

    .line 484
    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 485
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    goto/16 :goto_0

    :sswitch_8
    const/16 v0, 0x32

    .line 450
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 451
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->service:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    if-nez v2, :cond_14

    move v2, v1

    goto :goto_d

    :cond_14
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->service:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    array-length v2, v2

    :goto_d
    add-int/2addr v0, v2

    .line 452
    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    if-eqz v2, :cond_15

    .line 455
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->service:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 457
    :cond_15
    :goto_e
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_16

    .line 458
    new-instance v1, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    invoke-direct {v1}, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;-><init>()V

    aput-object v1, v0, v2

    .line 459
    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 460
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 463
    :cond_16
    new-instance v1, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    invoke-direct {v1}, Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;-><init>()V

    aput-object v1, v0, v2

    .line 464
    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 465
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->service:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    goto/16 :goto_0

    :sswitch_9
    const/16 v0, 0x2a

    .line 430
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 431
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    if-nez v2, :cond_17

    move v2, v1

    goto :goto_f

    :cond_17
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    array-length v2, v2

    :goto_f
    add-int/2addr v0, v2

    .line 432
    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    if-eqz v2, :cond_18

    .line 435
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 437
    :cond_18
    :goto_10
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_19

    .line 438
    new-instance v1, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    invoke-direct {v1}, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;-><init>()V

    aput-object v1, v0, v2

    .line 439
    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 440
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 443
    :cond_19
    new-instance v1, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    invoke-direct {v1}, Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;-><init>()V

    aput-object v1, v0, v2

    .line 444
    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 445
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    goto/16 :goto_0

    :sswitch_a
    const/16 v0, 0x22

    .line 410
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 411
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->messageType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    if-nez v2, :cond_1a

    move v2, v1

    goto :goto_11

    :cond_1a
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->messageType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    array-length v2, v2

    :goto_11
    add-int/2addr v0, v2

    .line 412
    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    if-eqz v2, :cond_1b

    .line 415
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->messageType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 417
    :cond_1b
    :goto_12
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_1c

    .line 418
    new-instance v1, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    invoke-direct {v1}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;-><init>()V

    aput-object v1, v0, v2

    .line 419
    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 420
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 423
    :cond_1c
    new-instance v1, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    invoke-direct {v1}, Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;-><init>()V

    aput-object v1, v0, v2

    .line 424
    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 425
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->messageType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    goto/16 :goto_0

    :sswitch_b
    const/16 v0, 0x1a

    .line 393
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 394
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->dependency:[Ljava/lang/String;

    if-nez v2, :cond_1d

    move v2, v1

    goto :goto_13

    :cond_1d
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->dependency:[Ljava/lang/String;

    array-length v2, v2

    :goto_13
    add-int/2addr v0, v2

    .line 395
    new-array v0, v0, [Ljava/lang/String;

    if-eqz v2, :cond_1e

    .line 397
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->dependency:[Ljava/lang/String;

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 399
    :cond_1e
    :goto_14
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_1f

    .line 400
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 401
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 404
    :cond_1f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 405
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->dependency:[Ljava/lang/String;

    goto/16 :goto_0

    .line 388
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/String;

    goto/16 :goto_0

    .line 384
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->name:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_e
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_e
        0xa -> :sswitch_d
        0x12 -> :sswitch_c
        0x1a -> :sswitch_b
        0x22 -> :sswitch_a
        0x2a -> :sswitch_9
        0x32 -> :sswitch_8
        0x3a -> :sswitch_7
        0x42 -> :sswitch_6
        0x4a -> :sswitch_5
        0x50 -> :sswitch_4
        0x52 -> :sswitch_3
        0x58 -> :sswitch_2
        0x5a -> :sswitch_1
        0x62 -> :sswitch_0
    .end sparse-switch
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

    .line 124
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;

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

    .line 204
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->name:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->name:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 208
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->dependency:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->dependency:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    .line 211
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->dependency:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 212
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->dependency:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    const/4 v3, 0x3

    .line 214
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 218
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->messageType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->messageType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    array-length v0, v0

    if-lez v0, :cond_5

    move v0, v1

    .line 219
    :goto_1
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->messageType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 220
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->messageType:[Lcom/google/protobuf/nano/DescriptorProtos$DescriptorProto;

    aget-object v2, v2, v0

    if-eqz v2, :cond_4

    const/4 v3, 0x4

    .line 222
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 226
    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    array-length v0, v0

    if-lez v0, :cond_7

    move v0, v1

    .line 227
    :goto_2
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    array-length v2, v2

    if-ge v0, v2, :cond_7

    .line 228
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->enumType:[Lcom/google/protobuf/nano/DescriptorProtos$EnumDescriptorProto;

    aget-object v2, v2, v0

    if-eqz v2, :cond_6

    const/4 v3, 0x5

    .line 230
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 234
    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->service:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->service:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    array-length v0, v0

    if-lez v0, :cond_9

    move v0, v1

    .line 235
    :goto_3
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->service:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    array-length v2, v2

    if-ge v0, v2, :cond_9

    .line 236
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->service:[Lcom/google/protobuf/nano/DescriptorProtos$ServiceDescriptorProto;

    aget-object v2, v2, v0

    if-eqz v2, :cond_8

    const/4 v3, 0x6

    .line 238
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 242
    :cond_9
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    array-length v0, v0

    if-lez v0, :cond_b

    move v0, v1

    .line 243
    :goto_4
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    array-length v2, v2

    if-ge v0, v2, :cond_b

    .line 244
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->extension:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    aget-object v2, v2, v0

    if-eqz v2, :cond_a

    const/4 v3, 0x7

    .line 246
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 250
    :cond_b
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    if-eqz v0, :cond_c

    const/16 v0, 0x8

    .line 251
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$FileOptions;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 253
    :cond_c
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->sourceCodeInfo:Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo;

    if-eqz v0, :cond_d

    const/16 v0, 0x9

    .line 254
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->sourceCodeInfo:Lcom/google/protobuf/nano/DescriptorProtos$SourceCodeInfo;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 256
    :cond_d
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    array-length v0, v0

    if-lez v0, :cond_e

    move v0, v1

    .line 257
    :goto_5
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    array-length v2, v2

    if-ge v0, v2, :cond_e

    const/16 v2, 0xa

    .line 258
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->publicDependency:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 261
    :cond_e
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    array-length v0, v0

    if-lez v0, :cond_f

    .line 262
    :goto_6
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    array-length v0, v0

    if-ge v1, v0, :cond_f

    const/16 v0, 0xb

    .line 263
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->weakDependency:[I

    aget v2, v2, v1

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 266
    :cond_f
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->syntax:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->syntax:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const/16 v0, 0xc

    .line 267
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FileDescriptorProto;->syntax:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 269
    :cond_10
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
