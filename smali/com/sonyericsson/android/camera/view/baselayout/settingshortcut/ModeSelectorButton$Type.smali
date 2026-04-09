.class final enum Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;
.super Ljava/lang/Enum;
.source "ModeSelectorButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;

.field public static final enum MODE_SELECTOR:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;

.field public static final enum RETURN:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;


# instance fields
.field private final mBackgroundId:I

.field private final mContentDescriptionId:I

.field private final mMinWidthId:I

.field private final mStringId:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 28
    new-instance v7, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;

    const-string v1, "MODE_SELECTOR"

    const/4 v2, 0x0

    const v3, 0x7f080311

    const v4, 0x7f0f00c5

    const v5, 0x7f0f00c5

    const v6, 0x7f0700fe

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;-><init>(Ljava/lang/String;IIIII)V

    sput-object v7, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;->MODE_SELECTOR:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;

    .line 34
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;

    const-string v9, "RETURN"

    const/4 v10, 0x1

    const v11, 0x7f0802e9

    const/4 v12, -0x1

    const v13, 0x7f0f005b

    const/4 v14, -0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;->RETURN:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;

    const/4 v0, 0x2

    .line 27
    new-array v0, v0, [Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;->MODE_SELECTOR:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;->RETURN:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;->$VALUES:[Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput p3, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;->mBackgroundId:I

    .line 48
    iput p4, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;->mStringId:I

    .line 49
    iput p5, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;->mContentDescriptionId:I

    .line 50
    iput p6, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;->mMinWidthId:I

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;->mBackgroundId:I

    return p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;->mStringId:I

    return p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;->mContentDescriptionId:I

    return p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;->mMinWidthId:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;
    .locals 1

    .line 27
    const-class v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;
    .locals 1

    .line 27
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;->$VALUES:[Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton$Type;

    return-object v0
.end method
