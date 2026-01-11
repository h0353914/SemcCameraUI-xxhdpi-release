.class public final enum Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;
.super Ljava/lang/Enum;
.source "LocalResearchUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/research/LocalResearchUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ModeChangeMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;

.field public static final enum ICON_SWIPE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;

.field public static final enum ICON_TOUCH:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;

.field public static final enum MODE_SELECTOR:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;

.field public static final enum MRU_SHORTCUT:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;

.field public static final enum SWIPE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;

.field public static final enum WIDE_ICON_TOUCH:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;

.field public static final enum ZOOM_TOGGLE_ICON_TOUCH:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;
    .locals 7

    .line 468
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;->SWIPE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;

    sget-object v1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;->ICON_SWIPE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;

    sget-object v2, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;->ICON_TOUCH:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;

    sget-object v3, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;->MODE_SELECTOR:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;

    sget-object v4, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;->MRU_SHORTCUT:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;

    sget-object v5, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;->ZOOM_TOGGLE_ICON_TOUCH:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;

    sget-object v6, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;->WIDE_ICON_TOUCH:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;

    filled-new-array/range {v0 .. v6}, [Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 469
    new-instance v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;

    const-string v1, "SWIPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;->SWIPE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;

    .line 470
    new-instance v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;

    const-string v1, "ICON_SWIPE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;->ICON_SWIPE:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;

    .line 471
    new-instance v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;

    const-string v1, "ICON_TOUCH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;->ICON_TOUCH:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;

    .line 472
    new-instance v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;

    const-string v1, "MODE_SELECTOR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;->MODE_SELECTOR:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;

    .line 473
    new-instance v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;

    const-string v1, "MRU_SHORTCUT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;->MRU_SHORTCUT:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;

    .line 474
    new-instance v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;

    const-string v1, "ZOOM_TOGGLE_ICON_TOUCH"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;->ZOOM_TOGGLE_ICON_TOUCH:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;

    .line 475
    new-instance v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;

    const-string v1, "WIDE_ICON_TOUCH"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;->WIDE_ICON_TOUCH:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;

    .line 468
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;->$values()[Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;->$VALUES:[Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 468
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;
    .locals 1

    .line 468
    const-class v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;
    .locals 1

    .line 468
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;->$VALUES:[Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;

    return-object v0
.end method
