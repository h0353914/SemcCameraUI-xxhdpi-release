.class final enum Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;
.super Ljava/lang/Enum;
.source "ViewUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/utility/ViewUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ScreenSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;

.field public static final enum FULL_HD:Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;

.field public static final enum HD:Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;

.field public static final enum WUXGA:Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;


# instance fields
.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;
    .locals 3

    .line 39
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;->WUXGA:Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;->FULL_HD:Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;->HD:Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;

    filled-new-array {v0, v1, v2}, [Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 40
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;

    const/16 v1, 0x4b0

    const-string v2, "WUXGA"

    const/4 v3, 0x0

    const/16 v4, 0x780

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;->WUXGA:Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;

    .line 41
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;

    const/4 v1, 0x1

    const/16 v2, 0x438

    const-string v3, "FULL_HD"

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;->FULL_HD:Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;

    .line 42
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;

    const/16 v1, 0x500

    const/16 v2, 0x2d0

    const-string v3, "HD"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;->HD:Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;

    .line 39
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;->$values()[Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;->$VALUES:[Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput p3, p0, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;->mWidth:I

    .line 47
    iput p4, p0, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;->mHeight:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;
    .locals 1

    .line 39
    const-class v0, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;
    .locals 1

    .line 39
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;->$VALUES:[Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;

    return-object v0
.end method


# virtual methods
.method public getAsRect()Landroid/graphics/Rect;
    .locals 3

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;->mWidth:I

    iget p0, p0, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;->mHeight:I

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getHeight()I
    .locals 0

    .line 58
    iget p0, p0, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;->mHeight:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    .line 54
    iget p0, p0, Lcom/sonyericsson/cameracommon/utility/ViewUtility$ScreenSize;->mWidth:I

    return p0
.end method
