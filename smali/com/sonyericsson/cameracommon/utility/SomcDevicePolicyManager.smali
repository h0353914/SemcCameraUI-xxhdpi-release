.class public Lcom/sonyericsson/cameracommon/utility/SomcDevicePolicyManager;
.super Ljava/lang/Object;
.source "SomcDevicePolicyManager.java"


# static fields
.field public static DISALLOW_RECORD_AUDIO:Ljava/lang/String;

.field public static SOMC_DEVICE_POLICY_SERVICE:Ljava/lang/String;

.field private static mMethodHasUserRestriction:Ljava/lang/reflect/Method;

.field private static somcDevicePolicyManagerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private mSomcDevicePolicyManager:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    :try_start_0
    const-string v0, "com.sonymobile.enterprise.admin.SomcDevicePolicyManager"

    .line 29
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/SomcDevicePolicyManager;->somcDevicePolicyManagerClass:Ljava/lang/Class;

    const-string v0, "SOMC_DEVICE_POLICY_SERVICE"

    .line 31
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/SomcDevicePolicyManager;->initStringField(Ljava/lang/String;)V

    const-string v0, "DISALLOW_RECORD_AUDIO"

    .line 32
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/SomcDevicePolicyManager;->initStringField(Ljava/lang/String;)V

    .line 34
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/SomcDevicePolicyManager;->somcDevicePolicyManagerClass:Ljava/lang/Class;

    const-string v1, "hasUserRestriction"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    .line 35
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/SomcDevicePolicyManager;->mMethodHasUserRestriction:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 38
    sput-object v0, Lcom/sonyericsson/cameracommon/utility/SomcDevicePolicyManager;->SOMC_DEVICE_POLICY_SERVICE:Ljava/lang/String;

    .line 39
    sput-object v0, Lcom/sonyericsson/cameracommon/utility/SomcDevicePolicyManager;->DISALLOW_RECORD_AUDIO:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/utility/SomcDevicePolicyManager;->mSomcDevicePolicyManager:Ljava/lang/Object;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sonyericsson/cameracommon/utility/SomcDevicePolicyManager;
    .locals 2

    .line 65
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/SomcDevicePolicyManager;->SOMC_DEVICE_POLICY_SERVICE:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 68
    :cond_0
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/SomcDevicePolicyManager;

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/SomcDevicePolicyManager;->SOMC_DEVICE_POLICY_SERVICE:Ljava/lang/String;

    .line 69
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/utility/SomcDevicePolicyManager;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static initStringField(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 46
    :try_start_0
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/SomcDevicePolicyManager;->somcDevicePolicyManagerClass:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 48
    const-class v2, Lcom/sonyericsson/cameracommon/utility/SomcDevicePolicyManager;

    invoke-virtual {v2, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v2, 0x1

    .line 49
    invoke-virtual {p0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 50
    invoke-virtual {p0, v1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 53
    throw p0
.end method


# virtual methods
.method public hasUserRestriction(Ljava/lang/String;)Z
    .locals 3

    .line 84
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/SomcDevicePolicyManager;->mMethodHasUserRestriction:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 89
    :cond_0
    :try_start_0
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/SomcDevicePolicyManager;->mMethodHasUserRestriction:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/utility/SomcDevicePolicyManager;->mSomcDevicePolicyManager:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v1
.end method
