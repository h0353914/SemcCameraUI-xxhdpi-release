.class public final enum Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;
.super Ljava/lang/Enum;
.source "HandSignsNativeWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShrinkRatio"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;

.field public static final enum HALF:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;

.field public static final enum ONE:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;

.field public static final enum ONE_EIGHTH:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;

.field public static final enum QUARTER:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;


# instance fields
.field public final shrinkSize:I


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;
    .locals 4

    .line 85
    sget-object v0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;->ONE:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;

    sget-object v1, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;->HALF:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;

    sget-object v2, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;->QUARTER:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;

    sget-object v3, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;->ONE_EIGHTH:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 86
    new-instance v0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;

    const-string v1, "ONE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;->ONE:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;

    .line 87
    new-instance v0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;

    const-string v1, "HALF"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;->HALF:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;

    .line 88
    new-instance v0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;

    const-string v1, "QUARTER"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;->QUARTER:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;

    .line 89
    new-instance v0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;

    const/4 v1, 0x3

    const/16 v2, 0x8

    const-string v3, "ONE_EIGHTH"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;->ONE_EIGHTH:Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;

    .line 85
    invoke-static {}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;->$values()[Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;->$VALUES:[Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 92
    iput p3, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;->shrinkSize:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;
    .locals 1

    .line 85
    const-class v0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;
    .locals 1

    .line 85
    sget-object v0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;->$VALUES:[Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;

    return-object v0
.end method
