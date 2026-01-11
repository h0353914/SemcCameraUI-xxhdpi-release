.class final enum Lcv;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Lcv;

.field public static final enum b:Lcv;

.field public static final enum c:Lcv;

.field public static final enum d:Lcv;

.field private static final synthetic f:[Lcv;


# instance fields
.field public final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcv;

    .line 1
    const-string v1, "SCALAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcv;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcv;->a:Lcv;

    new-instance v1, Lcv;

    .line 2
    const-string v3, "VECTOR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcv;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcv;->b:Lcv;

    new-instance v3, Lcv;

    const-string v5, "PACKED_VECTOR"

    const/4 v6, 0x2

    .line 3
    invoke-direct {v3, v5, v6, v4}, Lcv;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcv;->c:Lcv;

    new-instance v4, Lcv;

    const-string v5, "MAP"

    const/4 v6, 0x3

    .line 4
    invoke-direct {v4, v5, v6, v2}, Lcv;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Lcv;->d:Lcv;

    filled-new-array {v0, v1, v3, v4}, [Lcv;

    move-result-object v0

    sput-object v0, Lcv;->f:[Lcv;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcv;->e:Z

    return-void
.end method

.method public static values()[Lcv;
    .locals 1

    sget-object v0, Lcv;->f:[Lcv;

    .line 6
    invoke-virtual {v0}, [Lcv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcv;

    return-object v0
.end method
