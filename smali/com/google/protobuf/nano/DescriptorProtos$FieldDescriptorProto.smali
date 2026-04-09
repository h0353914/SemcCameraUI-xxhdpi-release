.class public final Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/nano/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FieldDescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto$Label;,
        Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;


# instance fields
.field public defaultValue:Ljava/lang/String;

.field public extendee:Ljava/lang/String;

.field public jsonName:Ljava/lang/String;

.field public label:I
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto$Label;
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public number:I

.field public oneofIndex:I

.field public options:Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;

.field public type:I
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto$Type;
    .end annotation
.end field

.field public typeName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1513
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1514
    invoke-virtual {p0}, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->clear()Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    return-void
.end method

.method public static checkLabelOrThrow(I)I
    .locals 3
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto$Label;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/4 v0, 0x3

    if-gt p0, v0, :cond_0

    return p0

    .line 1450
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x25

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid enum Label"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkLabelOrThrow([I)[I
    .locals 3
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto$Label;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .line 1457
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    .line 1458
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p0, v1

    .line 1459
    invoke-static {v2}, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->checkLabelOrThrow(I)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static checkTypeOrThrow(I)I
    .locals 3
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto$Type;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v0, 0x12

    if-gt p0, v0, :cond_0

    return p0

    .line 1420
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x24

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid enum Type"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkTypeOrThrow([I)[I
    .locals 3
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto$Type;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .line 1427
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    .line 1428
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p0, v1

    .line 1429
    invoke-static {v2}, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->checkTypeOrThrow(I)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;
    .locals 2

    .line 1468
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    if-nez v0, :cond_1

    .line 1469
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 1471
    :try_start_0
    sget-object v1, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 1472
    new-array v1, v1, [Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    sput-object v1, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    .line 1474
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1476
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;
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

    .line 1697
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;
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

    .line 1691
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    return-object p0
.end method


# virtual methods
.method public clear()Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;
    .locals 2

    const-string v0, ""

    .line 1518
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->name:Ljava/lang/String;

    const/4 v0, 0x0

    .line 1519
    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->number:I

    const/4 v1, 0x1

    .line 1520
    iput v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->label:I

    .line 1521
    iput v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->type:I

    const-string v1, ""

    .line 1522
    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->typeName:Ljava/lang/String;

    const-string v1, ""

    .line 1523
    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->extendee:Ljava/lang/String;

    const-string v1, ""

    .line 1524
    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->defaultValue:Ljava/lang/String;

    .line 1525
    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->oneofIndex:I

    const-string v0, ""

    .line 1526
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->jsonName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 1527
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;

    .line 1528
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 1529
    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .line 1571
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 1572
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->name:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->name:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1573
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->name:Ljava/lang/String;

    .line 1574
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1576
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->extendee:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->extendee:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    .line 1577
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->extendee:Ljava/lang/String;

    .line 1578
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1580
    :cond_1
    iget v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->number:I

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 1581
    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->number:I

    .line 1582
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1584
    :cond_2
    iget v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->label:I

    if-eq v1, v2, :cond_3

    const/4 v1, 0x4

    .line 1585
    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->label:I

    .line 1586
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1588
    :cond_3
    iget v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->type:I

    if-eq v1, v2, :cond_4

    const/4 v1, 0x5

    .line 1589
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->type:I

    .line 1590
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1592
    :cond_4
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->typeName:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->typeName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x6

    .line 1593
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->typeName:Ljava/lang/String;

    .line 1594
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1596
    :cond_5
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->defaultValue:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->defaultValue:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x7

    .line 1597
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->defaultValue:Ljava/lang/String;

    .line 1598
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1600
    :cond_6
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;

    if-eqz v1, :cond_7

    const/16 v1, 0x8

    .line 1601
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;

    .line 1602
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1604
    :cond_7
    iget v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->oneofIndex:I

    if-eqz v1, :cond_8

    const/16 v1, 0x9

    .line 1605
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->oneofIndex:I

    .line 1606
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1608
    :cond_8
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->jsonName:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->jsonName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0xa

    .line 1609
    iget-object p0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->jsonName:Ljava/lang/String;

    .line 1610
    invoke-static {v1, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result p0

    add-int/2addr v0, p0

    :cond_9
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;
    .locals 3
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

    .line 1620
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1625
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 1682
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->jsonName:Ljava/lang/String;

    goto :goto_0

    .line 1678
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->oneofIndex:I

    goto :goto_0

    .line 1671
    :sswitch_2
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;

    if-nez v0, :cond_1

    .line 1672
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;

    .line 1674
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1667
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->defaultValue:Ljava/lang/String;

    goto :goto_0

    .line 1663
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->typeName:Ljava/lang/String;

    goto :goto_0

    .line 1653
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 1655
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->checkTypeOrThrow(I)I

    move-result v2

    iput v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->type:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1657
    :catch_0
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 1658
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 1643
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 1645
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->checkLabelOrThrow(I)I

    move-result v2

    iput v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->label:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1647
    :catch_1
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 1648
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 1639
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->number:I

    goto :goto_0

    .line 1635
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->extendee:Ljava/lang/String;

    goto :goto_0

    .line 1631
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->name:Ljava/lang/String;

    goto :goto_0

    :sswitch_a
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0xa -> :sswitch_9
        0x12 -> :sswitch_8
        0x18 -> :sswitch_7
        0x20 -> :sswitch_6
        0x28 -> :sswitch_5
        0x32 -> :sswitch_4
        0x3a -> :sswitch_3
        0x42 -> :sswitch_2
        0x48 -> :sswitch_1
        0x52 -> :sswitch_0
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

    .line 1372
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;

    move-result-object p0

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
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

    .line 1536
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->name:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->name:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1537
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->name:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1539
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->extendee:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->extendee:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 1540
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->extendee:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1542
    :cond_1
    iget v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->number:I

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 1543
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->number:I

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1545
    :cond_2
    iget v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->label:I

    if-eq v0, v1, :cond_3

    const/4 v0, 0x4

    .line 1546
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->label:I

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1548
    :cond_3
    iget v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->type:I

    if-eq v0, v1, :cond_4

    const/4 v0, 0x5

    .line 1549
    iget v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->type:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1551
    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->typeName:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->typeName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x6

    .line 1552
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->typeName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1554
    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->defaultValue:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->defaultValue:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x7

    .line 1555
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->defaultValue:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1557
    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    .line 1558
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->options:Lcom/google/protobuf/nano/DescriptorProtos$FieldOptions;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1560
    :cond_7
    iget v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->oneofIndex:I

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    .line 1561
    iget v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->oneofIndex:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1563
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->jsonName:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->jsonName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0xa

    .line 1564
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$FieldDescriptorProto;->jsonName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1566
    :cond_9
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
