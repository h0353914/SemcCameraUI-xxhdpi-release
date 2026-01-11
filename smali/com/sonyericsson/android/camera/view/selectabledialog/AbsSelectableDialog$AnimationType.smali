.class public final enum Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;
.super Ljava/lang/Enum;
.source "AbsSelectableDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

.field public static final enum FADE:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

.field public static final enum NONE:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

.field public static final enum SLIDER:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;
    .locals 3

    .line 52
    sget-object v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;->NONE:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

    sget-object v1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;->FADE:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

    sget-object v2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;->SLIDER:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

    filled-new-array {v0, v1, v2}, [Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 53
    new-instance v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;->NONE:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

    .line 54
    new-instance v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

    const-string v1, "FADE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;->FADE:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

    .line 55
    new-instance v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

    const-string v1, "SLIDER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;->SLIDER:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

    .line 52
    invoke-static {}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;->$values()[Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;->$VALUES:[Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;
    .locals 1

    .line 52
    const-class v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;
    .locals 1

    .line 52
    sget-object v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;->$VALUES:[Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

    return-object v0
.end method
