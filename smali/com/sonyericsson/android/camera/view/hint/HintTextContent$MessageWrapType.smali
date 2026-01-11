.class public final enum Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;
.super Ljava/lang/Enum;
.source "HintTextContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/hint/HintTextContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageWrapType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;

.field public static final enum FORCE_WRAP:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;

.field public static final enum WORD_WRAP:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;
    .locals 2

    .line 31
    sget-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;->WORD_WRAP:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;

    sget-object v1, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;->FORCE_WRAP:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;

    filled-new-array {v0, v1}, [Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 32
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;

    const-string v1, "WORD_WRAP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;->WORD_WRAP:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;

    .line 33
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;

    const-string v1, "FORCE_WRAP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;->FORCE_WRAP:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;

    .line 31
    invoke-static {}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;->$values()[Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;->$VALUES:[Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;
    .locals 1

    .line 31
    const-class v0, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;
    .locals 1

    .line 31
    sget-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;->$VALUES:[Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/hint/HintTextContent$MessageWrapType;

    return-object v0
.end method
