.class Lcom/sonymobile/camera/faultdetector/c$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/camera/faultdetector/c;->a()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sonymobile/camera/faultdetector/c;


# direct methods
.method constructor <init>(Lcom/sonymobile/camera/faultdetector/c;)V
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/camera/faultdetector/c$2;->a:Lcom/sonymobile/camera/faultdetector/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance p0, Lcom/sonymobile/camera/faultdetector/BuildNetworkException;

    const-string v0, "Initialization timeout"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/camera/faultdetector/BuildNetworkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method
