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

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getApi2Value(Ljava/lang/String;Ljava/lang/String;)I
    .locals 14

    .line 276
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x4

    const/4 v3, 0x5

    const/4 v4, -0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "display-auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v3

    goto :goto_1

    :sswitch_1
    const-string v0, "red-eye"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_1

    :sswitch_2
    const-string v0, "torch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v6

    goto :goto_1

    :sswitch_3
    const-string v0, "auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v7

    goto :goto_1

    :sswitch_4
    const-string v0, "off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v8

    goto :goto_1

    :sswitch_5
    const-string v0, "on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v5

    goto :goto_1

    :sswitch_6
    const-string v0, "display-on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_1

    :cond_0
    :goto_0
    move p1, v4

    :goto_1
    const/16 v0, 0x9

    const/16 v9, 0xd

    const v10, 0x7c5dd888

    const v11, 0x1ee0b6f0

    const v12, 0x2dddaf

    const v13, -0x2d8f5b52

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    const/16 v7, 0x10

    goto/16 :goto_9

    :pswitch_1
    const/16 v7, 0xf

    goto/16 :goto_9

    .line 356
    :pswitch_2
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    if-eq p1, v13, :cond_4

    if-eq p1, v12, :cond_3

    if-eq p1, v11, :cond_2

    if-eq p1, v10, :cond_1

    goto :goto_2

    :cond_1
    const-string p1, "shutter-prio"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    move v4, v5

    goto :goto_2

    :cond_2
    const-string p1, "iso-prio"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    move v4, v8

    goto :goto_2

    :cond_3
    const-string p1, "auto"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    move v4, v7

    goto :goto_2

    :cond_4
    const-string p1, "semi-auto"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    move v4, v6

    :cond_5
    :goto_2
    packed-switch v4, :pswitch_data_1

    goto/16 :goto_9

    :pswitch_3
    move v7, v9

    goto/16 :goto_9

    :pswitch_4
    const/16 v2, 0xc

    goto :goto_3

    :pswitch_5
    const/16 v2, 0x8

    :goto_3
    :pswitch_6
    move v7, v2

    goto/16 :goto_9

    .line 337
    :pswitch_7
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    if-eq p1, v13, :cond_9

    if-eq p1, v12, :cond_8

    if-eq p1, v11, :cond_7

    if-eq p1, v10, :cond_6

    goto :goto_4

    :cond_6
    const-string p1, "shutter-prio"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    move v4, v5

    goto :goto_4

    :cond_7
    const-string p1, "iso-prio"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    move v4, v8

    goto :goto_4

    :cond_8
    const-string p1, "auto"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    move v4, v7

    goto :goto_4

    :cond_9
    const-string p1, "semi-auto"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    move v4, v6

    :cond_a
    :goto_4
    packed-switch v4, :pswitch_data_2

    goto/16 :goto_9

    :pswitch_8
    move v7, v0

    goto/16 :goto_9

    :pswitch_9
    move v7, v3

    goto/16 :goto_9

    :pswitch_a
    move v7, v8

    goto/16 :goto_9

    .line 317
    :pswitch_b
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    if-eq p1, v13, :cond_e

    if-eq p1, v12, :cond_d

    if-eq p1, v11, :cond_c

    if-eq p1, v10, :cond_b

    goto :goto_5

    :cond_b
    const-string p1, "shutter-prio"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    move v4, v5

    goto :goto_5

    :cond_c
    const-string p1, "iso-prio"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    move v4, v8

    goto :goto_5

    :cond_d
    const-string p1, "auto"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    move v4, v7

    goto :goto_5

    :cond_e
    const-string p1, "semi-auto"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    move v4, v6

    :cond_f
    :goto_5
    packed-switch v4, :pswitch_data_3

    goto/16 :goto_9

    :pswitch_c
    const/16 v6, 0xe

    goto :goto_6

    :pswitch_d
    const/16 v6, 0xb

    goto :goto_6

    :pswitch_e
    const/4 v6, 0x7

    :goto_6
    :pswitch_f
    move v7, v6

    goto/16 :goto_9

    .line 298
    :pswitch_10
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    if-eq p1, v13, :cond_13

    if-eq p1, v12, :cond_12

    if-eq p1, v11, :cond_11

    if-eq p1, v10, :cond_10

    goto :goto_7

    :cond_10
    const-string p1, "shutter-prio"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    move v4, v5

    goto :goto_7

    :cond_11
    const-string p1, "iso-prio"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    move v4, v8

    goto :goto_7

    :cond_12
    const-string p1, "auto"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    move v4, v7

    goto :goto_7

    :cond_13
    const-string p1, "semi-auto"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    move v4, v6

    :cond_14
    :goto_7
    packed-switch v4, :pswitch_data_4

    goto :goto_9

    .line 278
    :pswitch_11
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    if-eq p1, v13, :cond_18

    if-eq p1, v12, :cond_17

    if-eq p1, v11, :cond_16

    if-eq p1, v10, :cond_15

    goto :goto_8

    :cond_15
    const-string p1, "shutter-prio"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    move v4, v5

    goto :goto_8

    :cond_16
    const-string p1, "iso-prio"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    move v4, v8

    goto :goto_8

    :cond_17
    const-string p1, "auto"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    move v4, v7

    goto :goto_8

    :cond_18
    const-string p1, "semi-auto"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    move v4, v6

    :cond_19
    :goto_8
    packed-switch v4, :pswitch_data_5

    goto :goto_9

    :pswitch_12
    const/16 v1, 0xa

    :pswitch_13
    move v7, v1

    goto :goto_9

    :pswitch_14
    move v7, v5

    :goto_9
    return v7

    nop

    :sswitch_data_0
    .sparse-switch
        -0x36833136 -> :sswitch_6
        0xddf -> :sswitch_5
        0x1ad6f -> :sswitch_4
        0x2dddaf -> :sswitch_3
        0x696d3fc -> :sswitch_2
        0x407706f5 -> :sswitch_1
        0x5d7e0fda -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_b
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_3
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_3
    .end packed-switch
.end method
