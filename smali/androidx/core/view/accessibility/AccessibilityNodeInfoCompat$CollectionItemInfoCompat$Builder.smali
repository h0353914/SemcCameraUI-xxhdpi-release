.class public final Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat$Builder;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mColumnIndex:I

.field private mColumnSpan:I

.field private mColumnTitle:Ljava/lang/String;

.field private mHeading:Z

.field private mRowIndex:I

.field private mRowSpan:I

.field private mRowTitle:Ljava/lang/String;

.field private mSelected:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;
    .locals 8

    .line 1339
    iget-boolean v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat$Builder;->mHeading:Z

    iget v1, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat$Builder;->mColumnIndex:I

    iget v2, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat$Builder;->mRowIndex:I

    iget v3, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat$Builder;->mColumnSpan:I

    iget v4, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat$Builder;->mRowSpan:I

    iget-boolean v5, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat$Builder;->mSelected:Z

    iget-object v6, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat$Builder;->mRowTitle:Ljava/lang/String;

    iget-object v7, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat$Builder;->mColumnTitle:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$Api33Impl;->buildCollectionItemInfoCompat(ZIIIIZLjava/lang/String;Ljava/lang/String;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object p0

    return-object p0
.end method

.method public setColumnIndex(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat$Builder;
    .locals 0

    .line 1257
    iput p1, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat$Builder;->mColumnIndex:I

    return-object p0
.end method

.method public setColumnSpan(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat$Builder;
    .locals 0

    .line 1281
    iput p1, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat$Builder;->mColumnSpan:I

    return-object p0
.end method

.method public setColumnTitle(Ljava/lang/String;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat$Builder;
    .locals 0

    .line 1329
    iput-object p1, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat$Builder;->mColumnTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setHeading(Z)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat$Builder;
    .locals 0

    .line 1245
    iput-boolean p1, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat$Builder;->mHeading:Z

    return-object p0
.end method

.method public setRowIndex(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat$Builder;
    .locals 0

    .line 1269
    iput p1, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat$Builder;->mRowIndex:I

    return-object p0
.end method

.method public setRowSpan(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat$Builder;
    .locals 0

    .line 1293
    iput p1, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat$Builder;->mRowSpan:I

    return-object p0
.end method

.method public setRowTitle(Ljava/lang/String;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat$Builder;
    .locals 0

    .line 1317
    iput-object p1, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat$Builder;->mRowTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setSelected(Z)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat$Builder;
    .locals 0

    .line 1305
    iput-boolean p1, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat$Builder;->mSelected:Z

    return-object p0
.end method
