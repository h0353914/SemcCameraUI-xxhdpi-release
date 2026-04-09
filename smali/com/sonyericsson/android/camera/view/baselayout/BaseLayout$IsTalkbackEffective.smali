.class public final enum Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;
.super Ljava/lang/Enum;
.source "BaseLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IsTalkbackEffective"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;

.field public static final enum TALKBACK_OFF:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;

.field public static final enum TALKBACK_ON:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;

.field public static final enum UNKNOWN:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 199
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;->UNKNOWN:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;

    .line 200
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;

    const-string v1, "TALKBACK_ON"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;->TALKBACK_ON:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;

    .line 201
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;

    const-string v1, "TALKBACK_OFF"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;->TALKBACK_OFF:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;

    const/4 v0, 0x3

    .line 198
    new-array v0, v0, [Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;->UNKNOWN:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;->TALKBACK_ON:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;->TALKBACK_OFF:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;->$VALUES:[Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 198
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;
    .locals 1

    .line 198
    const-class v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;
    .locals 1

    .line 198
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;->$VALUES:[Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;

    return-object v0
.end method
