.class public abstract Lcom/sonyericsson/cameracommon/status/IntegerValue;
.super Ljava/lang/Object;
.source "IntegerValue.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/status/CameraStatusValue;


# instance fields
.field protected final mValue:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/sonyericsson/cameracommon/status/IntegerValue;->mValue:I

    return-void
.end method


# virtual methods
.method public getValueForDebug()Ljava/lang/String;
    .locals 0

    .line 37
    iget p0, p0, Lcom/sonyericsson/cameracommon/status/IntegerValue;->mValue:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public putInto(Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 1

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/status/IntegerValue;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget p0, p0, Lcom/sonyericsson/cameracommon/status/IntegerValue;->mValue:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method
