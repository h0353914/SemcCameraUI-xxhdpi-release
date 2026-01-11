.class Lcom/sonyericsson/android/camera/device/CameraParameterConverter$AeMode;
.super Ljava/lang/Object;
.source "CameraParameterConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraParameterConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AeMode"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getApi2Value(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    .line 282
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, "auto"

    const/4 v6, 0x0

    const/4 v7, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "display-auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x7

    goto :goto_0

    :sswitch_1
    const-string v0, "night_portrait"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v7, 0x6

    goto :goto_0

    :sswitch_2
    const-string v0, "red-eye"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v7, 0x5

    goto :goto_0

    :sswitch_3
    const-string/jumbo v0, "torch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v7, v1

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move v7, v2

    goto :goto_0

    :sswitch_5
    const-string v0, "off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    move v7, v3

    goto :goto_0

    :sswitch_6
    const-string v0, "on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    move v7, v4

    goto :goto_0

    :sswitch_7
    const-string v0, "display-on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    move v7, v6

    :goto_0
    packed-switch v7, :pswitch_data_0

    move v4, v6

    goto :goto_1

    .line 363
    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    move v1, v6

    :cond_8
    move v4, v1

    goto :goto_1

    .line 344
    :pswitch_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_1

    .line 284
    :pswitch_2
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    move v3, v6

    :cond_9
    move v4, v3

    goto :goto_1

    .line 304
    :pswitch_3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_1

    .line 324
    :pswitch_4
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    move v2, v6

    :cond_a
    move v4, v2

    :goto_1
    :pswitch_5
    return v4

    nop

    :sswitch_data_0
    .sparse-switch
        -0x36833136 -> :sswitch_7
        0xddf -> :sswitch_6
        0x1ad6f -> :sswitch_5
        0x2dddaf -> :sswitch_4
        0x696d3fc -> :sswitch_3
        0x407706f5 -> :sswitch_2
        0x5890a3e2 -> :sswitch_1
        0x5d7e0fda -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
