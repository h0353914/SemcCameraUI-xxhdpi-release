.class public final enum Ldm;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Ldm;

.field public static final enum b:Ldm;

.field public static final enum c:Ldm;

.field public static final enum d:Ldm;

.field public static final enum e:Ldm;

.field public static final enum f:Ldm;

.field public static final enum g:Ldm;

.field public static final enum h:Ldm;

.field public static final enum i:Ldm;

.field public static final enum j:Ldm;

.field private static final synthetic l:[Ldm;


# instance fields
.field private final k:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Ldm;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Void;

    .line 1
    const-string v3, "VOID"

    invoke-direct {v0, v3, v1, v2}, Ldm;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Ldm;->a:Ldm;

    new-instance v1, Ldm;

    .line 2
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x1

    const-class v3, Ljava/lang/Integer;

    const-string v4, "INT"

    invoke-direct {v1, v4, v2, v3}, Ldm;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v1, Ldm;->b:Ldm;

    new-instance v2, Ldm;

    .line 3
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x2

    const-class v4, Ljava/lang/Long;

    const-string v5, "LONG"

    invoke-direct {v2, v5, v3, v4}, Ldm;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v2, Ldm;->c:Ldm;

    new-instance v3, Ldm;

    .line 4
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x3

    const-class v5, Ljava/lang/Float;

    const-string v6, "FLOAT"

    invoke-direct {v3, v6, v4, v5}, Ldm;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v3, Ldm;->d:Ldm;

    new-instance v4, Ldm;

    .line 5
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x4

    const-class v6, Ljava/lang/Double;

    const-string v7, "DOUBLE"

    invoke-direct {v4, v7, v5, v6}, Ldm;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v4, Ldm;->e:Ldm;

    new-instance v5, Ldm;

    .line 6
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x5

    const-class v7, Ljava/lang/Boolean;

    const-string v8, "BOOLEAN"

    invoke-direct {v5, v8, v6, v7}, Ldm;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v5, Ldm;->f:Ldm;

    new-instance v6, Ldm;

    const/4 v7, 0x6

    const-class v8, Ljava/lang/String;

    .line 7
    const-string v9, "STRING"

    invoke-direct {v6, v9, v7, v8}, Ldm;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v6, Ldm;->g:Ldm;

    new-instance v7, Ldm;

    .line 8
    sget-object v8, Lck;->b:Lck;

    const/4 v8, 0x7

    const-class v9, Lck;

    const-string v10, "BYTE_STRING"

    invoke-direct {v7, v10, v8, v9}, Ldm;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v7, Ldm;->h:Ldm;

    new-instance v8, Ldm;

    .line 9
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v9, 0x8

    const-class v10, Ljava/lang/Integer;

    const-string v11, "ENUM"

    invoke-direct {v8, v11, v9, v10}, Ldm;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v8, Ldm;->i:Ldm;

    new-instance v9, Ldm;

    const/16 v10, 0x9

    const-class v11, Ljava/lang/Object;

    .line 10
    const-string v12, "MESSAGE"

    invoke-direct {v9, v12, v10, v11}, Ldm;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v9, Ldm;->j:Ldm;

    filled-new-array/range {v0 .. v9}, [Ldm;

    move-result-object v0

    sput-object v0, Ldm;->l:[Ldm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Ldm;->k:Ljava/lang/Class;

    return-void
.end method

.method public static values()[Ldm;
    .locals 1

    sget-object v0, Ldm;->l:[Ldm;

    .line 12
    invoke-virtual {v0}, [Ldm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldm;

    return-object v0
.end method
