.class public final enum Lfy;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Lfy;

.field public static final enum b:Lfy;

.field public static final enum c:Lfy;

.field public static final enum d:Lfy;

.field public static final enum e:Lfy;

.field public static final enum f:Lfy;

.field public static final enum g:Lfy;

.field public static final enum h:Lfy;

.field public static final enum i:Lfy;

.field public static final enum j:Lfy;

.field public static final enum k:Lfy;

.field public static final enum l:Lfy;

.field public static final enum m:Lfy;

.field public static final enum n:Lfy;

.field public static final enum o:Lfy;

.field public static final enum p:Lfy;

.field public static final enum q:Lfy;

.field public static final enum r:Lfy;

.field private static final synthetic u:[Lfy;


# instance fields
.field public final s:Lfz;

.field private final t:I


# direct methods
.method static constructor <clinit>()V
    .locals 23

    new-instance v1, Lfy;

    move-object v0, v1

    .line 1
    sget-object v2, Lfz;->d:Lfz;

    const-string v3, "DOUBLE"

    const/4 v15, 0x0

    const/4 v14, 0x1

    invoke-direct {v1, v3, v15, v2, v14}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v1, Lfy;->a:Lfy;

    new-instance v2, Lfy;

    move-object v1, v2

    sget-object v3, Lfz;->c:Lfz;

    .line 2
    const-string v4, "FLOAT"

    const/4 v13, 0x5

    invoke-direct {v2, v4, v14, v3, v13}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v2, Lfy;->b:Lfy;

    new-instance v3, Lfy;

    move-object v2, v3

    sget-object v4, Lfz;->b:Lfz;

    .line 3
    const-string v5, "INT64"

    const/4 v12, 0x2

    invoke-direct {v3, v5, v12, v4, v15}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v3, Lfy;->c:Lfy;

    new-instance v4, Lfy;

    move-object v3, v4

    sget-object v5, Lfz;->b:Lfz;

    .line 4
    const-string v6, "UINT64"

    const/4 v10, 0x3

    invoke-direct {v4, v6, v10, v5, v15}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v4, Lfy;->d:Lfy;

    new-instance v5, Lfy;

    move-object v4, v5

    const/4 v6, 0x4

    sget-object v7, Lfz;->a:Lfz;

    .line 5
    const-string v8, "INT32"

    invoke-direct {v5, v8, v6, v7, v15}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v5, Lfy;->e:Lfy;

    new-instance v6, Lfy;

    move-object v5, v6

    const-string v7, "FIXED64"

    sget-object v8, Lfz;->b:Lfz;

    .line 6
    invoke-direct {v6, v7, v13, v8, v14}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v6, Lfy;->f:Lfy;

    new-instance v7, Lfy;

    move-object v6, v7

    const/4 v8, 0x6

    sget-object v9, Lfz;->a:Lfz;

    .line 7
    const-string v11, "FIXED32"

    invoke-direct {v7, v11, v8, v9, v13}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v7, Lfy;->g:Lfy;

    new-instance v8, Lfy;

    move-object v7, v8

    const/4 v9, 0x7

    sget-object v11, Lfz;->e:Lfz;

    .line 8
    const-string v13, "BOOL"

    invoke-direct {v8, v13, v9, v11, v15}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v8, Lfy;->h:Lfy;

    new-instance v9, Lfy;

    move-object v8, v9

    const/16 v11, 0x8

    sget-object v13, Lfz;->f:Lfz;

    .line 9
    const-string v14, "STRING"

    invoke-direct {v9, v14, v11, v13, v12}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v9, Lfy;->i:Lfy;

    new-instance v11, Lfy;

    move-object v9, v11

    const/16 v13, 0x9

    sget-object v14, Lfz;->i:Lfz;

    .line 10
    const-string v15, "GROUP"

    invoke-direct {v11, v15, v13, v14, v10}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v11, Lfy;->j:Lfy;

    new-instance v11, Lfy;

    move-object v10, v11

    const/16 v13, 0xa

    sget-object v14, Lfz;->i:Lfz;

    .line 11
    const-string v15, "MESSAGE"

    invoke-direct {v11, v15, v13, v14, v12}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v11, Lfy;->k:Lfy;

    new-instance v13, Lfy;

    move-object v11, v13

    const/16 v14, 0xb

    sget-object v15, Lfz;->g:Lfz;

    move-object/from16 v19, v0

    .line 12
    const-string v0, "BYTES"

    invoke-direct {v13, v0, v14, v15, v12}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v13, Lfy;->l:Lfy;

    new-instance v0, Lfy;

    move-object v12, v0

    const/16 v13, 0xc

    sget-object v14, Lfz;->a:Lfz;

    .line 13
    const-string v15, "UINT32"

    move-object/from16 v20, v1

    const/4 v1, 0x0

    invoke-direct {v0, v15, v13, v14, v1}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v0, Lfy;->m:Lfy;

    new-instance v0, Lfy;

    const/4 v15, 0x5

    move-object v13, v0

    const/16 v14, 0xd

    sget-object v15, Lfz;->h:Lfz;

    move-object/from16 v18, v2

    .line 14
    const-string v2, "ENUM"

    invoke-direct {v0, v2, v14, v15, v1}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v0, Lfy;->n:Lfy;

    new-instance v0, Lfy;

    const/4 v2, 0x1

    move-object v14, v0

    const/16 v15, 0xe

    sget-object v1, Lfz;->a:Lfz;

    .line 15
    const-string v2, "SFIXED32"

    move-object/from16 v21, v3

    const/4 v3, 0x5

    invoke-direct {v0, v2, v15, v1, v3}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v0, Lfy;->o:Lfy;

    new-instance v0, Lfy;

    const/4 v1, 0x0

    move-object v15, v0

    const/16 v2, 0xf

    sget-object v3, Lfz;->b:Lfz;

    .line 16
    const-string v1, "SFIXED64"

    move-object/from16 v22, v4

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v0, Lfy;->p:Lfy;

    new-instance v0, Lfy;

    move-object/from16 v16, v0

    sget-object v1, Lfz;->a:Lfz;

    .line 17
    const-string v2, "SINT32"

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v1, v4}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v0, Lfy;->q:Lfy;

    new-instance v0, Lfy;

    move-object/from16 v17, v0

    const/16 v1, 0x11

    sget-object v2, Lfz;->b:Lfz;

    .line 18
    const-string v3, "SINT64"

    invoke-direct {v0, v3, v1, v2, v4}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v0, Lfy;->r:Lfy;

    move-object/from16 v2, v18

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    filled-new-array/range {v0 .. v17}, [Lfy;

    move-result-object v0

    sput-object v0, Lfy;->u:[Lfy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILfz;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lfy;->s:Lfz;

    iput p4, p0, Lfy;->t:I

    return-void
.end method

.method public static values()[Lfy;
    .locals 1

    sget-object v0, Lfy;->u:[Lfy;

    .line 20
    invoke-virtual {v0}, [Lfy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfy;

    return-object v0
.end method
