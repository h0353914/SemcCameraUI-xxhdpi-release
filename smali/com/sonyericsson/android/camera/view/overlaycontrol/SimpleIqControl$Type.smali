.class public final enum Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;
.super Ljava/lang/Enum;
.source "SimpleIqControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;

.field public static final enum BOKEH:Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;

.field public static final enum SEMI_AUTO:Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;
    .locals 2

    .line 26
    sget-object v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;->SEMI_AUTO:Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;

    sget-object v1, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;->BOKEH:Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;

    filled-new-array {v0, v1}, [Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;

    const-string v1, "SEMI_AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;->SEMI_AUTO:Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;

    .line 28
    new-instance v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;

    const-string v1, "BOKEH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;->BOKEH:Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;

    .line 26
    invoke-static {}, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;->$values()[Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;->$VALUES:[Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;
    .locals 1

    .line 26
    const-class v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;
    .locals 1

    .line 26
    sget-object v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;->$VALUES:[Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/overlaycontrol/SimpleIqControl$Type;

    return-object v0
.end method
