.class final enum Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;
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
    name = "Zoom"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;",
        ">;",
        "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FloatParameter;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

.field public static final enum ZOOM_0:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

.field public static final enum ZOOM_0_DOT_6:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

.field public static final enum ZOOM_1:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

.field public static final enum ZOOM_10:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

.field public static final enum ZOOM_2:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

.field public static final enum ZOOM_3:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

.field public static final enum ZOOM_4:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

.field public static final enum ZOOM_5:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

.field public static final enum ZOOM_6:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

.field public static final enum ZOOM_7:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

.field public static final enum ZOOM_8:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

.field public static final enum ZOOM_9:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;


# instance fields
.field private mValue:F


# direct methods
.method private static synthetic $values()[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;
    .locals 12

    .line 184
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;->ZOOM_0:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;->ZOOM_0_DOT_6:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;->ZOOM_1:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    sget-object v3, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;->ZOOM_2:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    sget-object v4, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;->ZOOM_3:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    sget-object v5, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;->ZOOM_4:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    sget-object v6, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;->ZOOM_5:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    sget-object v7, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;->ZOOM_6:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    sget-object v8, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;->ZOOM_7:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    sget-object v9, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;->ZOOM_8:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    sget-object v10, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;->ZOOM_9:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    sget-object v11, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;->ZOOM_10:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    filled-new-array/range {v0 .. v11}, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 185
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "ZOOM_0"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;->ZOOM_0:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    .line 186
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    const/4 v1, 0x1

    const v2, 0x3f19999a    # 0.6f

    const-string v3, "ZOOM_0_DOT_6"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;->ZOOM_0_DOT_6:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    .line 187
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    const/4 v1, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    const-string v3, "ZOOM_1"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;->ZOOM_1:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    .line 188
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    const/4 v1, 0x3

    const/high16 v2, 0x40000000    # 2.0f

    const-string v3, "ZOOM_2"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;->ZOOM_2:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    .line 189
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    const/4 v1, 0x4

    const/high16 v2, 0x40400000    # 3.0f

    const-string v3, "ZOOM_3"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;->ZOOM_3:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    .line 190
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    const/4 v1, 0x5

    const/high16 v2, 0x40800000    # 4.0f

    const-string v3, "ZOOM_4"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;->ZOOM_4:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    .line 191
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    const/4 v1, 0x6

    const/high16 v2, 0x40a00000    # 5.0f

    const-string v3, "ZOOM_5"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;->ZOOM_5:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    .line 192
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    const/4 v1, 0x7

    const/high16 v2, 0x40c00000    # 6.0f

    const-string v3, "ZOOM_6"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;->ZOOM_6:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    .line 193
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    const/16 v1, 0x8

    const/high16 v2, 0x40e00000    # 7.0f

    const-string v3, "ZOOM_7"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;->ZOOM_7:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    .line 194
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    const/16 v1, 0x9

    const/high16 v2, 0x41000000    # 8.0f

    const-string v3, "ZOOM_8"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;->ZOOM_8:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    .line 195
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    const/16 v1, 0xa

    const/high16 v2, 0x41100000    # 9.0f

    const-string v3, "ZOOM_9"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;->ZOOM_9:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    .line 196
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    const/16 v1, 0xb

    const/high16 v2, 0x41200000    # 10.0f

    const-string v3, "ZOOM_10"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;->ZOOM_10:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    .line 184
    invoke-static {}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;->$values()[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .line 201
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 202
    iput p3, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;->mValue:F

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;
    .locals 1

    .line 184
    const-class v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;
    .locals 1

    .line 184
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    return-object v0
.end method


# virtual methods
.method public equals(F)Z
    .locals 0

    .line 207
    iget p0, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;->mValue:F

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

    .line 212
    sget-object p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;->ZOOM_0:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    return-object p0
.end method
