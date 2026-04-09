.class public Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;
.super Ljava/lang/Object;
.source "AbsSelectableDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Params"
.end annotation


# instance fields
.field public animationType:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

.field public bottomMarginLandscape:I

.field public bottomMarginPortrait:I

.field public dropShadowSpace:I

.field public horizontalGavity:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$HorizontalGravity;

.field public itemHeight:I

.field public itemWidth:I

.field public leftMarginLandscape:I

.field public leftMarginPortrait:I

.field public maxHeightLandscape:I

.field public maxHeightPortrait:I

.field public panelBackgroundColor:I

.field public rightMarginLandscape:I

.field public rightMarginPortrait:I

.field public scrollBarDefaultDelayBeforeFade:I

.field public scrollbarFadeDuration:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    sget-object v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;->NONE:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->animationType:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

    .line 90
    sget-object v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$HorizontalGravity;->RIGHT:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$HorizontalGravity;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->horizontalGavity:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$HorizontalGravity;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;)V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    sget-object v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;->NONE:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->animationType:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

    .line 90
    sget-object v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$HorizontalGravity;->RIGHT:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$HorizontalGravity;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->horizontalGavity:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$HorizontalGravity;

    .line 97
    iget v0, p1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->itemWidth:I

    iput v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->itemWidth:I

    .line 98
    iget v0, p1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->itemHeight:I

    iput v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->itemHeight:I

    .line 99
    iget v0, p1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightLandscape:I

    iput v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightLandscape:I

    .line 100
    iget v0, p1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightPortrait:I

    iput v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightPortrait:I

    .line 101
    iget v0, p1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->rightMarginLandscape:I

    iput v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->rightMarginLandscape:I

    .line 102
    iget v0, p1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->rightMarginPortrait:I

    iput v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->rightMarginPortrait:I

    .line 103
    iget v0, p1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->leftMarginLandscape:I

    iput v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->leftMarginLandscape:I

    .line 104
    iget v0, p1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->leftMarginPortrait:I

    iput v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->leftMarginPortrait:I

    .line 105
    iget v0, p1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->bottomMarginLandscape:I

    iput v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->bottomMarginLandscape:I

    .line 106
    iget v0, p1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->bottomMarginPortrait:I

    iput v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->bottomMarginPortrait:I

    .line 107
    iget v0, p1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->panelBackgroundColor:I

    iput v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->panelBackgroundColor:I

    .line 108
    iget v0, p1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->scrollbarFadeDuration:I

    iput v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->scrollbarFadeDuration:I

    .line 109
    iget v0, p1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->scrollBarDefaultDelayBeforeFade:I

    iput v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->scrollBarDefaultDelayBeforeFade:I

    .line 110
    iget v0, p1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->dropShadowSpace:I

    iput v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->dropShadowSpace:I

    .line 111
    iget-object v0, p1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->animationType:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->animationType:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

    .line 112
    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->horizontalGavity:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$HorizontalGravity;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->horizontalGavity:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$HorizontalGravity;

    return-void
.end method
