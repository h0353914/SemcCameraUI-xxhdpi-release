.class Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;
.super Ljava/lang/Object;
.source "IddUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/idd/IddUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ValueMap"
.end annotation


# instance fields
.field private final mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;",
            ">;"
        }
    .end annotation
.end field

.field private final mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 574
    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;->mMap:Ljava/util/Map;

    .line 575
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;->mValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 579
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;->mMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 580
    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;->mValue:Ljava/lang/String;

    .line 582
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 583
    iget-object v1, p0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;",
            ">;"
        }
    .end annotation

    .line 592
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;->mMap:Ljava/util/Map;

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 588
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/idd/IddUtil$ValueMap;->mValue:Ljava/lang/String;

    return-object p0
.end method
