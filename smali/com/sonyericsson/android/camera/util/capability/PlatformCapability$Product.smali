.class public final enum Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;
.super Ljava/lang/Enum;
.source "PlatformCapability.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Product"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

.field public static final enum NONE:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

.field public static final enum SM12:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

.field public static final enum SM13:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

.field public static final enum SM22:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

.field public static final enum SM42:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;


# instance fields
.field private mMainSensorName:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;
    .locals 5

    .line 89
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->SM12:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    sget-object v1, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->SM22:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    sget-object v2, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->SM42:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    sget-object v3, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->SM13:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    sget-object v4, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->NONE:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 90
    new-instance v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    const/4 v1, 0x0

    const-string v2, "IMX300PIONEER"

    const-string v3, "SM12"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->SM12:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    .line 91
    new-instance v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    const/4 v1, 0x1

    const-string v2, "IMX300DISCOVERY"

    const-string v3, "SM22"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->SM22:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    .line 92
    new-instance v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    const/4 v1, 0x2

    const-string v2, "IMX300VOYAGER"

    const-string v3, "SM42"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->SM42:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    .line 93
    new-instance v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    const/4 v1, 0x3

    const-string v2, "S5K3L6"

    const-string v3, "SM13"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->SM13:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    .line 94
    new-instance v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    const/4 v1, 0x4

    const-string v2, ""

    const-string v3, "NONE"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->NONE:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    .line 89
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->$values()[Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->$VALUES:[Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 99
    iput-object p3, p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->mMainSensorName:Ljava/lang/String;

    return-void
.end method

.method public static getProduct(Ljava/lang/String;)Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;
    .locals 2

    .line 103
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->SM12:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    iget-object v1, v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->mMainSensorName:Ljava/lang/String;

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 105
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->SM22:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    iget-object v1, v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->mMainSensorName:Ljava/lang/String;

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 107
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->SM42:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    iget-object v1, v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->mMainSensorName:Ljava/lang/String;

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    .line 109
    :cond_2
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->SM13:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    iget-object v1, v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->mMainSensorName:Ljava/lang/String;

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    .line 111
    :cond_3
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->NONE:Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    iget-object v1, v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->mMainSensorName:Ljava/lang/String;

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 112
    const-string p0, "Sensor name is empty."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-object v0

    .line 115
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sensor name not match, mainSensorName : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;
    .locals 1

    .line 89
    const-class v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;
    .locals 1

    .line 89
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->$VALUES:[Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/util/capability/PlatformCapability$Product;

    return-object v0
.end method
