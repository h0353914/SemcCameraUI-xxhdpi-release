.class Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ForceChangedState;
.super Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;
.source "UserSettingValueHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ForceChangedState"
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

    .line 290
    iput-object p1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ForceChangedState;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    .line 291
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

    .line 294
    iput-object p1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ForceChangedState;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    .line 295
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    return-void
.end method


# virtual methods
.method public applyCurrentValue()V
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ForceChangedState;->mRecommendedValue:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ForceChangedState;->mRecommendedValue:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ForceChangedState;->setCurrentValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    :cond_0
    return-void
.end method

.method public applyRecommendedValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 313
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ForceChangedState;->setCurrentValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    return-void
.end method

.method public forceChange(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 300
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ForceChangedState;->setCurrentValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    const/4 p0, 0x0

    return p0
.end method

.method public reset()Z
    .locals 5

    .line 306
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ForceChangedState;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    new-instance v1, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$NormalState;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ForceChangedState;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ForceChangedState;->mCurrentValue:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$NormalState;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->access$102(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;

    .line 307
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ForceChangedState;->this$0:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->access$002(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Z)Z

    return v0
.end method
