.class final enum Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;
.super Ljava/lang/Enum;
.source "ShootingLabel.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$IntParameter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Orientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;",
        ">;",
        "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$IntParameter;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;

.field public static final enum ORIENTATION_0:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;

.field public static final enum ORIENTATION_180:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;

.field public static final enum ORIENTATION_270:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;

.field public static final enum ORIENTATION_90:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 133
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;

    const-string v1, "ORIENTATION_0"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;->ORIENTATION_0:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;

    .line 134
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;

    const-string v1, "ORIENTATION_90"

    const/4 v3, 0x1

    const/16 v4, 0x5a

    invoke-direct {v0, v1, v3, v4}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;->ORIENTATION_90:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;

    .line 135
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;

    const-string v1, "ORIENTATION_180"

    const/4 v4, 0x2

    const/16 v5, 0xb4

    invoke-direct {v0, v1, v4, v5}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;->ORIENTATION_180:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;

    .line 136
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;

    const-string v1, "ORIENTATION_270"

    const/4 v5, 0x3

    const/16 v6, 0x10e

    invoke-direct {v0, v1, v5, v6}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;->ORIENTATION_270:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;

    const/4 v0, 0x4

    .line 132
    new-array v0, v0, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;->ORIENTATION_0:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;->ORIENTATION_90:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;->ORIENTATION_180:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;->ORIENTATION_270:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 141
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 142
    iput p3, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;
    .locals 1

    .line 132
    const-class v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;
    .locals 1

    .line 132
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;

    return-object v0
.end method


# virtual methods
.method public equals(I)Z
    .locals 0

    .line 147
    iget p0, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;->mValue:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getDefaultValue()Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;
    .locals 0

    .line 152
    sget-object p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;->ORIENTATION_0:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Orientation;

    return-object p0
.end method
