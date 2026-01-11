.class final enum Lcom/sonymobile/camera/faultdetector/c$d;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/camera/faultdetector/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/camera/faultdetector/c$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sonymobile/camera/faultdetector/c$d;

.field public static final enum b:Lcom/sonymobile/camera/faultdetector/c$d;

.field public static final enum c:Lcom/sonymobile/camera/faultdetector/c$d;

.field public static final enum d:Lcom/sonymobile/camera/faultdetector/c$d;

.field public static final enum e:Lcom/sonymobile/camera/faultdetector/c$d;

.field private static final synthetic f:[Lcom/sonymobile/camera/faultdetector/c$d;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/sonymobile/camera/faultdetector/c$d;

    const-string v1, "NOT_INITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/camera/faultdetector/c$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/camera/faultdetector/c$d;->a:Lcom/sonymobile/camera/faultdetector/c$d;

    new-instance v1, Lcom/sonymobile/camera/faultdetector/c$d;

    const-string v2, "INITIALIZING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sonymobile/camera/faultdetector/c$d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sonymobile/camera/faultdetector/c$d;->b:Lcom/sonymobile/camera/faultdetector/c$d;

    new-instance v2, Lcom/sonymobile/camera/faultdetector/c$d;

    const-string v3, "INITIALIZED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/sonymobile/camera/faultdetector/c$d;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/sonymobile/camera/faultdetector/c$d;->c:Lcom/sonymobile/camera/faultdetector/c$d;

    new-instance v3, Lcom/sonymobile/camera/faultdetector/c$d;

    const-string v4, "EXECUTING"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/sonymobile/camera/faultdetector/c$d;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sonymobile/camera/faultdetector/c$d;->d:Lcom/sonymobile/camera/faultdetector/c$d;

    new-instance v4, Lcom/sonymobile/camera/faultdetector/c$d;

    const-string v5, "DEINITIALIZING"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/sonymobile/camera/faultdetector/c$d;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/sonymobile/camera/faultdetector/c$d;->e:Lcom/sonymobile/camera/faultdetector/c$d;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/sonymobile/camera/faultdetector/c$d;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/camera/faultdetector/c$d;->f:[Lcom/sonymobile/camera/faultdetector/c$d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/camera/faultdetector/c$d;
    .locals 1

    const-class v0, Lcom/sonymobile/camera/faultdetector/c$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/camera/faultdetector/c$d;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/camera/faultdetector/c$d;
    .locals 1

    sget-object v0, Lcom/sonymobile/camera/faultdetector/c$d;->f:[Lcom/sonymobile/camera/faultdetector/c$d;

    invoke-virtual {v0}, [Lcom/sonymobile/camera/faultdetector/c$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/camera/faultdetector/c$d;

    return-object v0
.end method
