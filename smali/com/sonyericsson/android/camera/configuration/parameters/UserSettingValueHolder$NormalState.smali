.class Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$NormalState;
.super Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;
.source "UserSettingValueHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NormalState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder<",
        "TT;>.ParameterState;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$NormalState;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    .line 258
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)V

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;)V"
        }
    .end annotation

    .line 261
    iput-object p1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$NormalState;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    .line 262
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    return-void
.end method


# virtual methods
.method public applyCurrentValue()V
    .locals 0

    return-void
.end method

.method public applyRecommendedValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$NormalState;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    new-instance v1, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ForceChangedState;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$NormalState;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v3

    invoke-direct {v1, v2, p1, v3, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ForceChangedState;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->-$$Nest$fputmState(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;)V

    .line 280
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$NormalState;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->-$$Nest$fputmChanged(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Z)V

    return-void
.end method

.method public forceChange(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$NormalState;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    new-instance v1, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ForceChangedState;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$NormalState;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ForceChangedState;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->-$$Nest$fputmState(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;)V

    .line 268
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$NormalState;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->-$$Nest$fputmChanged(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Z)V

    return p1
.end method

.method public reset()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
