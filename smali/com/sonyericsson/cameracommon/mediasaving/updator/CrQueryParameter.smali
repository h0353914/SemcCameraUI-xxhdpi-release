.class public final Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;
.super Ljava/lang/Object;
.source "CrQueryParameter.java"


# instance fields
.field public limit:I

.field public offset:I

.field public projection:[Ljava/lang/String;

.field public selectionArgs:[Ljava/lang/CharSequence;

.field public sortOrder:Ljava/lang/String;

.field public where:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->selectionArgs:[Ljava/lang/CharSequence;

    .line 42
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->sortOrder:Ljava/lang/String;

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->limit:I

    .line 52
    iput v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->offset:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 9

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    const-string v2, ","

    const-string v3, "] "

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 58
    const-string v1, "project:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    array-length v5, v1

    move v6, v4

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, v1, v6

    .line 60
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    const-string v5, " "

    if-eqz v1, :cond_2

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "where:"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->selectionArgs:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    .line 68
    const-string v1, "selectionarg:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->selectionArgs:[Ljava/lang/CharSequence;

    array-length v6, v1

    :goto_1
    if-ge v4, v6, :cond_3

    aget-object v7, v1, v4

    .line 70
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 72
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    :cond_4
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->sortOrder:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sort:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->sortOrder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "limit:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->limit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "offset:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->offset:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
