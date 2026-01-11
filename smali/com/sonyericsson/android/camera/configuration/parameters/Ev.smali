.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/Ev;
.super Ljava/lang/Enum;
.source "Ev.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/Ev;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

.field public static final enum M1_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

.field public static final enum M2_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

.field public static final enum M3_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

.field public static final enum M4_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

.field public static final enum M5_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

.field public static final enum M6_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

.field public static final enum P1_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

.field public static final enum P2_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

.field public static final enum P3_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

.field public static final enum P4_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

.field public static final enum P5_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

.field public static final enum P6_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

.field public static final TAG:Ljava/lang/String; = "Ev"

.field public static final enum ZERO:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

.field private static final sParameterTextId:I = 0x7f0f01a1


# instance fields
.field private final mIconId:I

.field private mIndex:I

.field private final mTextId:I

.field private final mValue:F


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/configuration/parameters/Ev;
    .locals 13

    .line 21
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->M6_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->M5_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->M4_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->M3_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->M2_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->M1_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->ZERO:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->P1_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->P2_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->P3_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->P4_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    sget-object v11, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->P5_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->P6_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    filled-new-array/range {v0 .. v12}, [Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 13

    .line 22
    new-instance v6, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    const v4, 0x7f0f0266

    const/high16 v5, -0x40000000    # -2.0f

    const-string v1, "M6_3"

    const/4 v2, 0x0

    const v3, 0x7f080148

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;-><init>(Ljava/lang/String;IIIF)V

    sput-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->M6_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    .line 26
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    const v11, 0x7f0f0265

    const v12, -0x40266666    # -1.7f

    const-string v8, "M5_3"

    const/4 v9, 0x1

    const v10, 0x7f080148

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;-><init>(Ljava/lang/String;IIIF)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->M5_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    .line 30
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    const v5, 0x7f0f0264

    const v6, -0x4059999a    # -1.3f

    const-string v2, "M4_3"

    const/4 v3, 0x2

    const v4, 0x7f080148

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;-><init>(Ljava/lang/String;IIIF)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->M4_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    .line 34
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    const v11, 0x7f0f0263

    const/high16 v12, -0x40800000    # -1.0f

    const-string v8, "M3_3"

    const/4 v9, 0x3

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;-><init>(Ljava/lang/String;IIIF)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->M3_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    .line 38
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    const v5, 0x7f0f0262

    const v6, -0x40cccccd    # -0.7f

    const-string v2, "M2_3"

    const/4 v3, 0x4

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;-><init>(Ljava/lang/String;IIIF)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->M2_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    .line 42
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    const v11, 0x7f0f0261

    const v12, -0x41666666    # -0.3f

    const-string v8, "M1_3"

    const/4 v9, 0x5

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;-><init>(Ljava/lang/String;IIIF)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->M1_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    .line 46
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    const v5, 0x7f0f026d

    const/4 v6, 0x0

    const-string v2, "ZERO"

    const/4 v3, 0x6

    const v4, 0x7f080147

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;-><init>(Ljava/lang/String;IIIF)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->ZERO:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    .line 50
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    const v11, 0x7f0f0267

    const v12, 0x3e99999a    # 0.3f

    const-string v8, "P1_3"

    const/4 v9, 0x7

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;-><init>(Ljava/lang/String;IIIF)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->P1_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    .line 54
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    const v5, 0x7f0f0268

    const v6, 0x3f333333    # 0.7f

    const-string v2, "P2_3"

    const/16 v3, 0x8

    const v4, 0x7f080148

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;-><init>(Ljava/lang/String;IIIF)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->P2_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    .line 58
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    const v11, 0x7f0f0269

    const/high16 v12, 0x3f800000    # 1.0f

    const-string v8, "P3_3"

    const/16 v9, 0x9

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;-><init>(Ljava/lang/String;IIIF)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->P3_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    .line 62
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    const v5, 0x7f0f026a

    const v6, 0x3fa66666    # 1.3f

    const-string v2, "P4_3"

    const/16 v3, 0xa

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;-><init>(Ljava/lang/String;IIIF)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->P4_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    .line 66
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    const v11, 0x7f0f026b

    const v12, 0x3fd9999a    # 1.7f

    const-string v8, "P5_3"

    const/16 v9, 0xb

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;-><init>(Ljava/lang/String;IIIF)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->P5_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    .line 70
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    const v5, 0x7f0f026c

    const/high16 v6, 0x40000000    # 2.0f

    const-string v2, "P6_3"

    const/16 v3, 0xc

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;-><init>(Ljava/lang/String;IIIF)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->P6_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    .line 21
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->$values()[Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIF)V"
        }
    .end annotation

    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 102
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->mIconId:I

    .line 103
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->mTextId:I

    .line 104
    iput p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->mValue:F

    return-void
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/Ev;
    .locals 15

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 180
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    .line 181
    iget-object v1, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->EV_MAX:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 182
    iget-object v2, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->EV_MIN:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    goto :goto_3

    .line 188
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->EV_STEP:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    .line 190
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    move-result-object v4

    array-length v5, v4

    move v6, v3

    :goto_0
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    move v8, v2

    :goto_1
    if-gt v8, v1, :cond_2

    int-to-float v9, v8

    mul-float/2addr v9, p0

    const/high16 v10, 0x41200000    # 10.0f

    mul-float/2addr v9, v10

    float-to-double v11, v9

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    add-double/2addr v11, v13

    double-to-int v9, v11

    .line 193
    iget v11, v7, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->mValue:F

    mul-float/2addr v11, v10

    float-to-double v10, v11

    add-double/2addr v10, v13

    double-to-int v10, v10

    if-ne v9, v10, :cond_1

    .line 194
    iput v8, v7, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->mIndex:I

    .line 195
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 202
    :cond_3
    :goto_3
    new-array p0, v3, [Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/Ev;
    .locals 1

    .line 21
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/Ev;
    .locals 1

    .line 21
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .locals 0

    .line 114
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/Ev;)V

    return-void
.end method

.method public getIconId()I
    .locals 0

    .line 132
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->mIconId:I

    return p0
.end method

.method public getIntValue()I
    .locals 0

    .line 162
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->mIndex:I

    return p0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .locals 0

    .line 122
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->EV:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method public getKeyTextId()I
    .locals 0

    const p0, 0x7f0f01a1

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 167
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextId()I
    .locals 0

    .line 142
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->mTextId:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 152
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
