.class abstract Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;
.super Ljava/lang/Object;
.source "UserSettingValueHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ParameterState"
.end annotation


# instance fields
.field protected mCurrentValue:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected mOriginalValue:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected mRecommendedValue:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;)V"
        }
    .end annotation

    .line 201
    iput-object p1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;->setCurrentValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 203
    invoke-virtual {p0, p3}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;->setOriginalValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 204
    invoke-virtual {p0, p4}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;->setRecommendedValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    return-void
.end method


# virtual methods
.method public abstract applyCurrentValue()V
.end method

.method public abstract applyRecommendedValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public dumpStackTrace()V
    .locals 3

    .line 208
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    .line 209
    const-string v0, "## dump stack trace ..."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 210
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "trace:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract forceChange(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public final getCurrentValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 227
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;->mCurrentValue:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    return-object p0
.end method

.method public final getOriginalValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 231
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;->mOriginalValue:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    return-object p0
.end method

.method public final getRecommendedValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 239
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;->mRecommendedValue:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    return-object p0
.end method

.method public abstract reset()Z
.end method

.method public final setCurrentValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;->mCurrentValue:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    if-eq v0, p1, :cond_0

    .line 217
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->-$$Nest$fputmChanged(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Z)V

    :cond_0
    if-nez p1, :cond_1

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] setCurrentValue() mCurrentValue: null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;->dumpStackTrace()V

    .line 223
    :cond_1
    iput-object p1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;->mCurrentValue:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    return-void
.end method

.method public final setOriginalValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 235
    iput-object p1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;->mOriginalValue:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    return-void
.end method

.method public final setRecommendedValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 243
    iput-object p1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;->mRecommendedValue:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    return-void
.end method
