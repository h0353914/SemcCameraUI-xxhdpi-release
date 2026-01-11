.class public final enum Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;
.super Ljava/lang/Enum;
.source "FocusRectangles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FocusSetType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

.field public static final enum FIRST:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

.field public static final enum MOVE:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

.field public static final enum RELEASE:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;
    .locals 3

    .line 153
    sget-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;->FIRST:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    sget-object v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;->MOVE:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    sget-object v2, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;->RELEASE:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    filled-new-array {v0, v1, v2}, [Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 154
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    const-string v1, "FIRST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;->FIRST:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    .line 155
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    const-string v1, "MOVE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;->MOVE:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    .line 156
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    const-string v1, "RELEASE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;->RELEASE:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    .line 153
    invoke-static {}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;->$values()[Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;->$VALUES:[Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 153
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;
    .locals 1

    .line 153
    const-class v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;
    .locals 1

    .line 153
    sget-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;->$VALUES:[Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    return-object v0
.end method
