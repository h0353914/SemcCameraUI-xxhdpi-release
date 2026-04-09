.class public final enum Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;
.super Ljava/lang/Enum;
.source "HintTextContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/hint/HintTextContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HintPriority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

.field public static final enum HIGH:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

.field public static final enum LOW:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

.field public static final enum MIDDLE:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 22
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const-string v1, "HIGH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGH:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    .line 23
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const-string v1, "MIDDLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->MIDDLE:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    .line 24
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const-string v1, "LOW"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->LOW:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const/4 v0, 0x3

    .line 20
    new-array v0, v0, [Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    sget-object v1, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGH:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->MIDDLE:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->LOW:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->$VALUES:[Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;
    .locals 1

    .line 20
    const-class v0, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;
    .locals 1

    .line 20
    sget-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->$VALUES:[Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    return-object v0
.end method
