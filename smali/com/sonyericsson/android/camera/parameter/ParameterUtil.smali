.class public Lcom/sonyericsson/android/camera/parameter/ParameterUtil;
.super Ljava/lang/Object;
.source "ParameterUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ParameterUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyCurrentValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
            ">(",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 149
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    .line 150
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->getRecommendedValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->applyCurrentValue()V

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 155
    :goto_0
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->SELECTABLE:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->setSelectability(Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;)V

    .line 156
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    return-object p0
.end method

.method public static applyRecommendedValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
            ">(",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 118
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    .line 119
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->applyRecommendedValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 120
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->SELECTABLE:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->setSelectability(Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;)V

    return-object p1
.end method

.method public static copy(Ljava/util/Map;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder<",
            "*>;>;",
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder<",
            "*>;>;)V"
        }
    .end annotation

    .line 168
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 169
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isCommon()Z

    move-result v1

    if-nez v1, :cond_0

    .line 170
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->hasChanged()Z

    move-result v1

    .line 171
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->onApplied()V

    .line 172
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    .line 173
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->createValueString()Ljava/lang/String;

    move-result-object v3

    .line 172
    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->parseValueString(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    .line 175
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->canChanged()V

    goto :goto_0

    .line 177
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->onApplied()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static forceChange(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
            ">(",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 75
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isInvalid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->forceChange(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Z

    .line 78
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->FORCE_CHANGED:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->setSelectability(Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;)V

    :cond_0
    return-object p1
.end method

.method public static getPrimaryValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
            ">(TT;TT;[TT;)TT;"
        }
    .end annotation

    .line 57
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    if-ne p0, v2, :cond_0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public static reset(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
            ">(",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 100
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isInvalid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->reset()Z

    .line 103
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->SELECTABLE:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->setSelectability(Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;)V

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    return-object p0
.end method

.method public static reset(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
            ">(",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 132
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isInvalid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->reset()Z

    .line 135
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 136
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->SELECTABLE:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->setSelectability(Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;)V

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    return-object p0
.end method

.method public static unavailable(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
            ">(",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 85
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isInvalid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 88
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->UNAVAILABLE:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->setSelectability(Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;)V

    :cond_0
    return-object p1
.end method

.method public static updateDefaultValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
            ">(",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder<",
            "TT;>;)",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder<",
            "TT;>;"
        }
    .end annotation

    .line 20
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->getOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    .line 22
    array-length v1, v0

    invoke-static {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->getSelectability(I)Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    move-result-object v1

    .line 24
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->INVALID:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    if-ne v1, v2, :cond_0

    return-object p0

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->getDefaultValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v2

    const/4 v3, 0x0

    .line 29
    aget-object v3, v0, v3

    .line 31
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->FIXED:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    if-ne v1, v4, :cond_1

    if-eq v2, v3, :cond_2

    .line 34
    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->updateDefaultValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    goto :goto_0

    .line 36
    :cond_1
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->SELECTABLE:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    if-ne v1, v4, :cond_2

    .line 37
    invoke-static {v2, v3, v0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->getPrimaryValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    if-eq v2, v0, :cond_2

    .line 38
    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->updateDefaultValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    :cond_2
    :goto_0
    return-object p0
.end method
