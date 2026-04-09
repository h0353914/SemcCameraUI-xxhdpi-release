.class Lcom/sonyericsson/cameracommon/contentsview/contents/PlayIconResources;
.super Ljava/lang/Object;
.source "PlayIconResources.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;)I
    .locals 1

    .line 20
    sget-object v0, Lcom/sonyericsson/cameracommon/contentsview/contents/PlayIconResources$1;->$SwitchMap$com$sonyericsson$cameracommon$contentsview$contents$Content$ContentsType:[I

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    :pswitch_0
    const p0, 0x7f0801ad

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
