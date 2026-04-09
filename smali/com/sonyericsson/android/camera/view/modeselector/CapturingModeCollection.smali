.class public Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeCollection;
.super Ljava/lang/Object;
.source "CapturingModeCollection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeCollection$VisibilityTypeCode;,
        Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeCollection$CaptureTypeCode;
    }
.end annotation


# static fields
.field private static final INVALID_POSITION:I = -0x1

.field private static final PROTECTION:[Ljava/lang/String;

.field private static final SORT_ASC:Ljava/lang/String; = "sort_order ASC"

.field private static final TAG:Ljava/lang/String; = "CapturingModeCollection"

.field private static final WHERE_WITH_ID:Ljava/lang/String; = "_id=?"


# instance fields
.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-string v0, "_id"

    const-string v1, "package"

    const-string v2, "activity"

    const-string v3, "mode_name"

    const-string v4, "selectoricon_id"

    const-string v5, "selectorlabel_id"

    const-string v6, "shortcuticon_id"

    const-string v7, "shortcutlabel_id"

    const-string v8, "descriptionlabel_id"

    const-string v9, "capture_type"

    const-string v10, "visibility_normal"

    const-string v11, "visibility_oneshot"

    const-string v12, "visibility_shortcut"

    .line 47
    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeCollection;->PROTECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeCollection;->mResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method private static convert(Landroid/database/Cursor;)Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;
    .locals 30

    move-object/from16 v0, p0

    const-string v1, "_id"

    .line 69
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "package"

    .line 70
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "activity"

    .line 71
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "mode_name"

    .line 72
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "selectoricon_id"

    .line 73
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "selectorlabel_id"

    .line 74
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "descriptionlabel_id"

    .line 75
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "shortcuticon_id"

    .line 76
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "shortcutlabel_id"

    .line 77
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v10, "capture_type"

    .line 78
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v11, "visibility_normal"

    .line 79
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v12, "visibility_oneshot"

    .line 80
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v13, "visibility_shortcut"

    .line 81
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 83
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 84
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 85
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 86
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 87
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 88
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 89
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 90
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 91
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 92
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeCollection$CaptureTypeCode;->toCaptureType(I)Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;

    move-result-object v26

    .line 93
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeCollection$VisibilityTypeCode;->toVisibilityType(I)Z

    move-result v27

    .line 94
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeCollection$VisibilityTypeCode;->toVisibilityType(I)Z

    move-result v28

    .line 95
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeCollection$VisibilityTypeCode;->toVisibilityType(I)Z

    move-result v29

    .line 96
    new-instance v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;

    .line 97
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v29}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;ZZZ)V

    return-object v0
.end method

