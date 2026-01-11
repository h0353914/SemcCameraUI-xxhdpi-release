.class public Lcom/sonymobile/camera/faultdetector/DetectorManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;
    }
.end annotation


# static fields
.field static final a:Z

.field private static final b:Ljava/lang/String; = "DetectorManager"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "userdebug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sonymobile/camera/faultdetector/DetectorManager;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/app/Application;Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;)Lcom/sonymobile/camera/faultdetector/DetectorInterface;
    .locals 3

    sget-boolean v0, Lcom/sonymobile/camera/faultdetector/DetectorManager;->a:Z

    const-string v1, "DetectorManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "DetectorWrapper type: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/sonymobile/camera/faultdetector/DetectorManager;->getSupportedList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/sonymobile/camera/faultdetector/d;

    invoke-direct {v0, p0, p1}, Lcom/sonymobile/camera/faultdetector/d;-><init>(Landroid/app/Application;Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Not supported detector type: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSupportedList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;->IN_HOUSE_DETECTOR:Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;->EYE_BLINK_DETECTOR:Lcom/sonymobile/camera/faultdetector/DetectorManager$DetectorType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
