.class synthetic Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$1;
.super Ljava/lang/Object;
.source "ScrollContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$view$selectabledialog$ScrollContainer$Status:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 557
    invoke-static {}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->values()[Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$1;->$SwitchMap$com$sonyericsson$android$camera$view$selectabledialog$ScrollContainer$Status:[I

    :try_start_0
    sget-object v0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$1;->$SwitchMap$com$sonyericsson$android$camera$view$selectabledialog$ScrollContainer$Status:[I

    sget-object v1, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->FULLSCREEN:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$1;->$SwitchMap$com$sonyericsson$android$camera$view$selectabledialog$ScrollContainer$Status:[I

    sget-object v1, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->OPENED:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$1;->$SwitchMap$com$sonyericsson$android$camera$view$selectabledialog$ScrollContainer$Status:[I

    sget-object v1, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->EXIT:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$1;->$SwitchMap$com$sonyericsson$android$camera$view$selectabledialog$ScrollContainer$Status:[I

    sget-object v1, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->IDLE:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$1;->$SwitchMap$com$sonyericsson$android$camera$view$selectabledialog$ScrollContainer$Status:[I

    sget-object v1, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->MOVING:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$1;->$SwitchMap$com$sonyericsson$android$camera$view$selectabledialog$ScrollContainer$Status:[I

    sget-object v1, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->OPENING:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$1;->$SwitchMap$com$sonyericsson$android$camera$view$selectabledialog$ScrollContainer$Status:[I

    sget-object v1, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->CLOSING:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    return-void
.end method
