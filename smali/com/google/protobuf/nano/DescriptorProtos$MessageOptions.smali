.class public final Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/nano/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessageOptions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;


# instance fields
.field public deprecated:Z

.field public experimentalJavaBuilderInterface:[Ljava/lang/String;

.field public experimentalJavaInterfaceExtends:[Ljava/lang/String;

.field public experimentalJavaMessageInterface:[Ljava/lang/String;

.field public mapEntry:Z

.field public messageSetWireFormat:Z

.field public noStandardDescriptorAccessor:Z

.field public uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3419
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 3420
    invoke-virtual {p0}, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->clear()Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    return-void
.end method

.method public static emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;
    .locals 2

    .line 3382
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    if-nez v0, :cond_1

    .line 3383
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 3385
    :try_start_0
    sget-object v1, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 3386
    new-array v1, v1, [Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    sput-object v1, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    .line 3388
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3390
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;
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

    .line 3674
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;
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

    .line 3668
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

    return-object p0
.end method


# virtual methods
.method public clear()Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;
    .locals 1

    .line 3424
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaMessageInterface:[Ljava/lang/String;

    .line 3425
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaBuilderInterface:[Ljava/lang/String;

    .line 3426
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaInterfaceExtends:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 3427
    iput-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->messageSetWireFormat:Z

    .line 3428
    iput-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->noStandardDescriptorAccessor:Z

    .line 3429
    iput-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->deprecated:Z

    .line 3430
    iput-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->mapEntry:Z

    .line 3431
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    const/4 v0, 0x0

    .line 3432
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 3433
    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 7

    .line 3489
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 3490
    iget-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->messageSetWireFormat:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3491
    iget-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->messageSetWireFormat:Z

    .line 3492
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3494
    :cond_0
    iget-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->noStandardDescriptorAccessor:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 3495
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->noStandardDescriptorAccessor:Z

    .line 3496
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3498
    :cond_1
    iget-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->deprecated:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 3499
    iget-boolean v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->deprecated:Z

    .line 3500
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3502
    :cond_2
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaMessageInterface:[Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaMessageInterface:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_5

    move v1, v3

    move v4, v1

    move v5, v4

    .line 3505
    :goto_0
    iget-object v6, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaMessageInterface:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_4

    .line 3506
    iget-object v6, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaMessageInterface:[Ljava/lang/String;

    aget-object v6, v6, v1

    if-eqz v6, :cond_3

    add-int/lit8 v5, v5, 0x1

    .line 3510
    invoke-static {v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v4, v6

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    add-int/2addr v0, v4

    mul-int/2addr v5, v2

    add-int/2addr v0, v5

    .line 3516
    :cond_5
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaBuilderInterface:[Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaBuilderInterface:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_8

    move v1, v3

    move v4, v1

    move v5, v4

    .line 3519
    :goto_1
    iget-object v6, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaBuilderInterface:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_7

    .line 3520
    iget-object v6, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaBuilderInterface:[Ljava/lang/String;

    aget-object v6, v6, v1

    if-eqz v6, :cond_6

    add-int/lit8 v5, v5, 0x1

    .line 3524
    invoke-static {v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v4, v6

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    add-int/2addr v0, v4

    mul-int/2addr v5, v2

    add-int/2addr v0, v5

    .line 3530
    :cond_8
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaInterfaceExtends:[Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaInterfaceExtends:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_b

    move v1, v3

    move v4, v1

    move v5, v4

    .line 3533
    :goto_2
    iget-object v6, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaInterfaceExtends:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_a

    .line 3534
    iget-object v6, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaInterfaceExtends:[Ljava/lang/String;

    aget-object v6, v6, v1

    if-eqz v6, :cond_9

    add-int/lit8 v5, v5, 0x1

    .line 3538
    invoke-static {v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v4, v6

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_a
    add-int/2addr v0, v4

    mul-int/2addr v2, v5

    add-int/2addr v0, v2

    .line 3544
    :cond_b
    iget-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->mapEntry:Z

    if-eqz v1, :cond_c

    const/4 v1, 0x7

    .line 3545
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->mapEntry:Z

    .line 3546
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3548
    :cond_c
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v1, v1

    if-lez v1, :cond_e

    .line 3549
    :goto_3
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v1, v1

    if-ge v3, v1, :cond_e

    .line 3550
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    aget-object v1, v1, v3

    if-eqz v1, :cond_d

    const/16 v2, 0x3e7

    .line 3553
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_e
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;
    .locals 4
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

    .line 3565
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_15

    const/16 v1, 0x8

    if-eq v0, v1, :cond_14

    const/16 v1, 0x10

    if-eq v0, v1, :cond_13

    const/16 v1, 0x18

    if-eq v0, v1, :cond_12

    const/16 v1, 0x22

    const/4 v2, 0x0

    if-eq v0, v1, :cond_e

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_a

    const/16 v1, 0x32

    if-eq v0, v1, :cond_6

    const/16 v1, 0x38

    if-eq v0, v1, :cond_5

    const/16 v1, 0x1f3a

    if-eq v0, v1, :cond_1

    .line 3570
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 3644
    :cond_1
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 3645
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    .line 3646
    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-eqz v1, :cond_3

    .line 3649
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3651
    :cond_3
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_4

    .line 3652
    new-instance v2, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-direct {v2}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;-><init>()V

    aput-object v2, v0, v1

    .line 3653
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 3654
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3657
    :cond_4
    new-instance v2, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-direct {v2}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;-><init>()V

    aput-object v2, v0, v1

    .line 3658
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 3659
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    goto :goto_0

    .line 3639
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->mapEntry:Z

    goto :goto_0

    .line 3623
    :cond_6
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 3624
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaInterfaceExtends:[Ljava/lang/String;

    if-nez v1, :cond_7

    move v1, v2

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaInterfaceExtends:[Ljava/lang/String;

    array-length v1, v1

    :goto_3
    add-int/2addr v0, v1

    .line 3625
    new-array v0, v0, [Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 3627
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaInterfaceExtends:[Ljava/lang/String;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3629
    :cond_8
    :goto_4
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_9

    .line 3630
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 3631
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 3634
    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 3635
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaInterfaceExtends:[Ljava/lang/String;

    goto/16 :goto_0

    .line 3606
    :cond_a
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 3607
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaBuilderInterface:[Ljava/lang/String;

    if-nez v1, :cond_b

    move v1, v2

    goto :goto_5

    :cond_b
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaBuilderInterface:[Ljava/lang/String;

    array-length v1, v1

    :goto_5
    add-int/2addr v0, v1

    .line 3608
    new-array v0, v0, [Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 3610
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaBuilderInterface:[Ljava/lang/String;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3612
    :cond_c
    :goto_6
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_d

    .line 3613
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 3614
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 3617
    :cond_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 3618
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaBuilderInterface:[Ljava/lang/String;

    goto/16 :goto_0

    .line 3589
    :cond_e
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 3590
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaMessageInterface:[Ljava/lang/String;

    if-nez v1, :cond_f

    move v1, v2

    goto :goto_7

    :cond_f
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaMessageInterface:[Ljava/lang/String;

    array-length v1, v1

    :goto_7
    add-int/2addr v0, v1

    .line 3591
    new-array v0, v0, [Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 3593
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaMessageInterface:[Ljava/lang/String;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3595
    :cond_10
    :goto_8
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_11

    .line 3596
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 3597
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 3600
    :cond_11
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 3601
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaMessageInterface:[Ljava/lang/String;

    goto/16 :goto_0

    .line 3584
    :cond_12
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->deprecated:Z

    goto/16 :goto_0

    .line 3580
    :cond_13
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->noStandardDescriptorAccessor:Z

    goto/16 :goto_0

    .line 3576
    :cond_14
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->messageSetWireFormat:Z

    goto/16 :goto_0

    :cond_15
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

    .line 3376
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;

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

    .line 3440
    iget-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->messageSetWireFormat:Z

    if-eqz v0, :cond_0

    .line 3441
    iget-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->messageSetWireFormat:Z

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3443
    :cond_0
    iget-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->noStandardDescriptorAccessor:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 3444
    iget-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->noStandardDescriptorAccessor:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3446
    :cond_1
    iget-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->deprecated:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 3447
    iget-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->deprecated:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3449
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaMessageInterface:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaMessageInterface:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    .line 3450
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaMessageInterface:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 3451
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaMessageInterface:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_3

    const/4 v3, 0x4

    .line 3453
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3457
    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaBuilderInterface:[Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaBuilderInterface:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_6

    move v0, v1

    .line 3458
    :goto_1
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaBuilderInterface:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_6

    .line 3459
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaBuilderInterface:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_5

    const/4 v3, 0x5

    .line 3461
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3465
    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaInterfaceExtends:[Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaInterfaceExtends:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_8

    move v0, v1

    .line 3466
    :goto_2
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaInterfaceExtends:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_8

    .line 3467
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->experimentalJavaInterfaceExtends:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_7

    const/4 v3, 0x6

    .line 3469
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3473
    :cond_8
    iget-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->mapEntry:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x7

    .line 3474
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->mapEntry:Z

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3476
    :cond_9
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v0, v0

    if-lez v0, :cond_b

    .line 3477
    :goto_3
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v0, v0

    if-ge v1, v0, :cond_b

    .line 3478
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    aget-object v0, v0, v1

    if-eqz v0, :cond_a

    const/16 v2, 0x3e7

    .line 3480
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 3484
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