.method private static createDeleteOperation(J)Landroid/content/ContentProviderOperation;
    .locals 4

    .line 184
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "createDeleteOperation()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 186
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/view/modeselector/CameraCommonProviderConstants;->CAPTURINGMODE_CONTENT_URI:Landroid/net/Uri;

    .line 187
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 188
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    .line 189
    invoke-virtual {p0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p0

    return-object p0
.end method

.method private static createInsertOperation(Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;I)Landroid/content/ContentProviderOperation;
    .locals 7

    .line 130
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "createUpdateSortOrderOperation()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getInternalCaptureType()Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeCollection$CaptureTypeCode;->toCode(Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;)I

    move-result v0

    .line 133
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->isVisibleNormal()Z

    move-result v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeCollection$VisibilityTypeCode;->toCode(Z)I

    move-result v1

    .line 134
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->isVisibleOneshot()Z

    move-result v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeCollection$VisibilityTypeCode;->toCode(Z)I

    move-result v2

    .line 135
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->isVisibleShortcut()Z

    move-result v3

    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeCollection$VisibilityTypeCode;->toCode(Z)I

    move-result v3

    .line 137
    sget-object v4, Lcom/sonyericsson/android/camera/view/modeselector/CameraCommonProviderConstants;->CAPTURINGMODE_CONTENT_URI:Landroid/net/Uri;

    .line 138
    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "package"

    .line 141
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 139
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "activity"

    .line 144
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getActivityName()Ljava/lang/String;

    move-result-object v6

    .line 142
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "mode_name"

    .line 147
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getModeName()Ljava/lang/String;

    move-result-object v6

    .line 145
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "sort_order"

    .line 150
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 148
    invoke-virtual {v4, v5, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    const-string v4, "capture_type"

    .line 153
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 151
    invoke-virtual {p1, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    const-string v0, "visibility_normal"

    .line 156
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 154
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    const-string v0, "visibility_oneshot"

    .line 159
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 157
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    const-string v0, "visibility_shortcut"

    .line 162
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 160
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    const-string v0, "selectoricon_id"

    .line 165
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getSelectorIconId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 163
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    const-string v0, "selectorlabel_id"

    .line 168
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getSelectorLabelId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 166
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    const-string v0, "descriptionlabel_id"

    .line 171
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getDescriptionLabelId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 169
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    const-string v0, "shortcuticon_id"

    .line 174
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getShortcutIconId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 172
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    const-string v0, "shortcutlabel_id"

    .line 177
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getShortcutLabelId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 175
    invoke-virtual {p1, v0, p0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    .line 180
    invoke-virtual {p0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p0

    return-object p0
.end method

.method private static createUpdateSortOrderOperation(Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;I)Landroid/content/ContentProviderOperation;
    .locals 5

    .line 116
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "createUpdateSortOrderOperation()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getId()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 119
    sget-object p0, Lcom/sonyericsson/android/camera/view/modeselector/CameraCommonProviderConstants;->CAPTURINGMODE_CONTENT_URI:Landroid/net/Uri;

    .line 120
    invoke-static {p0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 121
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    const-string v0, "sort_order"

    .line 122
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    .line 123
    invoke-virtual {p0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p0

    return-object p0
.end method

.method private static findIllegalCapturingMode(Landroid/content/pm/PackageManager;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;",
            ">;"
        }
    .end annotation

    .line 481
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 489
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;

    .line 490
    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeCollection;->isIllegalCapturingMode(Landroid/content/pm/PackageManager;Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    .line 491
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeCollection;->TAG:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This attributes is illegal. ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getAttributes()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 491
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 493
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static indexOf(Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 462
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 463
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getModeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->is(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static isIllegalCapturingMode(Landroid/content/pm/PackageManager;Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;)Z
    .locals 2

    .line 514
    :try_start_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x1

    if-nez p0, :cond_0

    const-string p0, "Resources could not be found."

    .line 520
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return v0

    .line 525
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getSelectorIconId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera/view/modeselector/ResourceUtil;->isDrawableResource(Landroid/content/res/Resources;I)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "Resource type of selector icon is not drawable."

    .line 526
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return v0

    .line 529
    :cond_1
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getSelectorLabelId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera/view/modeselector/ResourceUtil;->isStringResource(Landroid/content/res/Resources;I)Z

    move-result v1

    if-nez v1, :cond_2

    const-string p0, "Resource type of selector label is not string."

    .line 530
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return v0

    .line 533
    :cond_2
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getDescriptionLabelId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera/view/modeselector/ResourceUtil;->isStringResource(Landroid/content/res/Resources;I)Z

    move-result v1

    if-nez v1, :cond_3

    const-string p0, "Resource type of description label is not string."

    .line 534
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return v0

    .line 537
    :cond_3
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->isVisibleShortcut()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 538
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getShortcutIconId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera/view/modeselector/ResourceUtil;->isDrawableResource(Landroid/content/res/Resources;I)Z

    move-result v1

    if-nez v1, :cond_4

    const-string p0, "Resource type of shortcut icon is not drawable."

    .line 539
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return v0

    .line 542
    :cond_4
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getShortcutLabelId()I

    move-result p1

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/view/modeselector/ResourceUtil;->isStringResource(Landroid/content/res/Resources;I)Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "Resource type of shortcut label is not string."

    .line 543
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return v0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method private static isResourceUpdated(Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;)Z
    .locals 3

    .line 555
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getActivityName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getActivityName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 559
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getSelectorIconId()I

    move-result v0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getSelectorIconId()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    .line 563
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getSelectorLabelId()I

    move-result v0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getSelectorLabelId()I

    move-result v2

    if-eq v0, v2, :cond_2

    return v1

    .line 567
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getShortcutIconId()I

    move-result v0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getShortcutIconId()I

    move-result v2

    if-eq v0, v2, :cond_3

    return v1

    .line 571
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getShortcutLabelId()I

    move-result v0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getShortcutLabelId()I

    move-result v2

    if-eq v0, v2, :cond_4

    return v1

    .line 575
    :cond_4
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getInternalCaptureType()Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getInternalCaptureType()Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;

    move-result-object v2

    if-eq v0, v2, :cond_5

    return v1

    .line 579
    :cond_5
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->isVisibleNormal()Z

    move-result v0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->isVisibleNormal()Z

    move-result v2

    if-eq v0, v2, :cond_6

    return v1

    .line 583
    :cond_6
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->isVisibleOneshot()Z

    move-result v0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->isVisibleOneshot()Z

    move-result v2

    if-eq v0, v2, :cond_7

    return v1

    .line 587
    :cond_7
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->isVisibleShortcut()Z

    move-result p0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->isVisibleShortcut()Z

    move-result p1

    if-eq p0, p1, :cond_8

    return v1

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static register(Landroid/content/ContentResolver;Ljava/util/List;Landroid/content/pm/PackageManager;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;",
            ">;",
            "Landroid/content/pm/PackageManager;",
            ")V"
        }
    .end annotation

    .line 393
    new-instance v0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeCollection;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeCollection;-><init>(Landroid/content/ContentResolver;)V

    const/4 p0, 0x0

    .line 397
    new-array v1, p0, [Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;

    new-array v2, p0, [Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeCollection;->getCapturingModeList([Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;[Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;)Ljava/util/List;

    move-result-object v1

    .line 407
    invoke-static {p2, p1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeCollection;->findIllegalCapturingMode(Landroid/content/pm/PackageManager;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 408
    invoke-interface {p1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 410
    invoke-static {p2, v1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeCollection;->findIllegalCapturingMode(Landroid/content/pm/PackageManager;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 411
    invoke-interface {v1, p2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 412
    invoke-direct {v0, p2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeCollection;->unregisterCapturingModes(Ljava/util/List;)V

    .line 416
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move p2, p0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;

    .line 417
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const-string v5, "register("

    aput-object v5, v3, p0

    const-string v5, " package:"

    aput-object v5, v3, v4

    const/4 v5, 0x2

    .line 418
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x3

    const-string v6, " mode:"

    aput-object v6, v3, v5

    const/4 v5, 0x4

    .line 419
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getModeName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x5

    const-string v6, " )"

    aput-object v6, v3, v5

    .line 417
    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 422
    :cond_1
    invoke-static {v2, v1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeCollection;->indexOf(Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;Ljava/util/List;)I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_5

    .line 424
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p2, :cond_2

    const-string p2, "  This mode has not been registered."

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 426
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil;->hasDefaultSortOrder(Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil$CapturingMode;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 430
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p2, :cond_3

    const-string p2, "  This mode is pre-installed."

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 433
    :cond_3
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil;->sortCapturingMode(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    move-object v1, p2

    :cond_4
    :goto_1
    move p2, v4

    goto :goto_0

    .line 437
    :cond_5
    sget-boolean v5, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v5, :cond_6

    const-string v5, "  This mode has been registered."

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 439
    :cond_6
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;

    invoke-static {v5, v2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeCollection;->isResourceUpdated(Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 440
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p2, :cond_7

    const-string p2, "  This mode is updated."

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 441
    :cond_7
    invoke-interface {v1, v3, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 445
    :cond_8
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v2, :cond_0

    const-string v2, "  This mode is not updated, so not need register."

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    if-eqz p2, :cond_b

    .line 452
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_a

    const-string p0, "Update data base."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 453
    :cond_a
    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeCollection;->saveCapturingModeSortedList(Ljava/util/List;)V

    :cond_b
    return-void
.end method

.method private saveCapturingModeSortedList(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;",
            ">;)V"
        }
    .end annotation

    .line 351
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveCapturingModeList size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 351
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 354
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    .line 357
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 358
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;

    .line 359
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getId()Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 362
    invoke-static {v4, v3}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeCollection;->createUpdateSortOrderOperation(Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;I)Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 366
    :cond_1
    invoke-static {v4, v3}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeCollection;->createInsertOperation(Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;I)Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 371
    :cond_2
    :try_start_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeCollection;->mResolver:Landroid/content/ContentResolver;

    const-string p1, "com.sonymobile.camerauicommon.provider"

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 378
    new-array p1, v2, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to save mode order. Message : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception p0

    .line 376
    new-array p1, v2, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to save mode order. Message : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_2

    :catch_2
    move-exception p0

    .line 374
    new-array p1, v2, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to save mode order. Message : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private unregisterCapturingModes(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;",
            ">;)V"
        }
    .end annotation

    .line 323
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 326
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;

    .line 327
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getId()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 328
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeCollection;->createDeleteOperation(J)Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 332
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x0

    const/4 v1, 0x1

    .line 337
    :try_start_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeCollection;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "com.sonymobile.camerauicommon.provider"

    invoke-virtual {p0, v2, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 341
    new-array v0, v1, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to unregister modes. Message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, p1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception p0

    .line 339
    new-array v0, v1, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to unregister modes. Message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, p1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public getCapturingModeList([Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;[Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;",
            "[",
            "Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;",
            ")",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;",
            ">;"
        }
    .end annotation

    .line 257
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 260
    array-length v1, p1

    const/4 v2, 0x0

    if-lez v1, :cond_2

    const-string v1, "("

    .line 261
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "capture_type"

    .line 263
    array-length v3, p1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, p1, v4

    .line 264
    invoke-static {v5}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeCollection$CaptureTypeCode;->toCode(Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;)I

    move-result v6

    .line 266
    aget-object v7, p1, v2

    if-eq v7, v5, :cond_0

    const-string v5, " OR "

    .line 267
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 270
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string v1, ")"

    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 275
    :cond_2
    array-length p1, p1

    if-lez p1, :cond_3

    array-length p1, p2

    if-lez p1, :cond_3

    const-string p1, " AND "

    .line 276
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 280
    :cond_3
    array-length p1, p2

    if-lez p1, :cond_6

    const-string p1, "("

    .line 281
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 282
    array-length p1, p2

    move v1, v2

    :goto_1
    if-ge v1, p1, :cond_5

    aget-object v3, p2, v1

    .line 283
    aget-object v4, p2, v2

    if-eq v4, v3, :cond_4

    const-string v4, " OR "

    .line 284
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 287
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;->mColumn:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "=1)"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    const-string p1, ")"

    .line 289
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 292
    :cond_6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 293
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeCollection;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/sonyericsson/android/camera/view/modeselector/CameraCommonProviderConstants;->CAPTURINGMODE_CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeCollection;->PROTECTION:[Ljava/lang/String;

    .line 296
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "sort_order ASC"

    .line 293
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 301
    :goto_2
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 302
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeCollection;->convert(Landroid/database/Cursor;)Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 305
    :cond_7
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 306
    throw p1

    .line 309
    :cond_8
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_9

    const-string p0, "Fail to retrieve the capturing mode list from CameraCommonProvider."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    :cond_9
    :goto_3
    return-object p1
.end method

.method public release()V
    .locals 0

    return-void
.end method
