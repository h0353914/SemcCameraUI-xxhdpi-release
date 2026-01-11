.class synthetic Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$3;
.super Ljava/lang/Object;
.source "AbsDialogScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$view$selectabledialog$AbsSelectableDialog$AnimationType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 287
    invoke-static {}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;->values()[Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$3;->$SwitchMap$com$sonyericsson$android$camera$view$selectabledialog$AbsSelectableDialog$AnimationType:[I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;->FADE:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$3;->$SwitchMap$com$sonyericsson$android$camera$view$selectabledialog$AbsSelectableDialog$AnimationType:[I

    sget-object v1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;->SLIDER:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$3;->$SwitchMap$com$sonyericsson$android$camera$view$selectabledialog$AbsSelectableDialog$AnimationType:[I

    sget-object v1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;->NONE:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
