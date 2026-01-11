.class final enum Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ZoomFrame;
.super Ljava/lang/Enum;
.source "ShootingLabel.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FloatParameter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ZoomFrame"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ZoomFrame;",
        ">;",
        "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FloatParameter;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ZoomFrame;

.field public static final enum FRAME_2_0:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ZoomFrame;

.field public static final enum FRAME_5_0:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ZoomFrame;


# instance fields
.field private mValue:F


# direct methods
.method private static synthetic $values()[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ZoomFrame;
    .locals 2

    .line 216
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ZoomFrame;->FRAME_2_0:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ZoomFrame;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ZoomFrame;->FRAME_5_0:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ZoomFrame;

    filled-new-array {v0, v1}, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ZoomFrame;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 217
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ZoomFrame;

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    const-string v3, "FRAME_2_0"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ZoomFrame;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ZoomFrame;->FRAME_2_0:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ZoomFrame;

    .line 218
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ZoomFrame;

    const/4 v1, 0x1

    const/high16 v2, 0x40a00000    # 5.0f

    const-string v3, "FRAME_5_0"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ZoomFrame;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ZoomFrame;->FRAME_5_0:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ZoomFrame;

    .line 216
    invoke-static {}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ZoomFrame;->$values()[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ZoomFrame;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ZoomFrame;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ZoomFrame;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .line 223
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 224
    iput p3, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ZoomFrame;->mValue:F

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ZoomFrame;
    .locals 1

    .line 216
    const-class v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ZoomFrame;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ZoomFrame;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ZoomFrame;
    .locals 1

    .line 216
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ZoomFrame;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ZoomFrame;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ZoomFrame;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ZoomFrame;

    return-object v0
.end method


# virtual methods
.method public equals(F)Z
    .locals 0

    .line 229
    iget p0, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ZoomFrame;->mValue:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getDefaultValue()Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;
    .locals 0

    .line 234
    sget-object p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ZoomFrame;->FRAME_2_0:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$ZoomFrame;

    return-object p0
.end method
