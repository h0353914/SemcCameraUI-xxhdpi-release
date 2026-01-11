.class public final enum Lfz;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Lfz;

.field public static final enum b:Lfz;

.field public static final enum c:Lfz;

.field public static final enum d:Lfz;

.field public static final enum e:Lfz;

.field public static final enum f:Lfz;

.field public static final enum g:Lfz;

.field public static final enum h:Lfz;

.field public static final enum i:Lfz;

.field private static final synthetic j:[Lfz;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lfz;

    const-string v1, "INT"

    const/4 v2, 0x0

    .line 1
    invoke-direct {v0, v1, v2}, Lfz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfz;->a:Lfz;

    new-instance v1, Lfz;

    const-string v2, "LONG"

    const/4 v3, 0x1

    .line 2
    invoke-direct {v1, v2, v3}, Lfz;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lfz;->b:Lfz;

    new-instance v2, Lfz;

    const-string v3, "FLOAT"

    const/4 v4, 0x2

    .line 3
    invoke-direct {v2, v3, v4}, Lfz;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lfz;->c:Lfz;

    new-instance v3, Lfz;

    const-string v4, "DOUBLE"

    const/4 v5, 0x3

    .line 4
    invoke-direct {v3, v4, v5}, Lfz;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lfz;->d:Lfz;

    new-instance v4, Lfz;

    const-string v5, "BOOLEAN"

    const/4 v6, 0x4

    .line 5
    invoke-direct {v4, v5, v6}, Lfz;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lfz;->e:Lfz;

    new-instance v5, Lfz;

    const-string v6, "STRING"

    const/4 v7, 0x5

    .line 6
    invoke-direct {v5, v6, v7}, Lfz;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lfz;->f:Lfz;

    new-instance v6, Lfz;

    .line 7
    sget-object v7, Lck;->b:Lck;

    const-string v7, "BYTE_STRING"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lfz;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lfz;->g:Lfz;

    new-instance v7, Lfz;

    const-string v8, "ENUM"

    const/4 v9, 0x7

    .line 8
    invoke-direct {v7, v8, v9}, Lfz;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lfz;->h:Lfz;

    new-instance v8, Lfz;

    const-string v9, "MESSAGE"

    const/16 v10, 0x8

    .line 9
    invoke-direct {v8, v9, v10}, Lfz;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lfz;->i:Lfz;

    filled-new-array/range {v0 .. v8}, [Lfz;

    move-result-object v0

    sput-object v0, Lfz;->j:[Lfz;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lfz;
    .locals 1

    sget-object v0, Lfz;->j:[Lfz;

    .line 11
    invoke-virtual {v0}, [Lfz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfz;

    return-object v0
.end method
