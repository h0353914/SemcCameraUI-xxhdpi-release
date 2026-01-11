.class public Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;
.super Ljava/lang/Object;
.source "DurationParameterSet.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DurationParameterSet"


# instance fields
.field public hour:I

.field public min:I

.field public sec:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->hour:I

    .line 26
    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->min:I

    .line 28
    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->sec:I

    return-void
.end method


# virtual methods
.method public update(I)V
    .locals 2

    .line 44
    div-int/lit16 p1, p1, 0x3e8

    .line 46
    rem-int/lit8 v0, p1, 0x3c

    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->sec:I

    sub-int/2addr p1, v0

    .line 47
    div-int/lit8 p1, p1, 0x3c

    .line 48
    rem-int/lit8 v0, p1, 0x3c

    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->min:I

    sub-int/2addr p1, v0

    .line 49
    div-int/lit8 p1, p1, 0x3c

    .line 50
    iput p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->hour:I

    const/16 v0, 0x9

    if-le p1, v0, :cond_0

    const/16 p1, 0x3b

    .line 53
    iput p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->sec:I

    .line 54
    iput p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->min:I

    .line 55
    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->hour:I

    .line 58
    :cond_0
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "getTime() "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->hour:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->min:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->sec:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void
.end method
