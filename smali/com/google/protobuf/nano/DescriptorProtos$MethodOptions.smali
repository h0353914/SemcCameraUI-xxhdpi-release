.class public final Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/nano/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MethodOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions$IdempotencyLevel;,
        Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions$TokenUnit;,
        Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions$LogLevel;,
        Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions$Format;,
        Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions$SecurityLevel;,
        Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions$Protocol;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;


# instance fields
.field public clientLogging:I

.field public clientStreaming:Z

.field public deadline:D

.field public deprecated:Z

.field public duplicateSuppression:Z

.field public endUserCredsRequested:Z

.field public failFast:Z

.field public goLegacyChannelApi:Z

.field public idempotencyLevel:I
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions$IdempotencyLevel;
    .end annotation
.end field

.field public legacyClientInitialTokens:J

.field public legacyResultType:Ljava/lang/String;

.field public legacyServerInitialTokens:J

.field public legacyStreamType:Ljava/lang/String;

.field public legacyTokenUnit:I
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions$TokenUnit;
    .end annotation
.end field

.field public logLevel:I
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions$LogLevel;
    .end annotation
.end field

.field public protocol:I
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions$Protocol;
    .end annotation
.end field

.field public requestFormat:I
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions$Format;
    .end annotation
.end field

.field public responseFormat:I
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions$Format;
    .end annotation
.end field

.field public securityLabel:Ljava/lang/String;

.field public securityLevel:I
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions$SecurityLevel;
    .end annotation
.end field

.field public serverLogging:I

.field public serverStreaming:Z

.field public streamType:Ljava/lang/String;

.field public uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4965
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 4966
    invoke-virtual {p0}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->clear()Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;

    return-void
.end method

