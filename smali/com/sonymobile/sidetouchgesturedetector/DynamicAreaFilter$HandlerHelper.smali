.class Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter$HandlerHelper;
.super Ljava/lang/Object;
.source "DynamicAreaFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandlerHelper"
.end annotation


# static fields
.field private static final METHOD_HAS_CALLBACKS:Ljava/lang/String; = "hasCallbacks"

.field private static sMethod:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Landroid/os/Handler;Ljava/lang/Runnable;)Z
    .locals 0

    .line 481
    invoke-static {p0, p1}, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter$HandlerHelper;->hasCallbacks(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method private static hasCallbacks(Landroid/os/Handler;Ljava/lang/Runnable;)Z
    .locals 6

    const/4 v0, 0x0

    .line 487
    :try_start_0
    sget-object v1, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter$HandlerHelper;->sMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 488
    const-class v1, Landroid/os/Handler;

    const-string v3, "hasCallbacks"

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Runnable;

    aput-object v5, v4, v0

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter$HandlerHelper;->sMethod:Ljava/lang/reflect/Method;

    .line 491
    :cond_0
    sget-object v1, Lcom/sonymobile/sidetouchgesturedetector/DynamicAreaFilter$HandlerHelper;->sMethod:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method
