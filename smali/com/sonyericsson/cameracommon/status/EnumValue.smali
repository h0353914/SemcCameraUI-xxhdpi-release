.class public abstract Lcom/sonyericsson/cameracommon/status/EnumValue;
.super Ljava/lang/Object;
.source "EnumValue.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/status/CameraStatusValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lcom/sonyericsson/cameracommon/status/CameraStatusValue;"
    }
.end annotation


# instance fields
.field private final mValueString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Enum;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/status/EnumValue;->mValueString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getValueForDebug()Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/status/EnumValue;->mValueString:Ljava/lang/String;

    return-object p0
.end method

.method public putInto(Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 1

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/status/EnumValue;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/status/EnumValue;->mValueString:Ljava/lang/String;

    invoke-virtual {p1, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