.method public static checkFormatOrThrow(I)I
    .locals 3
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions$Format;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-ltz p0, :cond_0

    const/4 v0, 0x1

    if-gt p0, v0, :cond_0

    return p0

    .line 4763
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x26

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid enum Format"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkFormatOrThrow([I)[I
    .locals 3
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions$Format;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .line 4770
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    .line 4771
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p0, v1

    .line 4772
    invoke-static {v2}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->checkFormatOrThrow(I)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static checkIdempotencyLevelOrThrow(I)I
    .locals 3
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions$IdempotencyLevel;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-ltz p0, :cond_0

    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    return p0

    .line 4855
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x30

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid enum IdempotencyLevel"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkIdempotencyLevelOrThrow([I)[I
    .locals 3
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions$IdempotencyLevel;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .line 4862
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    .line 4863
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p0, v1

    .line 4864
    invoke-static {v2}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->checkIdempotencyLevelOrThrow(I)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static checkLogLevelOrThrow(I)I
    .locals 3
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions$LogLevel;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-ltz p0, :cond_0

    const/4 v0, 0x4

    if-gt p0, v0, :cond_0

    return p0

    .line 4797
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x28

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid enum LogLevel"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkLogLevelOrThrow([I)[I
    .locals 3
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions$LogLevel;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .line 4804
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    .line 4805
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p0, v1

    .line 4806
    invoke-static {v2}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->checkLogLevelOrThrow(I)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static checkProtocolOrThrow(I)I
    .locals 3
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions$Protocol;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-ltz p0, :cond_0

    const/4 v0, 0x1

    if-gt p0, v0, :cond_0

    return p0

    .line 4703
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x28

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid enum Protocol"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkProtocolOrThrow([I)[I
    .locals 3
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions$Protocol;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .line 4710
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    .line 4711
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p0, v1

    .line 4712
    invoke-static {v2}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->checkProtocolOrThrow(I)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static checkSecurityLevelOrThrow(I)I
    .locals 3
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions$SecurityLevel;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-ltz p0, :cond_0

    const/4 v0, 0x3

    if-gt p0, v0, :cond_0

    return p0

    .line 4735
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid enum SecurityLevel"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkSecurityLevelOrThrow([I)[I
    .locals 3
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions$SecurityLevel;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .line 4742
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    .line 4743
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p0, v1

    .line 4744
    invoke-static {v2}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->checkSecurityLevelOrThrow(I)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static checkTokenUnitOrThrow(I)I
    .locals 3
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions$TokenUnit;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-ltz p0, :cond_0

    const/4 v0, 0x1

    if-gt p0, v0, :cond_0

    return p0

    .line 4825
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x29

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid enum TokenUnit"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkTokenUnitOrThrow([I)[I
    .locals 3
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions$TokenUnit;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .line 4832
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    .line 4833
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p0, v1

    .line 4834
    invoke-static {v2}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->checkTokenUnitOrThrow(I)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;
    .locals 2

    .line 4873
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;

    if-nez v0, :cond_1

    .line 4874
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 4876
    :try_start_0
    sget-object v1, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 4877
    new-array v1, v1, [Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;

    sput-object v1, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;

    .line 4879
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 4881
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->_emptyArray:[Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;
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

    .line 5372
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;
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

    .line 5366
    new-instance v0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;

    invoke-direct {v0}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;

    return-object p0
.end method


# virtual methods
.method public clear()Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;
    .locals 3

    const/4 v0, 0x0

    .line 4970
    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->protocol:I

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    .line 4971
    iput-wide v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->deadline:D

    .line 4972
    iput-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->duplicateSuppression:Z

    .line 4973
    iput-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->failFast:Z

    .line 4974
    iput-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->endUserCredsRequested:Z

    const/16 v1, 0x100

    .line 4975
    iput v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->clientLogging:I

    .line 4976
    iput v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->serverLogging:I

    .line 4977
    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->securityLevel:I

    .line 4978
    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->responseFormat:I

    .line 4979
    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->requestFormat:I

    const-string v1, ""

    .line 4980
    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->streamType:Ljava/lang/String;

    const-string v1, ""

    .line 4981
    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->securityLabel:Ljava/lang/String;

    .line 4982
    iput-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->clientStreaming:Z

    .line 4983
    iput-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->serverStreaming:Z

    const-string v1, ""

    .line 4984
    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyStreamType:Ljava/lang/String;

    const-string v1, ""

    .line 4985
    iput-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyResultType:Ljava/lang/String;

    .line 4986
    iput-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->goLegacyChannelApi:Z

    const-wide/16 v1, -0x1

    .line 4987
    iput-wide v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyClientInitialTokens:J

    .line 4988
    iput-wide v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyServerInitialTokens:J

    const/4 v1, 0x1

    .line 4989
    iput v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyTokenUnit:I

    const/4 v1, 0x2

    .line 4990
    iput v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->logLevel:I

    .line 4991
    iput-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->deprecated:Z

    .line 4992
    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->idempotencyLevel:I

    .line 4993
    invoke-static {}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;->emptyArray()[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    const/4 v0, 0x0

    .line 4994
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 4995
    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 7

    .line 5085
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 5086
    iget v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->protocol:I

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    .line 5087
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->protocol:I

    .line 5088
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5090
    :cond_0
    iget-wide v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->deadline:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    .line 5091
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    .line 5092
    iget-wide v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->deadline:D

    .line 5093
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 5095
    :cond_1
    iget-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->duplicateSuppression:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x9

    .line 5096
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->duplicateSuppression:Z

    .line 5097
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5099
    :cond_2
    iget-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->failFast:Z

    if-eqz v1, :cond_3

    const/16 v1, 0xa

    .line 5100
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->failFast:Z

    .line 5101
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5103
    :cond_3
    iget v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->clientLogging:I

    const/16 v2, 0x100

    if-eq v1, v2, :cond_4

    const/16 v1, 0xb

    .line 5104
    iget v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->clientLogging:I

    .line 5105
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeSInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5107
    :cond_4
    iget v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->serverLogging:I

    if-eq v1, v2, :cond_5

    const/16 v1, 0xc

    .line 5108
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->serverLogging:I

    .line 5109
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeSInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5111
    :cond_5
    iget v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->securityLevel:I

    if-eqz v1, :cond_6

    const/16 v1, 0xd

    .line 5112
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->securityLevel:I

    .line 5113
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5115
    :cond_6
    iget v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->responseFormat:I

    if-eqz v1, :cond_7

    const/16 v1, 0xf

    .line 5116
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->responseFormat:I

    .line 5117
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5119
    :cond_7
    iget v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->requestFormat:I

    if-eqz v1, :cond_8

    const/16 v1, 0x11

    .line 5120
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->requestFormat:I

    .line 5121
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5123
    :cond_8
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->streamType:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->streamType:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0x12

    .line 5124
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->streamType:Ljava/lang/String;

    .line 5125
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5127
    :cond_9
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->securityLabel:Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->securityLabel:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const/16 v1, 0x13

    .line 5128
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->securityLabel:Ljava/lang/String;

    .line 5129
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5131
    :cond_a
    iget-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->clientStreaming:Z

    if-eqz v1, :cond_b

    const/16 v1, 0x14

    .line 5132
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->clientStreaming:Z

    .line 5133
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5135
    :cond_b
    iget-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->serverStreaming:Z

    if-eqz v1, :cond_c

    const/16 v1, 0x15

    .line 5136
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->serverStreaming:Z

    .line 5137
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5139
    :cond_c
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyStreamType:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyStreamType:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const/16 v1, 0x16

    .line 5140
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyStreamType:Ljava/lang/String;

    .line 5141
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5143
    :cond_d
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyResultType:Ljava/lang/String;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyResultType:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const/16 v1, 0x17

    .line 5144
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyResultType:Ljava/lang/String;

    .line 5145
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5147
    :cond_e
    iget-wide v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyClientInitialTokens:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_f

    const/16 v1, 0x18

    .line 5148
    iget-wide v5, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyClientInitialTokens:J

    .line 5149
    invoke-static {v1, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5151
    :cond_f
    iget-wide v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyServerInitialTokens:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_10

    const/16 v1, 0x19

    .line 5152
    iget-wide v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyServerInitialTokens:J

    .line 5153
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5155
    :cond_10
    iget-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->endUserCredsRequested:Z

    if-eqz v1, :cond_11

    const/16 v1, 0x1a

    .line 5156
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->endUserCredsRequested:Z

    .line 5157
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5159
    :cond_11
    iget v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->logLevel:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_12

    const/16 v1, 0x1b

    .line 5160
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->logLevel:I

    .line 5161
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5163
    :cond_12
    iget v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyTokenUnit:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_13

    const/16 v1, 0x1c

    .line 5164
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyTokenUnit:I

    .line 5165
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5167
    :cond_13
    iget-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->goLegacyChannelApi:Z

    if-eqz v1, :cond_14

    const/16 v1, 0x1d

    .line 5168
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->goLegacyChannelApi:Z

    .line 5169
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5171
    :cond_14
    iget-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->deprecated:Z

    if-eqz v1, :cond_15

    const/16 v1, 0x21

    .line 5172
    iget-boolean v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->deprecated:Z

    .line 5173
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5175
    :cond_15
    iget v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->idempotencyLevel:I

    if-eqz v1, :cond_16

    const/16 v1, 0x22

    .line 5176
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->idempotencyLevel:I

    .line 5177
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5179
    :cond_16
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v1, v1

    if-lez v1, :cond_18

    const/4 v1, 0x0

    .line 5180
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v2, v2

    if-ge v1, v2, :cond_18

    .line 5181
    iget-object v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    aget-object v2, v2, v1

    if-eqz v2, :cond_17

    const/16 v3, 0x3e7

    .line 5184
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_18
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;
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

    .line 5196
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 5201
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_0
    const/16 v0, 0x1f3a

    .line 5342
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 5343
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    .line 5344
    new-array v0, v0, [Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-eqz v1, :cond_2

    .line 5347
    iget-object v3, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5349
    :cond_2
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_3

    .line 5350
    new-instance v2, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-direct {v2}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;-><init>()V

    aput-object v2, v0, v1

    .line 5351
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 5352
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5355
    :cond_3
    new-instance v2, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    invoke-direct {v2}, Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;-><init>()V

    aput-object v2, v0, v1

    .line 5356
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 5357
    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    goto :goto_0

    .line 5331
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 5333
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->checkIdempotencyLevelOrThrow(I)I

    move-result v2

    iput v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->idempotencyLevel:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5335
    :catch_0
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 5336
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 5327
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->deprecated:Z

    goto :goto_0

    .line 5323
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->goLegacyChannelApi:Z

    goto :goto_0

    .line 5313
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 5315
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->checkTokenUnitOrThrow(I)I

    move-result v2

    iput v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyTokenUnit:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 5317
    :catch_1
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 5318
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 5303
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 5305
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->checkLogLevelOrThrow(I)I

    move-result v2

    iput v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->logLevel:I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 5307
    :catch_2
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 5308
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 5299
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->endUserCredsRequested:Z

    goto/16 :goto_0

    .line 5295
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyServerInitialTokens:J

    goto/16 :goto_0

    .line 5291
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyClientInitialTokens:J

    goto/16 :goto_0

    .line 5287
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyResultType:Ljava/lang/String;

    goto/16 :goto_0

    .line 5283
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyStreamType:Ljava/lang/String;

    goto/16 :goto_0

    .line 5279
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->serverStreaming:Z

    goto/16 :goto_0

    .line 5275
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->clientStreaming:Z

    goto/16 :goto_0

    .line 5271
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->securityLabel:Ljava/lang/String;

    goto/16 :goto_0

    .line 5267
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->streamType:Ljava/lang/String;

    goto/16 :goto_0

    .line 5257
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 5259
    :try_start_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->checkFormatOrThrow(I)I

    move-result v2

    iput v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->requestFormat:I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 5261
    :catch_3
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 5262
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 5247
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 5249
    :try_start_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->checkFormatOrThrow(I)I

    move-result v2

    iput v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->responseFormat:I
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 5251
    :catch_4
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 5252
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 5237
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 5239
    :try_start_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->checkSecurityLevelOrThrow(I)I

    move-result v2

    iput v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->securityLevel:I
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 5241
    :catch_5
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 5242
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 5233
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readSInt32()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->serverLogging:I

    goto/16 :goto_0

    .line 5229
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readSInt32()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->clientLogging:I

    goto/16 :goto_0

    .line 5225
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->failFast:Z

    goto/16 :goto_0

    .line 5221
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->duplicateSuppression:Z

    goto/16 :goto_0

    .line 5217
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->deadline:D

    goto/16 :goto_0

    .line 5207
    :sswitch_17
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 5209
    :try_start_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->checkProtocolOrThrow(I)I

    move-result v2

    iput v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->protocol:I
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_0

    .line 5211
    :catch_6
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 5212
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    :sswitch_18
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_18
        0x38 -> :sswitch_17
        0x41 -> :sswitch_16
        0x48 -> :sswitch_15
        0x50 -> :sswitch_14
        0x58 -> :sswitch_13
        0x60 -> :sswitch_12
        0x68 -> :sswitch_11
        0x78 -> :sswitch_10
        0x88 -> :sswitch_f
        0x92 -> :sswitch_e
        0x9a -> :sswitch_d
        0xa0 -> :sswitch_c
        0xa8 -> :sswitch_b
        0xb2 -> :sswitch_a
        0xba -> :sswitch_9
        0xc0 -> :sswitch_8
        0xc8 -> :sswitch_7
        0xd0 -> :sswitch_6
        0xd8 -> :sswitch_5
        0xe0 -> :sswitch_4
        0xe8 -> :sswitch_3
        0x108 -> :sswitch_2
        0x110 -> :sswitch_1
        0x1f3a -> :sswitch_0
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

    .line 4687
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;

    move-result-object p0

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
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

    .line 5002
    iget v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->protocol:I

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    .line 5003
    iget v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->protocol:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5005
    :cond_0
    iget-wide v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->deadline:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 5006
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    .line 5007
    iget-wide v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->deadline:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 5009
    :cond_1
    iget-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->duplicateSuppression:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x9

    .line 5010
    iget-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->duplicateSuppression:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5012
    :cond_2
    iget-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->failFast:Z

    if-eqz v0, :cond_3

    const/16 v0, 0xa

    .line 5013
    iget-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->failFast:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5015
    :cond_3
    iget v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->clientLogging:I

    const/16 v1, 0x100

    if-eq v0, v1, :cond_4

    const/16 v0, 0xb

    .line 5016
    iget v2, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->clientLogging:I

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeSInt32(II)V

    .line 5018
    :cond_4
    iget v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->serverLogging:I

    if-eq v0, v1, :cond_5

    const/16 v0, 0xc

    .line 5019
    iget v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->serverLogging:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeSInt32(II)V

    .line 5021
    :cond_5
    iget v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->securityLevel:I

    if-eqz v0, :cond_6

    const/16 v0, 0xd

    .line 5022
    iget v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->securityLevel:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5024
    :cond_6
    iget v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->responseFormat:I

    if-eqz v0, :cond_7

    const/16 v0, 0xf

    .line 5025
    iget v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->responseFormat:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5027
    :cond_7
    iget v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->requestFormat:I

    if-eqz v0, :cond_8

    const/16 v0, 0x11

    .line 5028
    iget v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->requestFormat:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5030
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->streamType:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->streamType:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0x12

    .line 5031
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->streamType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5033
    :cond_9
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->securityLabel:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->securityLabel:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0x13

    .line 5034
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->securityLabel:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5036
    :cond_a
    iget-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->clientStreaming:Z

    if-eqz v0, :cond_b

    const/16 v0, 0x14

    .line 5037
    iget-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->clientStreaming:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5039
    :cond_b
    iget-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->serverStreaming:Z

    if-eqz v0, :cond_c

    const/16 v0, 0x15

    .line 5040
    iget-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->serverStreaming:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5042
    :cond_c
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyStreamType:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyStreamType:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const/16 v0, 0x16

    .line 5043
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyStreamType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5045
    :cond_d
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyResultType:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyResultType:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const/16 v0, 0x17

    .line 5046
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyResultType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5048
    :cond_e
    iget-wide v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyClientInitialTokens:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    const/16 v0, 0x18

    .line 5049
    iget-wide v4, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyClientInitialTokens:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 5051
    :cond_f
    iget-wide v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyServerInitialTokens:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    const/16 v0, 0x19

    .line 5052
    iget-wide v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyServerInitialTokens:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 5054
    :cond_10
    iget-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->endUserCredsRequested:Z

    if-eqz v0, :cond_11

    const/16 v0, 0x1a

    .line 5055
    iget-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->endUserCredsRequested:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5057
    :cond_11
    iget v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->logLevel:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_12

    const/16 v0, 0x1b

    .line 5058
    iget v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->logLevel:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5060
    :cond_12
    iget v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyTokenUnit:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_13

    const/16 v0, 0x1c

    .line 5061
    iget v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->legacyTokenUnit:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5063
    :cond_13
    iget-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->goLegacyChannelApi:Z

    if-eqz v0, :cond_14

    const/16 v0, 0x1d

    .line 5064
    iget-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->goLegacyChannelApi:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5066
    :cond_14
    iget-boolean v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->deprecated:Z

    if-eqz v0, :cond_15

    const/16 v0, 0x21

    .line 5067
    iget-boolean v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->deprecated:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 5069
    :cond_15
    iget v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->idempotencyLevel:I

    if-eqz v0, :cond_16

    const/16 v0, 0x22

    .line 5070
    iget v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->idempotencyLevel:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5072
    :cond_16
    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v0, v0

    if-lez v0, :cond_18

    const/4 v0, 0x0

    .line 5073
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    array-length v1, v1

    if-ge v0, v1, :cond_18

    .line 5074
    iget-object v1, p0, Lcom/google/protobuf/nano/DescriptorProtos$MethodOptions;->uninterpretedOption:[Lcom/google/protobuf/nano/DescriptorProtos$UninterpretedOption;

    aget-object v1, v1, v0

    if-eqz v1, :cond_17

    const/16 v2, 0x3e7

    .line 5076
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5080
    :cond_18
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
