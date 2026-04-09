.class public Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;
.super Ljava/lang/Object;
.source "UserSettingValueHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ForceChangedState;,
        Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$NormalState;,
        Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final DELIMITER:Ljava/lang/String; = "-"

.field public static final NO_VALUE:Ljava/lang/String; = "NO_VALUE"

.field public static final REGULAR_EXPRESSION:Ljava/lang/String; = "@"

.field public static final TAG:Ljava/lang/String; = "UserSettingValueHolder"


# instance fields
.field private mChanged:Z

.field private mDefaultValue:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mOptions:[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private mState:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder<",
            "TT;>.ParameterState;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string v0, "Create UserSettingValueHolder with null default value "

    .line 51
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 53
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->mDefaultValue:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 54
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$NormalState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$NormalState;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->mState:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;

    .line 55
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->onApplied()V

    return-void
.end method

.method static synthetic access$002(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->mChanged:Z

    return p1
.end method

.method static synthetic access$102(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->mState:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;

    return-object p1
.end method

.method private deserialize(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string p0, "NO_VALUE"

    .line 431
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    const-string p0, "@"

    .line 434
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 435
    array-length p1, p0

    const/4 v1, 0x2

    if-ge p1, v1, :cond_1

    return-object v0

    :cond_1
    const/4 p1, 0x0

    .line 440
    :try_start_0
    aget-object p1, p0, p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const/4 v1, 0x1

    .line 441
    aget-object p0, p0, v1

    invoke-static {p1, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 449
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_2

    const-string p1, "deserialize failed."

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 447
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_2

    const-string p1, "deserialize failed."

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 445
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_2

    const-string p1, "deserialize failed."

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception p0

    .line 443
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_2

    const-string p1, "deserialize failed."

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    move-object p0, v0

    :goto_1
    return-object p0
.end method

.method private getParameterState(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder<",
            "TT;>.ParameterState;"
        }
    .end annotation

    .line 467
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x1

    .line 468
    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 486
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_0

    const-string p1, "getParameterState failed"

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 484
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_0

    const-string p1, "getParameterState failed"

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 482
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_0

    const-string p1, "getParameterState failed"

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception p0

    .line 480
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_0

    const-string p1, "getParameterState failed"

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_4
    move-exception p0

    .line 478
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_0

    const-string p1, "getParameterState failed"

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_5
    move-exception p0

    .line 476
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_0

    const-string p1, "getParameterState failed"

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_6
    move-exception p0

    .line 474
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_0

    const-string p1, "getParameterState failed"

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_7
    move-exception p0

    .line 472
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_0

    const-string p1, "getParameterState failed"

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_8
    move-exception p0

    .line 470
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_0

    const-string p1, "getParameterState failed"

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method private serialize(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p0, "NO_VALUE"

    return-object p0

    .line 415
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public applyCurrentValue()V
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->mState:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;->applyCurrentValue()V

    return-void
.end method

.method public applyRecommendedValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 117
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->mState:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;->applyRecommendedValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    return-void
.end method

.method public canChanged()V
    .locals 1

    const/4 v0, 0x1

    .line 182
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->mChanged:Z

    return-void
.end method

.method public createValueString()Ljava/lang/String;
    .locals 2

    .line 334
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 335
    iget-object v1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->mState:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "-"

    .line 336
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 337
    iget-object v1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->mState:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;->getCurrentValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->serialize(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "-"

    .line 338
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 339
    iget-object v1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->mState:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;->getOriginalValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->serialize(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "-"

    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 341
    iget-object v1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->mState:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;->getRecommendedValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->serialize(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 343
    iget-object v1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->mState:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;->getCurrentValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    instance-of v1, v1, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingIntValue;

    if-eqz v1, :cond_0

    const-string v1, "-"

    .line 344
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 345
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->mState:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;->getCurrentValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingIntValue;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingIntValue;->getInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 348
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public forceChange(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 99
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->mState:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;->forceChange(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Z

    move-result p0

    return p0
.end method

.method public get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 81
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->mState:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;->getCurrentValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 161
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->mDefaultValue:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    return-object p0
.end method

.method public getOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .line 63
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->mOptions:[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    invoke-virtual {p0}, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    return-object p0
.end method

.method public getOriginalValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 85
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->mState:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;->getOriginalValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    return-object p0
.end method

.method public getRecommendedValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 89
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->mState:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;->getRecommendedValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    return-object p0
.end method

.method public hasChanged()Z
    .locals 0

    .line 166
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->mChanged:Z

    return p0
.end method

.method public onApplied()V
    .locals 1

    const/4 v0, 0x0

    .line 174
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->mChanged:Z

    return-void
.end method

.method public parseValueString(Ljava/lang/String;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 364
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->mChanged:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "-"

    .line 367
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 368
    array-length v0, p1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 372
    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->getParameterState(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    const/4 v2, 0x1

    .line 378
    aget-object v2, p1, v2

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->deserialize(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v2

    if-nez v2, :cond_4

    return-void

    :cond_4
    const/4 v3, 0x2

    .line 384
    aget-object v3, p1, v3

    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->deserialize(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v3

    const/4 v4, 0x3

    .line 386
    aget-object v4, p1, v4

    invoke-direct {p0, v4}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->deserialize(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v4

    .line 388
    instance-of v5, v2, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingIntValue;

    if-eqz v5, :cond_5

    .line 389
    move-object v5, v2

    check-cast v5, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingIntValue;

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v5, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingIntValue;->setInt(I)V

    .line 394
    :cond_5
    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;->setCurrentValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 395
    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;->setOriginalValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 396
    invoke-virtual {v0, v4}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;->setRecommendedValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 397
    iput-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->mState:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;

    return-void
.end method

.method public reset()Z
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->mState:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;->reset()Z

    move-result p0

    return p0
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 72
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->mState:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;->setCurrentValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    return-void
.end method

.method public setDefaultValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->mState:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->mDefaultValue:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;->setCurrentValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 137
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->mDefaultValue:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    return-object p0
.end method

.method public setOptions([Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 59
    invoke-virtual {p1}, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->mOptions:[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 498
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->mState:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;

    if-nez v0, :cond_0

    .line 499
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->mState:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 503
    iget-object v1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->mState:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;->getCurrentValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    const-string v2, "NO_VALUE"

    invoke-static {v1, v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 504
    iget-object v2, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->mState:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;->getOriginalValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v2

    const-string v3, "NO_VALUE"

    invoke-static {v2, v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 505
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->mState:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder$ParameterState;->getRecommendedValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    const-string v3, "NO_VALUE"

    invoke-static {p0, v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "%s(%s|%s|%s)"

    const/4 v4, 0x4

    .line 506
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object p0, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateDefaultValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 146
    iput-object p1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->mDefaultValue:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 147
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->mChanged:Z

    if-nez p1, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->setDefaultValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 149
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->onApplied()V

    .line 151
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValueHolder;->mDefaultValue:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    return-object p0
.end method
